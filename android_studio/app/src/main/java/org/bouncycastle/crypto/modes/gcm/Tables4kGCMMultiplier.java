package org.bouncycastle.crypto.modes.gcm;

import java.lang.reflect.Array;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class Tables4kGCMMultiplier implements GCMMultiplier {
    private byte[] H;
    private long[][] T;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        if (this.T == null) {
            this.T = (long[][]) Array.newInstance(long.class, 256, 2);
        } else if (GCMUtil.areEqual(this.H, bArr) != 0) {
            return;
        }
        byte[] bArr2 = new byte[16];
        this.H = bArr2;
        GCMUtil.copy(bArr, bArr2);
        GCMUtil.asLongs(this.H, this.T[1]);
        long[][] jArr = this.T;
        GCMUtil.multiplyP7(jArr[1], jArr[1]);
        for (int i4 = 2; i4 < 256; i4 += 2) {
            long[][] jArr2 = this.T;
            GCMUtil.divideP(jArr2[i4 >> 1], jArr2[i4]);
            long[][] jArr3 = this.T;
            GCMUtil.xor(jArr3[i4], jArr3[1], jArr3[i4 + 1]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        long[] jArr = this.T[bArr[15] & 255];
        long j4 = jArr[0];
        long j10 = jArr[1];
        for (int i4 = 14; i4 >= 0; i4--) {
            long[] jArr2 = this.T[bArr[i4] & 255];
            long j11 = j10 << 56;
            j10 = ((j10 >>> 8) | (j4 << 56)) ^ jArr2[1];
            j4 = (((((j4 >>> 8) ^ jArr2[0]) ^ j11) ^ (j11 >>> 1)) ^ (j11 >>> 2)) ^ (j11 >>> 7);
        }
        Pack.longToBigEndian(j4, bArr, 0);
        Pack.longToBigEndian(j10, bArr, 8);
    }
}
