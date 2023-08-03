package org.bouncycastle.crypto.digests;

/* loaded from: classes4.dex */
public class SHA3Digest extends KeccakDigest {
    public SHA3Digest() {
        this(256);
    }

    public SHA3Digest(int i4) {
        super(checkBitLength(i4));
    }

    public SHA3Digest(SHA3Digest sHA3Digest) {
        super(sHA3Digest);
    }

    private static int checkBitLength(int i4) {
        if (i4 == 224 || i4 == 256 || i4 == 384 || i4 == 512) {
            return i4;
        }
        throw new IllegalArgumentException("'bitLength' " + i4 + " not supported for SHA-3");
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        absorbBits(2, 2);
        return super.doFinal(bArr, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.crypto.digests.KeccakDigest
    public int doFinal(byte[] bArr, int i4, byte b10, int i10) {
        if (i10 < 0 || i10 > 7) {
            throw new IllegalArgumentException("'partialBits' must be in the range [0,7]");
        }
        int i11 = (b10 & ((1 << i10) - 1)) | (2 << i10);
        int i12 = i10 + 2;
        if (i12 >= 8) {
            absorb((byte) i11);
            i12 -= 8;
            i11 >>>= 8;
        }
        return super.doFinal(bArr, i4, (byte) i11, i12);
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA3-" + this.fixedOutputLength;
    }
}
