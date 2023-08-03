package org.bouncycastle.pqc.crypto.gmss;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.pqc.crypto.gmss.util.GMSSUtil;
import org.bouncycastle.pqc.crypto.gmss.util.WinternitzOTSVerify;
import org.bouncycastle.pqc.crypto.gmss.util.WinternitzOTSignature;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class GMSSSigner implements MessageSigner {
    private byte[][][] currentAuthPaths;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSRandom gmssRandom;
    private GMSSUtil gmssUtil = new GMSSUtil();
    private int[] index;
    GMSSKeyParameters key;
    private int mdLength;
    private Digest messDigestOTS;
    private Digest messDigestTrees;
    private int numLayer;
    private WinternitzOTSignature ots;
    private byte[] pubKeyBytes;
    private SecureRandom random;
    private byte[][] subtreeRootSig;

    public GMSSSigner(GMSSDigestProvider gMSSDigestProvider) {
        this.digestProvider = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.messDigestTrees = digest;
        this.messDigestOTS = digest;
        this.mdLength = digest.getDigestSize();
        this.gmssRandom = new GMSSRandom(this.messDigestTrees);
    }

    private void initSign() {
        int i4;
        this.messDigestTrees.reset();
        GMSSPrivateKeyParameters gMSSPrivateKeyParameters = (GMSSPrivateKeyParameters) this.key;
        if (gMSSPrivateKeyParameters.isUsed()) {
            throw new IllegalStateException("Private key already used");
        }
        if (gMSSPrivateKeyParameters.getIndex(0) >= gMSSPrivateKeyParameters.getNumLeafs(0)) {
            throw new IllegalStateException("No more signatures can be generated");
        }
        GMSSParameters parameters = gMSSPrivateKeyParameters.getParameters();
        this.gmssPS = parameters;
        this.numLayer = parameters.getNumOfLayers();
        byte[] bArr = gMSSPrivateKeyParameters.getCurrentSeeds()[this.numLayer - 1];
        int i10 = this.mdLength;
        byte[] bArr2 = new byte[i10];
        byte[] bArr3 = new byte[i10];
        System.arraycopy(bArr, 0, bArr3, 0, i10);
        this.ots = new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr3), this.digestProvider.get(), this.gmssPS.getWinternitzParameter()[this.numLayer - 1]);
        byte[][][] currentAuthPaths = gMSSPrivateKeyParameters.getCurrentAuthPaths();
        this.currentAuthPaths = new byte[this.numLayer][];
        int i11 = 0;
        while (true) {
            i4 = this.numLayer;
            if (i11 >= i4) {
                break;
            }
            this.currentAuthPaths[i11] = (byte[][]) Array.newInstance(byte.class, currentAuthPaths[i11].length, this.mdLength);
            for (int i12 = 0; i12 < currentAuthPaths[i11].length; i12++) {
                System.arraycopy(currentAuthPaths[i11][i12], 0, this.currentAuthPaths[i11][i12], 0, this.mdLength);
            }
            i11++;
        }
        this.index = new int[i4];
        System.arraycopy(gMSSPrivateKeyParameters.getIndex(), 0, this.index, 0, this.numLayer);
        this.subtreeRootSig = new byte[this.numLayer - 1];
        for (int i13 = 0; i13 < this.numLayer - 1; i13++) {
            byte[] subtreeRootSig = gMSSPrivateKeyParameters.getSubtreeRootSig(i13);
            byte[][] bArr4 = this.subtreeRootSig;
            bArr4[i13] = new byte[subtreeRootSig.length];
            System.arraycopy(subtreeRootSig, 0, bArr4[i13], 0, subtreeRootSig.length);
        }
        gMSSPrivateKeyParameters.markUsed();
    }

    private void initVerify() {
        this.messDigestTrees.reset();
        GMSSPublicKeyParameters gMSSPublicKeyParameters = (GMSSPublicKeyParameters) this.key;
        this.pubKeyBytes = gMSSPublicKeyParameters.getPublicKey();
        GMSSParameters parameters = gMSSPublicKeyParameters.getParameters();
        this.gmssPS = parameters;
        this.numLayer = parameters.getNumOfLayers();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        byte[] bArr2 = new byte[this.mdLength];
        byte[] signature = this.ots.getSignature(bArr);
        byte[] concatenateArray = this.gmssUtil.concatenateArray(this.currentAuthPaths[this.numLayer - 1]);
        byte[] intToBytesLittleEndian = this.gmssUtil.intToBytesLittleEndian(this.index[this.numLayer - 1]);
        int length = intToBytesLittleEndian.length + signature.length + concatenateArray.length;
        byte[] bArr3 = new byte[length];
        System.arraycopy(intToBytesLittleEndian, 0, bArr3, 0, intToBytesLittleEndian.length);
        System.arraycopy(signature, 0, bArr3, intToBytesLittleEndian.length, signature.length);
        System.arraycopy(concatenateArray, 0, bArr3, intToBytesLittleEndian.length + signature.length, concatenateArray.length);
        byte[] bArr4 = new byte[0];
        for (int i4 = (this.numLayer - 1) - 1; i4 >= 0; i4--) {
            byte[] concatenateArray2 = this.gmssUtil.concatenateArray(this.currentAuthPaths[i4]);
            byte[] intToBytesLittleEndian2 = this.gmssUtil.intToBytesLittleEndian(this.index[i4]);
            int length2 = bArr4.length;
            byte[] bArr5 = new byte[length2];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
            bArr4 = new byte[intToBytesLittleEndian2.length + length2 + this.subtreeRootSig[i4].length + concatenateArray2.length];
            System.arraycopy(bArr5, 0, bArr4, 0, length2);
            System.arraycopy(intToBytesLittleEndian2, 0, bArr4, length2, intToBytesLittleEndian2.length);
            byte[][] bArr6 = this.subtreeRootSig;
            System.arraycopy(bArr6[i4], 0, bArr4, intToBytesLittleEndian2.length + length2, bArr6[i4].length);
            System.arraycopy(concatenateArray2, 0, bArr4, length2 + intToBytesLittleEndian2.length + this.subtreeRootSig[i4].length, concatenateArray2.length);
        }
        byte[] bArr7 = new byte[bArr4.length + length];
        System.arraycopy(bArr3, 0, bArr7, 0, length);
        System.arraycopy(bArr4, 0, bArr7, length, bArr4.length);
        return bArr7;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!z9) {
            this.key = (GMSSPublicKeyParameters) cipherParameters;
            initVerify();
            return;
        }
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.random = parametersWithRandom.getRandom();
            this.key = (GMSSPrivateKeyParameters) parametersWithRandom.getParameters();
        } else {
            this.random = CryptoServicesRegistrar.getSecureRandom();
            this.key = (GMSSPrivateKeyParameters) cipherParameters;
        }
        initSign();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        this.messDigestOTS.reset();
        int i4 = 0;
        for (int i10 = this.numLayer - 1; i10 >= 0; i10--) {
            WinternitzOTSVerify winternitzOTSVerify = new WinternitzOTSVerify(this.digestProvider.get(), this.gmssPS.getWinternitzParameter()[i10]);
            int signatureLength = winternitzOTSVerify.getSignatureLength();
            int bytesToIntLittleEndian = this.gmssUtil.bytesToIntLittleEndian(bArr2, i4);
            int i11 = i4 + 4;
            byte[] bArr3 = new byte[signatureLength];
            System.arraycopy(bArr2, i11, bArr3, 0, signatureLength);
            i4 = i11 + signatureLength;
            bArr = winternitzOTSVerify.Verify(bArr, bArr3);
            if (bArr == null) {
                System.err.println("OTS Public Key is null in GMSSSignature.verify");
                return false;
            }
            byte[][] bArr4 = (byte[][]) Array.newInstance(byte.class, this.gmssPS.getHeightOfTrees()[i10], this.mdLength);
            for (byte[] bArr5 : bArr4) {
                System.arraycopy(bArr2, i4, bArr5, 0, this.mdLength);
                i4 += this.mdLength;
            }
            byte[] bArr6 = new byte[this.mdLength];
            int length = (1 << bArr4.length) + bytesToIntLittleEndian;
            for (int i12 = 0; i12 < bArr4.length; i12++) {
                int i13 = this.mdLength;
                int i14 = i13 << 1;
                byte[] bArr7 = new byte[i14];
                if (length % 2 == 0) {
                    System.arraycopy(bArr, 0, bArr7, 0, i13);
                    byte[] bArr8 = bArr4[i12];
                    int i15 = this.mdLength;
                    System.arraycopy(bArr8, 0, bArr7, i15, i15);
                    length /= 2;
                } else {
                    System.arraycopy(bArr4[i12], 0, bArr7, 0, i13);
                    System.arraycopy(bArr, 0, bArr7, this.mdLength, bArr.length);
                    length = (length - 1) / 2;
                }
                this.messDigestTrees.update(bArr7, 0, i14);
                bArr = new byte[this.messDigestTrees.getDigestSize()];
                this.messDigestTrees.doFinal(bArr, 0);
            }
        }
        return Arrays.areEqual(this.pubKeyBytes, bArr);
    }
}
