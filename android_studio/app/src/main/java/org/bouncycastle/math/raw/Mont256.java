package org.bouncycastle.math.raw;

/* loaded from: classes5.dex */
public abstract class Mont256 {
    private static final long M = 4294967295L;

    public static int inverse32(int i4) {
        int i10 = (2 - (i4 * i4)) * i4;
        int i11 = i10 * (2 - (i4 * i10));
        int i12 = i11 * (2 - (i4 * i11));
        return i12 * (2 - (i4 * i12));
    }

    public static void multAdd(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i4) {
        char c10 = 0;
        long j4 = iArr2[0] & M;
        int i10 = 0;
        int i11 = 0;
        while (i10 < 8) {
            long j10 = iArr3[c10] & M;
            long j11 = iArr[i10] & M;
            long j12 = j11 * j4;
            long j13 = (j12 & M) + j10;
            long j14 = j4;
            long j15 = (((int) j13) * i4) & M;
            int i12 = i10;
            int i13 = i11;
            long j16 = (iArr4[c10] & M) * j15;
            long j17 = ((j13 + (j16 & M)) >>> 32) + (j12 >>> 32) + (j16 >>> 32);
            int i14 = 1;
            for (int i15 = 8; i14 < i15; i15 = 8) {
                long j18 = (iArr2[i14] & M) * j11;
                long j19 = (iArr4[i14] & M) * j15;
                long j20 = j17 + (j18 & M) + (j19 & M) + (iArr3[i14] & M);
                iArr3[i14 - 1] = (int) j20;
                j17 = (j20 >>> 32) + (j18 >>> 32) + (j19 >>> 32);
                i14++;
                j15 = j15;
            }
            long j21 = j17 + (i13 & M);
            iArr3[7] = (int) j21;
            i11 = (int) (j21 >>> 32);
            i10 = i12 + 1;
            j4 = j14;
            c10 = 0;
        }
        if (i11 != 0 || Nat256.gte(iArr3, iArr4)) {
            Nat256.sub(iArr3, iArr4, iArr3);
        }
    }

    public static void multAddXF(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        char c10 = 0;
        long j4 = iArr2[0] & M;
        int i4 = 0;
        int i10 = 0;
        while (true) {
            if (i4 >= 8) {
                break;
            }
            long j10 = iArr[i4] & M;
            long j11 = (j10 * j4) + (iArr3[c10] & M);
            long j12 = j11 & M;
            long j13 = (j11 >>> 32) + j12;
            int i11 = 1;
            for (int i12 = 8; i11 < i12; i12 = 8) {
                long j14 = j4;
                long j15 = (iArr2[i11] & M) * j10;
                long j16 = (iArr4[i11] & M) * j12;
                long j17 = j13 + (j15 & M) + (j16 & M) + (iArr3[i11] & M);
                iArr3[i11 - 1] = (int) j17;
                j13 = (j17 >>> 32) + (j15 >>> 32) + (j16 >>> 32);
                i11++;
                j4 = j14;
                j10 = j10;
                j12 = j12;
            }
            long j18 = j13 + (i10 & M);
            iArr3[7] = (int) j18;
            i10 = (int) (j18 >>> 32);
            i4++;
            j4 = j4;
            c10 = 0;
        }
        if (i10 != 0 || Nat256.gte(iArr3, iArr4)) {
            Nat256.sub(iArr3, iArr4, iArr3);
        }
    }

    public static void reduce(int[] iArr, int[] iArr2, int i4) {
        char c10 = 0;
        int i10 = 0;
        while (i10 < 8) {
            int i11 = iArr[c10];
            long j4 = (i11 * i4) & M;
            long j10 = (((iArr2[c10] & M) * j4) + (i11 & M)) >>> 32;
            int i12 = 1;
            while (i12 < 8) {
                long j11 = j10 + ((iArr2[i12] & M) * j4) + (iArr[i12] & M);
                iArr[i12 - 1] = (int) j11;
                j10 = j11 >>> 32;
                i12++;
                i10 = i10;
            }
            iArr[7] = (int) j10;
            i10++;
            c10 = 0;
        }
        if (Nat256.gte(iArr, iArr2)) {
            Nat256.sub(iArr, iArr2, iArr);
        }
    }

    public static void reduceXF(int[] iArr, int[] iArr2) {
        for (int i4 = 0; i4 < 8; i4++) {
            long j4 = iArr[0] & M;
            long j10 = j4;
            for (int i10 = 1; i10 < 8; i10++) {
                long j11 = j10 + ((iArr2[i10] & M) * j4) + (iArr[i10] & M);
                iArr[i10 - 1] = (int) j11;
                j10 = j11 >>> 32;
            }
            iArr[7] = (int) j10;
        }
        if (Nat256.gte(iArr, iArr2)) {
            Nat256.sub(iArr, iArr2, iArr);
        }
    }
}
