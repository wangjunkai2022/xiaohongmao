package org.bouncycastle.pqc.crypto.xmss;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.OTSHashAddress;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
final class WOTSPlus {
    private final KeyedHashFunctions khf;
    private final WOTSPlusParameters params;
    private byte[] publicSeed;
    private byte[] secretKeySeed;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WOTSPlus(WOTSPlusParameters wOTSPlusParameters) {
        Objects.requireNonNull(wOTSPlusParameters, "params == null");
        this.params = wOTSPlusParameters;
        int treeDigestSize = wOTSPlusParameters.getTreeDigestSize();
        this.khf = new KeyedHashFunctions(wOTSPlusParameters.getTreeDigest(), treeDigestSize);
        this.secretKeySeed = new byte[treeDigestSize];
        this.publicSeed = new byte[treeDigestSize];
    }

    private byte[] chain(byte[] bArr, int i4, int i10, OTSHashAddress oTSHashAddress) {
        int treeDigestSize = this.params.getTreeDigestSize();
        Objects.requireNonNull(bArr, "startHash == null");
        if (bArr.length != treeDigestSize) {
            throw new IllegalArgumentException("startHash needs to be " + treeDigestSize + "bytes");
        }
        Objects.requireNonNull(oTSHashAddress, "otsHashAddress == null");
        Objects.requireNonNull(oTSHashAddress.toByteArray(), "otsHashAddress byte array == null");
        int i11 = i4 + i10;
        if (i11 <= this.params.getWinternitzParameter() - 1) {
            if (i10 == 0) {
                return bArr;
            }
            byte[] chain = chain(bArr, i4, i10 - 1, oTSHashAddress);
            OTSHashAddress oTSHashAddress2 = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(oTSHashAddress.getChainAddress()).withHashAddress(i11 - 1).withKeyAndMask(0).build();
            byte[] PRF = this.khf.PRF(this.publicSeed, oTSHashAddress2.toByteArray());
            byte[] PRF2 = this.khf.PRF(this.publicSeed, ((OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress2.getLayerAddress()).withTreeAddress(oTSHashAddress2.getTreeAddress()).withOTSAddress(oTSHashAddress2.getOTSAddress()).withChainAddress(oTSHashAddress2.getChainAddress()).withHashAddress(oTSHashAddress2.getHashAddress()).withKeyAndMask(1).build()).toByteArray());
            byte[] bArr2 = new byte[treeDigestSize];
            for (int i12 = 0; i12 < treeDigestSize; i12++) {
                bArr2[i12] = (byte) (chain[i12] ^ PRF2[i12]);
            }
            return this.khf.F(PRF, bArr2);
        }
        throw new IllegalArgumentException("max chain length must not be greater than w");
    }

    private List<Integer> convertToBaseW(byte[] bArr, int i4, int i10) {
        Objects.requireNonNull(bArr, "msg == null");
        if (i4 == 4 || i4 == 16) {
            int log2 = XMSSUtil.log2(i4);
            if (i10 <= (bArr.length * 8) / log2) {
                ArrayList arrayList = new ArrayList();
                for (int i11 : bArr) {
                    for (int i12 = 8 - log2; i12 >= 0; i12 -= log2) {
                        arrayList.add(Integer.valueOf((i11 >> i12) & (i4 - 1)));
                        if (arrayList.size() == i10) {
                            return arrayList;
                        }
                    }
                }
                return arrayList;
            }
            throw new IllegalArgumentException("outLength too big");
        }
        throw new IllegalArgumentException("w needs to be 4 or 16");
    }

