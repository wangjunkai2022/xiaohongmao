package org.bouncycastle.crypto.modes.kgcm;

import org.bouncycastle.math.raw.Interleave;

/* loaded from: classes4.dex */
public class KGCMUtil_512 {
    public static final int SIZE = 8;

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr[6] ^ jArr2[6];
        jArr3[7] = jArr2[7] ^ jArr[7];
    }

    public static void copy(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
        jArr2[7] = jArr[7];
    }

    public static boolean equal(long[] jArr, long[] jArr2) {
        return ((jArr2[7] ^ jArr[7]) | ((((((((jArr[0] ^ jArr2[0]) | 0) | (jArr[1] ^ jArr2[1])) | (jArr[2] ^ jArr2[2])) | (jArr[3] ^ jArr2[3])) | (jArr[4] ^ jArr2[4])) | (jArr[5] ^ jArr2[5])) | (jArr[6] ^ jArr2[6]))) == 0;
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        int i4 = 0;
        long j4 = jArr2[0];
        long j10 = jArr2[1];
        long j11 = jArr2[2];
        long j12 = jArr2[3];
        long j13 = jArr2[4];
        long j14 = jArr2[5];
        long j15 = jArr2[6];
        long j16 = jArr2[7];
        long j17 = 0;
        long j18 = 0;
        long j19 = 0;
        long j20 = 0;
        long j21 = 0;
        long j22 = 0;
        long j23 = 0;
        long j24 = 0;
        long j25 = 0;
        int i10 = 0;
        while (i10 < 8) {
            long j26 = jArr[i10];
            long j27 = jArr[i10 + 1];
            long j28 = j10;
            long j29 = j15;
            j15 = j14;
            j14 = j13;
            j13 = j12;
            j12 = j11;
            long j30 = j28;
            while (i4 < 64) {
                long j31 = j30;
                long j32 = -(j26 & 1);
                j26 >>>= 1;
                j17 ^= j4 & j32;
                long j33 = j12;
                long j34 = -(j27 & 1);
                j27 >>>= 1;
                j19 = (j19 ^ (j31 & j32)) ^ (j4 & j34);
                j20 = (j20 ^ (j12 & j32)) ^ (j31 & j34);
                j21 = (j21 ^ (j13 & j32)) ^ (j33 & j34);
                j22 = (j22 ^ (j14 & j32)) ^ (j13 & j34);
                j23 = (j23 ^ (j15 & j32)) ^ (j14 & j34);
                j24 = (j24 ^ (j29 & j32)) ^ (j15 & j34);
                j25 = (j25 ^ (j16 & j32)) ^ (j29 & j34);
                j18 ^= j16 & j34;
                long j35 = j16 >> 63;
                j16 = (j16 << 1) | (j29 >>> 63);
                j29 = (j29 << 1) | (j15 >>> 63);
                j15 = (j15 << 1) | (j14 >>> 63);
                j14 = (j14 << 1) | (j13 >>> 63);
                j13 = (j13 << 1) | (j33 >>> 63);
                j4 = (j4 << 1) ^ (j35 & 293);
                i4++;
                j30 = (j31 << 1) | (j4 >>> 63);
                j12 = (j33 << 1) | (j31 >>> 63);
            }
            long j36 = ((j4 ^ (j16 >>> 62)) ^ (j16 >>> 59)) ^ (j16 >>> 56);
            i10 += 2;
            j16 = j29;
            j10 = j36;
            j4 = ((j16 ^ (j16 << 2)) ^ (j16 << 5)) ^ (j16 << 8);
            j11 = j30;
            i4 = 0;
        }
        jArr3[0] = j17 ^ (((j18 ^ (j18 << 2)) ^ (j18 << 5)) ^ (j18 << 8));
        jArr3[1] = j19 ^ (((j18 >>> 62) ^ (j18 >>> 59)) ^ (j18 >>> 56));
        jArr3[2] = j20;
        jArr3[3] = j21;
        jArr3[4] = j22;
        jArr3[5] = j23;
        jArr3[6] = j24;
        jArr3[7] = j25;
    }

    public static void multiplyX(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        long j13 = jArr[4];
        long j14 = jArr[5];
        long j15 = jArr[6];
        long j16 = jArr[7];
        jArr2[0] = (j4 << 1) ^ ((j16 >> 63) & 293);
        jArr2[1] = (j10 << 1) | (j4 >>> 63);
        jArr2[2] = (j11 << 1) | (j10 >>> 63);
        jArr2[3] = (j12 << 1) | (j11 >>> 63);
        jArr2[4] = (j13 << 1) | (j12 >>> 63);
        jArr2[5] = (j14 << 1) | (j13 >>> 63);
        jArr2[6] = (j15 << 1) | (j14 >>> 63);
        jArr2[7] = (j16 << 1) | (j15 >>> 63);
    }

    public static void multiplyX8(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        long j13 = jArr[4];
        long j14 = jArr[5];
        long j15 = jArr[6];
        long j16 = jArr[7];
        long j17 = j16 >>> 56;
        jArr2[0] = ((((j4 << 8) ^ j17) ^ (j17 << 2)) ^ (j17 << 5)) ^ (j17 << 8);
        jArr2[1] = (j10 << 8) | (j4 >>> 56);
        jArr2[2] = (j11 << 8) | (j10 >>> 56);
        jArr2[3] = (j12 << 8) | (j11 >>> 56);
        jArr2[4] = (j13 << 8) | (j12 >>> 56);
        jArr2[5] = (j14 << 8) | (j13 >>> 56);
        jArr2[6] = (j15 << 8) | (j14 >>> 56);
        jArr2[7] = (j16 << 8) | (j15 >>> 56);
    }

    public static void one(long[] jArr) {
        jArr[0] = 1;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
        jArr[4] = 0;
        jArr[5] = 0;
        jArr[6] = 0;
        jArr[7] = 0;
    }

    public static void square(long[] jArr, long[] jArr2) {
        int i4 = 16;
        long[] jArr3 = new long[16];
        for (int i10 = 0; i10 < 8; i10++) {
            Interleave.expand64To128(jArr[i10], jArr3, i10 << 1);
        }
        while (true) {
            i4--;
            if (i4 < 8) {
                copy(jArr3, jArr2);
                return;
            }
            long j4 = jArr3[i4];
            int i11 = i4 - 8;
            jArr3[i11] = jArr3[i11] ^ ((((j4 << 2) ^ j4) ^ (j4 << 5)) ^ (j4 << 8));
            int i12 = i11 + 1;
            jArr3[i12] = ((j4 >>> 56) ^ ((j4 >>> 62) ^ (j4 >>> 59))) ^ jArr3[i12];
        }
    }

    public static void x(long[] jArr) {
        jArr[0] = 2;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
        jArr[4] = 0;
        jArr[5] = 0;
        jArr[6] = 0;
        jArr[7] = 0;
    }

    public static void zero(long[] jArr) {
        jArr[0] = 0;
        jArr[1] = 0;
        jArr[2] = 0;
        jArr[3] = 0;
        jArr[4] = 0;
        jArr[5] = 0;
        jArr[6] = 0;
        jArr[7] = 0;
    }
}
