package org.bouncycastle.crypto.modes.kgcm;

import java.lang.reflect.Array;

/* loaded from: classes4.dex */
public class Tables4kKGCMMultiplier_128 implements KGCMMultiplier {
    private long[][] T;

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        long[][] jArr2 = this.T;
        if (jArr2 == null) {
            this.T = (long[][]) Array.newInstance(long.class, 256, 2);
        } else if (KGCMUtil_128.equal(jArr, jArr2[1])) {
            return;
        }
        KGCMUtil_128.copy(jArr, this.T[1]);
        for (int i4 = 2; i4 < 256; i4 += 2) {
            long[][] jArr3 = this.T;
            KGCMUtil_128.multiplyX(jArr3[i4 >> 1], jArr3[i4]);
            long[][] jArr4 = this.T;
            KGCMUtil_128.add(jArr4[i4], jArr4[1], jArr4[i4 + 1]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        long[] jArr2 = new long[2];
        KGCMUtil_128.copy(this.T[((int) (jArr[1] >>> 56)) & 255], jArr2);
        for (int i4 = 14; i4 >= 0; i4--) {
            KGCMUtil_128.multiplyX8(jArr2, jArr2);
            KGCMUtil_128.add(this.T[((int) (jArr[i4 >>> 3] >>> ((i4 & 7) << 3))) & 255], jArr2, jArr2);
        }
        KGCMUtil_128.copy(jArr2, jArr);
    }
}
