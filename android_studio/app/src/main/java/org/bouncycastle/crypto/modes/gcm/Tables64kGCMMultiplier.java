package org.bouncycastle.crypto.modes.gcm;

import java.lang.reflect.Array;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class Tables64kGCMMultiplier implements GCMMultiplier {
    private byte[] H;
    private long[][][] T;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        if (this.T == null) {
            this.T = (long[][][]) Array.newInstance(long.class, 16, 256, 2);
        } else if (GCMUtil.areEqual(this.H, bArr) != 0) {
            return;
        }
        byte[] bArr2 = new byte[16];
        this.H = bArr2;
        GCMUtil.copy(bArr, bArr2);
        for (int i4 = 0; i4 < 16; i4++) {
            long[][][] jArr = this.T;
            long[][] jArr2 = jArr[i4];
            if (i4 == 0) {
                GCMUtil.asLongs(this.H, jArr2[1]);
                GCMUtil.multiplyP7(jArr2[1], jArr2[1]);
            } else {
                GCMUtil.multiplyP8(jArr[i4 - 1][1], jArr2[1]);
            }
            for (int i10 = 2; i10 < 256; i10 += 2) {
                GCMUtil.divideP(jArr2[i10 >> 1], jArr2[i10]);
                GCMUtil.xor(jArr2[i10], jArr2[1], jArr2[i10 + 1]);
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        long[] jArr = this.T[15][bArr[15] & 255];
        long j4 = jArr[0];
        long j10 = jArr[1];
        for (int i4 = 14; i4 >= 0; i4--) {
            long[] jArr2 = this.T[i4][bArr[i4] & 255];
            j4 ^= jArr2[0];
            j10 ^= jArr2[1];
        }
        Pack.longToBigEndian(j4, bArr, 0);
        Pack.longToBigEndian(j10, bArr, 8);
    }
}
