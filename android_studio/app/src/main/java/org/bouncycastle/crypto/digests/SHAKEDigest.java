package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.Xof;

/* loaded from: classes4.dex */
public class SHAKEDigest extends KeccakDigest implements Xof {
    public SHAKEDigest() {
        this(128);
    }

    public SHAKEDigest(int i4) {
        super(checkBitLength(i4));
    }

    public SHAKEDigest(SHAKEDigest sHAKEDigest) {
        super(sHAKEDigest);
    }

    private static int checkBitLength(int i4) {
        if (i4 == 128 || i4 == 256) {
            return i4;
        }
        throw new IllegalArgumentException("'bitLength' " + i4 + " not supported for SHAKE");
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        return doFinal(bArr, i4, getDigestSize());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.crypto.digests.KeccakDigest
    public int doFinal(byte[] bArr, int i4, byte b10, int i10) {
        return doFinal(bArr, i4, getDigestSize(), b10, i10);
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int i4, int i10) {
        int doOutput = doOutput(bArr, i4, i10);
        reset();
        return doOutput;
    }

    protected int doFinal(byte[] bArr, int i4, int i10, byte b10, int i11) {
        if (i11 < 0 || i11 > 7) {
            throw new IllegalArgumentException("'partialBits' must be in the range [0,7]");
        }
        int i12 = (b10 & ((1 << i11) - 1)) | (15 << i11);
        int i13 = i11 + 4;
        if (i13 >= 8) {
            absorb((byte) i12);
            i13 -= 8;
            i12 >>>= 8;
        }
        if (i13 > 0) {
            absorbBits(i12, i13);
        }
        squeeze(bArr, i4, i10 * 8);
        reset();
        return i10;
    }

    public int doOutput(byte[] bArr, int i4, int i10) {
        if (!this.squeezing) {
            absorbBits(15, 4);
        }
        squeeze(bArr, i4, i10 * 8);
        return i10;
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHAKE" + this.fixedOutputLength;
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.fixedOutputLength / 4;
    }
}
