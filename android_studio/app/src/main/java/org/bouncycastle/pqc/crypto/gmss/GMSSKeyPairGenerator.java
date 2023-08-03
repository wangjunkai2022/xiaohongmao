package org.bouncycastle.pqc.crypto.gmss;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.pqc.crypto.gmss.util.WinternitzOTSVerify;
import org.bouncycastle.pqc.crypto.gmss.util.WinternitzOTSignature;

/* loaded from: classes5.dex */
public class GMSSKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    public static final String OID = "1.3.6.1.4.1.8301.3.1.3.3";
    private int[] K;
    private byte[][] currentRootSigs;
    private byte[][] currentSeeds;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSKeyGenerationParameters gmssParams;
    private GMSSRandom gmssRandom;
    private int[] heightOfTrees;
    private boolean initialized = false;
    private int mdLength;
    private Digest messDigestTree;
    private byte[][] nextNextSeeds;
    private int numLayer;
    private int[] otsIndex;

    public GMSSKeyPairGenerator(GMSSDigestProvider gMSSDigestProvider) {
        this.digestProvider = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.messDigestTree = digest;
        this.mdLength = digest.getDigestSize();
        this.gmssRandom = new GMSSRandom(this.messDigestTree);
    }

    private AsymmetricCipherKeyPair genKeyPair() {
        int i4;
        int i10;
        if (!this.initialized) {
            initializeDefault();
        }
        int i11 = this.numLayer;
        byte[][][] bArr = new byte[i11][];
        byte[][][] bArr2 = new byte[i11 - 1][];
        Treehash[][] treehashArr = new Treehash[i11];
        Treehash[][] treehashArr2 = new Treehash[i11 - 1];
        Vector[] vectorArr = new Vector[i11];
        Vector[] vectorArr2 = new Vector[i11 - 1];
        Vector[][] vectorArr3 = new Vector[i11];
        int i12 = 1;
        Vector[][] vectorArr4 = new Vector[i11 - 1];
        int i13 = 0;
        while (true) {
            i4 = this.numLayer;
            if (i13 >= i4) {
                break;
            }
            Vector[][] vectorArr5 = vectorArr4;
            bArr[i13] = (byte[][]) Array.newInstance(byte.class, this.heightOfTrees[i13], this.mdLength);
            int[] iArr = this.heightOfTrees;
            treehashArr[i13] = new Treehash[iArr[i13] - this.K[i13]];
            if (i13 > 0) {
                int i14 = i13 - 1;
                bArr2[i14] = (byte[][]) Array.newInstance(byte.class, iArr[i13], this.mdLength);
                treehashArr2[i14] = new Treehash[this.heightOfTrees[i13] - this.K[i13]];
            }
            vectorArr[i13] = new Vector();
            if (i13 > 0) {
                vectorArr2[i13 - 1] = new Vector();
            }
            i13++;
            vectorArr4 = vectorArr5;
        }
        Vector[][] vectorArr6 = vectorArr4;
        byte[][] bArr3 = (byte[][]) Array.newInstance(byte.class, i4, this.mdLength);
        byte[][] bArr4 = (byte[][]) Array.newInstance(byte.class, this.numLayer - 1, this.mdLength);
        byte[][] bArr5 = (byte[][]) Array.newInstance(byte.class, this.numLayer, this.mdLength);
        int i15 = 0;
        while (true) {
            i10 = this.numLayer;
            if (i15 >= i10) {
                break;
            }
            System.arraycopy(this.currentSeeds[i15], 0, bArr5[i15], 0, this.mdLength);
            i15++;
            i12 = 1;
        }
        int[] iArr2 = new int[2];
        iArr2[i12] = this.mdLength;
        iArr2[0] = i10 - i12;
        this.currentRootSigs = (byte[][]) Array.newInstance(byte.class, iArr2);
        int i16 = this.numLayer - i12;
        while (i16 >= 0) {
            GMSSRootCalc generateCurrentAuthpathAndRoot = i16 == this.numLayer - i12 ? generateCurrentAuthpathAndRoot(null, vectorArr[i16], bArr5[i16], i16) : generateCurrentAuthpathAndRoot(bArr3[i16 + 1], vectorArr[i16], bArr5[i16], i16);
            for (int i17 = 0; i17 < this.heightOfTrees[i16]; i17++) {
                System.arraycopy(generateCurrentAuthpathAndRoot.getAuthPath()[i17], 0, bArr[i16][i17], 0, this.mdLength);
            }
            vectorArr3[i16] = generateCurrentAuthpathAndRoot.getRetain();
            treehashArr[i16] = generateCurrentAuthpathAndRoot.getTreehash();
            System.arraycopy(generateCurrentAuthpathAndRoot.getRoot(), 0, bArr3[i16], 0, this.mdLength);
            i16--;
            i12 = 1;
        }
        int i18 = this.numLayer - 2;
        while (i18 >= 0) {
            int i19 = i18 + 1;
            GMSSRootCalc generateNextAuthpathAndRoot = generateNextAuthpathAndRoot(vectorArr2[i18], bArr5[i19], i19);
            int i20 = 0;
            while (i20 < this.heightOfTrees[i19]) {
                System.arraycopy(generateNextAuthpathAndRoot.getAuthPath()[i20], 0, bArr2[i18][i20], 0, this.mdLength);
                i20++;
                vectorArr3 = vectorArr3;
            }
            vectorArr6[i18] = generateNextAuthpathAndRoot.getRetain();
            treehashArr2[i18] = generateNextAuthpathAndRoot.getTreehash();
            System.arraycopy(generateNextAuthpathAndRoot.getRoot(), 0, bArr4[i18], 0, this.mdLength);
            System.arraycopy(bArr5[i19], 0, this.nextNextSeeds[i18], 0, this.mdLength);
            i18--;
            vectorArr3 = vectorArr3;
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new GMSSPublicKeyParameters(bArr3[0], this.gmssPS), (AsymmetricKeyParameter) new GMSSPrivateKeyParameters(this.currentSeeds, this.nextNextSeeds, bArr, bArr2, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr6, bArr4, this.currentRootSigs, this.gmssPS, this.digestProvider));
    }

    private GMSSRootCalc generateCurrentAuthpathAndRoot(byte[] bArr, Vector vector, byte[] bArr2, int i4) {
        byte[] Verify;
        int i10 = this.mdLength;
        byte[] bArr3 = new byte[i10];
        byte[] bArr4 = new byte[i10];
        byte[] nextSeed = this.gmssRandom.nextSeed(bArr2);
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[i4], this.K[i4], this.digestProvider);
        gMSSRootCalc.initialize(vector);
        if (i4 == this.numLayer - 1) {
            Verify = new WinternitzOTSignature(nextSeed, this.digestProvider.get(), this.otsIndex[i4]).getPublicKey();
        } else {
            this.currentRootSigs[i4] = new WinternitzOTSignature(nextSeed, this.digestProvider.get(), this.otsIndex[i4]).getSignature(bArr);
            Verify = new WinternitzOTSVerify(this.digestProvider.get(), this.otsIndex[i4]).Verify(bArr, this.currentRootSigs[i4]);
        }
        gMSSRootCalc.update(Verify);
        int i11 = 3;
        int i12 = 0;
        int i13 = 1;
        while (true) {
            int[] iArr = this.heightOfTrees;
            if (i13 >= (1 << iArr[i4])) {
                break;
            }
            if (i13 == i11 && i12 < iArr[i4] - this.K[i4]) {
                gMSSRootCalc.initializeTreehashSeed(bArr2, i12);
                i11 *= 2;
                i12++;
            }
            gMSSRootCalc.update(new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr2), this.digestProvider.get(), this.otsIndex[i4]).getPublicKey());
            i13++;
        }
        if (gMSSRootCalc.wasFinished()) {
            return gMSSRootCalc;
        }
        System.err.println("Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    private GMSSRootCalc generateNextAuthpathAndRoot(Vector vector, byte[] bArr, int i4) {
        byte[] bArr2 = new byte[this.numLayer];
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[i4], this.K[i4], this.digestProvider);
        gMSSRootCalc.initialize(vector);
        int i10 = 0;
        int i11 = 0;
        int i12 = 3;
        while (true) {
            int[] iArr = this.heightOfTrees;
            if (i10 >= (1 << iArr[i4])) {
                break;
            }
            if (i10 == i12 && i11 < iArr[i4] - this.K[i4]) {
                gMSSRootCalc.initializeTreehashSeed(bArr, i11);
                i12 *= 2;
                i11++;
            }
            gMSSRootCalc.update(new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr), this.digestProvider.get(), this.otsIndex[i4]).getPublicKey());
            i10++;
        }
        if (gMSSRootCalc.wasFinished()) {
            return gMSSRootCalc;
        }
        System.err.println("N�chster Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    private void initializeDefault() {
        initialize(new GMSSKeyGenerationParameters(null, new GMSSParameters(4, new int[]{10, 10, 10, 10}, new int[]{3, 3, 3, 3}, new int[]{2, 2, 2, 2})));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        return genKeyPair();
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        initialize(keyGenerationParameters);
    }

    public void initialize(int i4, SecureRandom secureRandom) {
        GMSSKeyGenerationParameters gMSSKeyGenerationParameters;
        if (i4 <= 10) {
            gMSSKeyGenerationParameters = new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(1, new int[]{10}, new int[]{3}, new int[]{2}));
        } else {
            gMSSKeyGenerationParameters = i4 <= 20 ? new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(2, new int[]{10, 10}, new int[]{5, 4}, new int[]{2, 2})) : new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(4, new int[]{10, 10, 10, 10}, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2}));
        }
        initialize(gMSSKeyGenerationParameters);
    }

    public void initialize(KeyGenerationParameters keyGenerationParameters) {
        GMSSKeyGenerationParameters gMSSKeyGenerationParameters = (GMSSKeyGenerationParameters) keyGenerationParameters;
        this.gmssParams = gMSSKeyGenerationParameters;
        GMSSParameters gMSSParameters = new GMSSParameters(gMSSKeyGenerationParameters.getParameters().getNumOfLayers(), this.gmssParams.getParameters().getHeightOfTrees(), this.gmssParams.getParameters().getWinternitzParameter(), this.gmssParams.getParameters().getK());
        this.gmssPS = gMSSParameters;
        this.numLayer = gMSSParameters.getNumOfLayers();
        this.heightOfTrees = this.gmssPS.getHeightOfTrees();
        this.otsIndex = this.gmssPS.getWinternitzParameter();
        this.K = this.gmssPS.getK();
        this.currentSeeds = (byte[][]) Array.newInstance(byte.class, this.numLayer, this.mdLength);
        this.nextNextSeeds = (byte[][]) Array.newInstance(byte.class, this.numLayer - 1, this.mdLength);
        SecureRandom random = keyGenerationParameters.getRandom();
        for (int i4 = 0; i4 < this.numLayer; i4++) {
            random.nextBytes(this.currentSeeds[i4]);
            this.gmssRandom.nextSeed(this.currentSeeds[i4]);
        }
        this.initialized = true;
    }
}
