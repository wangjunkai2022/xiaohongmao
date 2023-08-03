package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes5.dex */
class SeedDerive {
    private final byte[] I;
    private final Digest digest;

    /* renamed from: j  reason: collision with root package name */
    private int f91519j;
    private final byte[] masterSeed;

    /* renamed from: q  reason: collision with root package name */
    private int f91520q;

    public SeedDerive(byte[] bArr, byte[] bArr2, Digest digest) {
        this.I = bArr;
        this.masterSeed = bArr2;
        this.digest = digest;
    }

    public void deriveSeed(byte[] bArr, boolean z9) {
        deriveSeed(bArr, z9, 0);
    }

    public void deriveSeed(byte[] bArr, boolean z9, int i4) {
        deriveSeed(bArr, i4);
        if (z9) {
            this.f91519j++;
        }
    }

    public byte[] deriveSeed(byte[] bArr, int i4) {
        if (bArr.length >= this.digest.getDigestSize()) {
            Digest digest = this.digest;
            byte[] bArr2 = this.I;
            digest.update(bArr2, 0, bArr2.length);
            this.digest.update((byte) (this.f91520q >>> 24));
            this.digest.update((byte) (this.f91520q >>> 16));
            this.digest.update((byte) (this.f91520q >>> 8));
            this.digest.update((byte) this.f91520q);
            this.digest.update((byte) (this.f91519j >>> 8));
            this.digest.update((byte) this.f91519j);
            this.digest.update((byte) -1);
            Digest digest2 = this.digest;
            byte[] bArr3 = this.masterSeed;
            digest2.update(bArr3, 0, bArr3.length);
            this.digest.doFinal(bArr, i4);
            return bArr;
        }
        throw new IllegalArgumentException("target length is less than digest size.");
    }

    public byte[] getI() {
        return this.I;
    }

    public int getJ() {
        return this.f91519j;
    }

    public byte[] getMasterSeed() {
        return this.masterSeed;
    }

    public int getQ() {
        return this.f91520q;
    }

    public void setJ(int i4) {
        this.f91519j = i4;
    }

    public void setQ(int i4) {
        this.f91520q = i4;
    }
}