    private byte[] expandSecretKeySeed(int i4) {
        if (i4 < 0 || i4 >= this.params.getLen()) {
            throw new IllegalArgumentException("index out of bounds");
        }
        return this.khf.PRF(this.secretKeySeed, XMSSUtil.toBytesBigEndian(i4, 32));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public KeyedHashFunctions getKhf() {
        return this.khf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlusParameters getParams() {
        return this.params;
    }

    protected WOTSPlusPrivateKeyParameters getPrivateKey() {
        int len = this.params.getLen();
        byte[][] bArr = new byte[len];
        for (int i4 = 0; i4 < len; i4++) {
            bArr[i4] = expandSecretKeySeed(i4);
        }
        return new WOTSPlusPrivateKeyParameters(this.params, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WOTSPlusPublicKeyParameters getPublicKey(OTSHashAddress oTSHashAddress) {
        Objects.requireNonNull(oTSHashAddress, "otsHashAddress == null");
        byte[][] bArr = new byte[this.params.getLen()];
        for (int i4 = 0; i4 < this.params.getLen(); i4++) {
            oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(i4).withHashAddress(oTSHashAddress.getHashAddress()).withKeyAndMask(oTSHashAddress.getKeyAndMask()).build();
            bArr[i4] = chain(expandSecretKeySeed(i4), 0, this.params.getWinternitzParameter() - 1, oTSHashAddress);
        }
        return new WOTSPlusPublicKeyParameters(this.params, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WOTSPlusPublicKeyParameters getPublicKeyFromSignature(byte[] bArr, WOTSPlusSignature wOTSPlusSignature, OTSHashAddress oTSHashAddress) {
        Objects.requireNonNull(bArr, "messageDigest == null");
        if (bArr.length == this.params.getTreeDigestSize()) {
            Objects.requireNonNull(wOTSPlusSignature, "signature == null");
            Objects.requireNonNull(oTSHashAddress, "otsHashAddress == null");
            List<Integer> convertToBaseW = convertToBaseW(bArr, this.params.getWinternitzParameter(), this.params.getLen1());
            int i4 = 0;
            for (int i10 = 0; i10 < this.params.getLen1(); i10++) {
                i4 += (this.params.getWinternitzParameter() - 1) - convertToBaseW.get(i10).intValue();
            }
            convertToBaseW.addAll(convertToBaseW(XMSSUtil.toBytesBigEndian(i4 << (8 - ((this.params.getLen2() * XMSSUtil.log2(this.params.getWinternitzParameter())) % 8)), (int) Math.ceil((this.params.getLen2() * XMSSUtil.log2(this.params.getWinternitzParameter())) / 8.0d)), this.params.getWinternitzParameter(), this.params.getLen2()));
            byte[][] bArr2 = new byte[this.params.getLen()];
            for (int i11 = 0; i11 < this.params.getLen(); i11++) {
                oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(i11).withHashAddress(oTSHashAddress.getHashAddress()).withKeyAndMask(oTSHashAddress.getKeyAndMask()).build();
                bArr2[i11] = chain(wOTSPlusSignature.toByteArray()[i11], convertToBaseW.get(i11).intValue(), (this.params.getWinternitzParameter() - 1) - convertToBaseW.get(i11).intValue(), oTSHashAddress);
            }
            return new WOTSPlusPublicKeyParameters(this.params, bArr2);
        }
        throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getPublicSeed() {
        return Arrays.clone(this.publicSeed);
    }

    protected byte[] getSecretKeySeed() {
        return Arrays.clone(this.secretKeySeed);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getWOTSPlusSecretKey(byte[] bArr, OTSHashAddress oTSHashAddress) {
        return this.khf.PRF(bArr, ((OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).build()).toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void importKeys(byte[] bArr, byte[] bArr2) {
        Objects.requireNonNull(bArr, "secretKeySeed == null");
        if (bArr.length != this.params.getTreeDigestSize()) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal to size of digest");
        }
        Objects.requireNonNull(bArr2, "publicSeed == null");
        if (bArr2.length != this.params.getTreeDigestSize()) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal to size of digest");
        }
        this.secretKeySeed = bArr;
        this.publicSeed = bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WOTSPlusSignature sign(byte[] bArr, OTSHashAddress oTSHashAddress) {
        Objects.requireNonNull(bArr, "messageDigest == null");
        if (bArr.length == this.params.getTreeDigestSize()) {
            Objects.requireNonNull(oTSHashAddress, "otsHashAddress == null");
            List<Integer> convertToBaseW = convertToBaseW(bArr, this.params.getWinternitzParameter(), this.params.getLen1());
            int i4 = 0;
            for (int i10 = 0; i10 < this.params.getLen1(); i10++) {
                i4 += (this.params.getWinternitzParameter() - 1) - convertToBaseW.get(i10).intValue();
            }
            convertToBaseW.addAll(convertToBaseW(XMSSUtil.toBytesBigEndian(i4 << (8 - ((this.params.getLen2() * XMSSUtil.log2(this.params.getWinternitzParameter())) % 8)), (int) Math.ceil((this.params.getLen2() * XMSSUtil.log2(this.params.getWinternitzParameter())) / 8.0d)), this.params.getWinternitzParameter(), this.params.getLen2()));
            byte[][] bArr2 = new byte[this.params.getLen()];
            for (int i11 = 0; i11 < this.params.getLen(); i11++) {
                oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(i11).withHashAddress(oTSHashAddress.getHashAddress()).withKeyAndMask(oTSHashAddress.getKeyAndMask()).build();
                bArr2[i11] = chain(expandSecretKeySeed(i11), 0, convertToBaseW.get(i11).intValue(), oTSHashAddress);
            }
            return new WOTSPlusSignature(this.params, bArr2);
        }
        throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
    }
}
