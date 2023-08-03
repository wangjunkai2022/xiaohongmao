package org.bouncycastle.crypto.modes.gcm;

import com.google.common.base.c;
import java.lang.reflect.Array;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class Tables8kGCMMultiplier implements GCMMultiplier {
    private byte[] H;
    private long[][][] T;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        if (this.T == null) {
            this.T = (long[][][]) Array.newInstance(long.class, 32, 16, 2);
        } else if (GCMUtil.areEqual(this.H, bArr) != 0) {
            return;
        }
        byte[] bArr2 = new byte[16];
        this.H = bArr2;
        GCMUtil.copy(bArr, bArr2);
        for (int i4 = 0; i4 < 32; i4++) {
            long[][][] jArr = this.T;
            long[][] jArr2 = jArr[i4];
            if (i4 == 0) {
                GCMUtil.asLongs(this.H, jArr2[1]);
                GCMUtil.multiplyP3(jArr2[1], jArr2[1]);
            } else {
                GCMUtil.multiplyP4(jArr[i4 - 1][1], jArr2[1]);
            }
            for (int i10 = 2; i10 < 16; i10 += 2) {
                GCMUtil.divideP(jArr2[i10 >> 1], jArr2[i10]);
                GCMUtil.xor(jArr2[i10], jArr2[1], jArr2[i10 + 1]);
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        long j4 = 0;
        long j10 = 0;
        for (int i4 = 15; i4 >= 0; i4--) {
            long[][][] jArr = this.T;
            int i10 = i4 + i4;
            long[] jArr2 = jArr[i10 + 1][bArr[i4] & c.f32110q];
            long[] jArr3 = jArr[i10][(bArr[i4] & 240) >>> 4];
            j4 ^= jArr2[0] ^ jArr3[0];
            j10 ^= jArr3[1] ^ jArr2[1];
        }
        Pack.longToBigEndian(j4, bArr, 0);
        Pack.longToBigEndian(j10, bArr, 8);
    }
}
