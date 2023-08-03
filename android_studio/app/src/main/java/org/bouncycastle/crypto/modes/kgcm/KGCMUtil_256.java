package org.bouncycastle.crypto.modes.kgcm;

import org.bouncycastle.math.raw.Interleave;

/* loaded from: classes4.dex */
public class KGCMUtil_256 {
    public static final int SIZE = 4;

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    public static void copy(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static boolean equal(long[] jArr, long[] jArr2) {
        return ((jArr2[3] ^ jArr[3]) | ((((jArr[0] ^ jArr2[0]) | 0) | (jArr[1] ^ jArr2[1])) | (jArr[2] ^ jArr2[2]))) == 0;
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        int i4;
        long j4;
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long j14 = jArr2[0];
        long j15 = jArr2[1];
        long j16 = jArr2[2];
        long j17 = jArr2[3];
        long j18 = 0;
        long j19 = 0;
        long j20 = 0;
        long j21 = 0;
        long j22 = 0;
        int i10 = 0;
        while (true) {
            j4 = j12;
            if (i10 >= 64) {
                break;
            }
            long j23 = -(j10 & 1);
            j18 ^= j14 & j23;
            long j24 = -(j11 & 1);
            j11 >>>= 1;
            j19 = (j19 ^ (j15 & j23)) ^ (j14 & j24);
            j20 = (j20 ^ (j16 & j23)) ^ (j15 & j24);
            j21 = (j21 ^ (j17 & j23)) ^ (j16 & j24);
            j22 ^= j17 & j24;
            long j25 = j17 >> 63;
            j17 = (j17 << 1) | (j16 >>> 63);
            j16 = (j16 << 1) | (j15 >>> 63);
            j15 = (j14 >>> 63) | (j15 << 1);
            j14 = (j14 << 1) ^ (j25 & 1061);
            i10++;
            j10 >>>= 1;
            j12 = j4;
        }
        long j26 = (((j17 >>> 62) ^ j14) ^ (j17 >>> 59)) ^ (j17 >>> 54);
        long j27 = j16;
        int i11 = 0;
        long j28 = j15;
        long j29 = j13;
        long j30 = ((j17 ^ (j17 << 2)) ^ (j17 << 5)) ^ (j17 << 10);
        long j31 = j4;
        for (i4 = 64; i11 < i4; i4 = 64) {
            long j32 = -(j31 & 1);
            j31 >>>= 1;
            j18 ^= j30 & j32;
            long j33 = j30;
            long j34 = -(j29 & 1);
            j29 >>>= 1;
            j19 = (j19 ^ (j26 & j32)) ^ (j33 & j34);
            j20 = (j20 ^ (j28 & j32)) ^ (j26 & j34);
            j21 = (j21 ^ (j27 & j32)) ^ (j28 & j34);
            j22 ^= j27 & j34;
            long j35 = j27 >> 63;
            j27 = (j27 << 1) | (j28 >>> 63);
            j28 = (j26 >>> 63) | (j28 << 1);
            j26 = (j26 << 1) | (j33 >>> 63);
            j30 = (j33 << 1) ^ (j35 & 1061);
            i11++;
        }
        jArr3[0] = j18 ^ (((j22 ^ (j22 << 2)) ^ (j22 << 5)) ^ (j22 << 10));
        jArr3[1] = j19 ^ (((j22 >>> 62) ^ (j22 >>> 59)) ^ (j22 >>> 54));
        jArr3[2] = j20;
        jArr3[3] = j21;
    }

    public static void multiplyX(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        jArr2[0] = ((j12 >> 63) & 1061) ^ (j4 << 1);
        jArr2[1] = (j4 >>> 63) | (j10 << 1);
        jArr2[2] = (j11 << 1) | (j10 >>> 63);
        jArr2[3] = (j12 << 1) | (j11 >>> 63);
    }

    public static void multiplyX8(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        long j13 = j12 >>> 56;
        jArr2[0] = ((((j4 << 8) ^ j13) ^ (j13 << 2)) ^ (j13 << 5)) ^ (j13 << 10);
        jArr2[1] = (j4 >>> 56) | (j10 << 8);
        jArr2[2] = (j11 << 8) | (j10 >>> 56);
        jArr2[3] = (j12 << 8) | (j11 >>> 56);
    }

    public static void one(long[] jArr) {
        jArr[0] = 1;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
    }

    public static void square(long[] jArr, long[] jArr2) {
        int i4 = 8;
        long[] jArr3 = new long[8];
        for (int i10 = 0; i10 < 4; i10++) {
            Interleave.expand64To128(jArr[i10], jArr3, i10 << 1);
        }
        while (true) {
            i4--;
            if (i4 < 4) {
                copy(jArr3, jArr2);
                return;
            }
            long j4 = jArr3[i4];
            int i11 = i4 - 4;
            jArr3[i11] = jArr3[i11] ^ ((((j4 << 2) ^ j4) ^ (j4 << 5)) ^ (j4 << 10));
            int i12 = i11 + 1;
            jArr3[i12] = ((j4 >>> 54) ^ ((j4 >>> 62) ^ (j4 >>> 59))) ^ jArr3[i12];
        }
    }

    public static void x(long[] jArr) {
        jArr[0] = 2;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
    }

    public static void zero(long[] jArr) {
        jArr[0] = 0;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
    }
}
