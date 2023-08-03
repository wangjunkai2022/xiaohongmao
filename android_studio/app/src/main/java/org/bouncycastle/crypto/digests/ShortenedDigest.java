package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.ExtendedDigest;

/* loaded from: classes4.dex */
public class ShortenedDigest implements ExtendedDigest {
    private ExtendedDigest baseDigest;
    private int length;

    public ShortenedDigest(ExtendedDigest extendedDigest, int i4) {
        if (extendedDigest == null) {
            throw new IllegalArgumentException("baseDigest must not be null");
        }
        if (i4 > extendedDigest.getDigestSize()) {
            throw new IllegalArgumentException("baseDigest output not large enough to support length");
        }
        this.baseDigest = extendedDigest;
        this.length = i4;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        byte[] bArr2 = new byte[this.baseDigest.getDigestSize()];
        this.baseDigest.doFinal(bArr2, 0);
        System.arraycopy(bArr2, 0, bArr, i4, this.length);
        return this.length;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.baseDigest.getAlgorithmName() + "(" + (this.length * 8) + ")";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.baseDigest.getByteLength();
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.length;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.baseDigest.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        this.baseDigest.update(b10);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) {
        this.baseDigest.update(bArr, i4, i10);
    }
}
