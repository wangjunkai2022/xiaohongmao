package org.bouncycastle.crypto.modes.gcm;

/* loaded from: classes4.dex */
public class BasicGCMExponentiator implements GCMExponentiator {

    /* renamed from: x  reason: collision with root package name */
    private long[] f91296x;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void exponentiateX(long j4, byte[] bArr) {
        long[] oneAsLongs = GCMUtil.oneAsLongs();
        if (j4 <= 0) {
            GCMUtil.asBytes(oneAsLongs, bArr);
        }
        long[] jArr = new long[2];
        GCMUtil.copy(this.f91296x, jArr);
        do {
            if ((1 & j4) != 0) {
                GCMUtil.multiply(oneAsLongs, jArr);
            }
            GCMUtil.square(jArr, jArr);
            j4 >>>= 1;
        } while (j4 > 0);
        GCMUtil.asBytes(oneAsLongs, bArr);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void init(byte[] bArr) {
        this.f91296x = GCMUtil.asLongs(bArr);
    }
}
