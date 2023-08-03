package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class CSHAKEDigest extends SHAKEDigest {
    private static final byte[] padding = new byte[100];
    private final byte[] diff;

    public CSHAKEDigest(int i4, byte[] bArr, byte[] bArr2) {
        super(i4);
        if ((bArr == null || bArr.length == 0) && (bArr2 == null || bArr2.length == 0)) {
            this.diff = null;
            return;
        }
        this.diff = Arrays.concatenate(XofUtils.leftEncode(this.rate / 8), encodeString(bArr), encodeString(bArr2));
        diffPadAndAbsorb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CSHAKEDigest(CSHAKEDigest cSHAKEDigest) {
        super(cSHAKEDigest);
        this.diff = Arrays.clone(cSHAKEDigest.diff);
    }

    private void diffPadAndAbsorb() {
        int i4 = this.rate / 8;
        byte[] bArr = this.diff;
        absorb(bArr, 0, bArr.length);
        int length = this.diff.length % i4;
        if (length == 0) {
            return;
        }
        while (true) {
            i4 -= length;
            byte[] bArr2 = padding;
            if (i4 <= bArr2.length) {
                absorb(bArr2, 0, i4);
                return;
            } else {
                absorb(bArr2, 0, bArr2.length);
                length = bArr2.length;
            }
        }
    }

    private byte[] encodeString(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? XofUtils.leftEncode(0L) : Arrays.concatenate(XofUtils.leftEncode(bArr.length * 8), bArr);
    }

    @Override // org.bouncycastle.crypto.digests.SHAKEDigest, org.bouncycastle.crypto.Xof
    public int doOutput(byte[] bArr, int i4, int i10) {
        if (this.diff != null) {
            if (!this.squeezing) {
                absorbBits(0, 2);
            }
            squeeze(bArr, i4, i10 * 8);
            return i10;
        }
        return super.doOutput(bArr, i4, i10);
    }

    @Override // org.bouncycastle.crypto.digests.SHAKEDigest, org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "CSHAKE" + this.fixedOutputLength;
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        if (this.diff != null) {
            diffPadAndAbsorb();
        }
    }
}
