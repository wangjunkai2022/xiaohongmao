package org.bouncycastle.crypto.modes.kgcm;

import org.bouncycastle.math.raw.Interleave;

/* loaded from: classes4.dex */
public class KGCMUtil_128 {
    public static final int SIZE = 2;

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr2[1] ^ jArr[1];
    }

    public static void copy(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
    }

    public static boolean equal(long[] jArr, long[] jArr2) {
        return ((jArr2[1] ^ jArr[1]) | ((jArr[0] ^ jArr2[0]) | 0)) == 0;
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        int i4 = 0;
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr2[0];
        long j12 = jArr2[1];
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        while (i4 < 64) {
            long j16 = j14;
            long j17 = -(j4 & 1);
            j4 >>>= 1;
            j13 ^= j11 & j17;
            long j18 = (j17 & j12) ^ j15;
            long j19 = -(j10 & 1);
            j10 >>>= 1;
            long j20 = j18 ^ (j11 & j19);
            long j21 = j12 >> 63;
            j12 = (j12 << 1) | (j11 >>> 63);
            j11 = (j11 << 1) ^ (j21 & 135);
            i4++;
            j14 = j16 ^ (j19 & j12);
            j15 = j20;
        }
        long j22 = j14;
        jArr3[0] = (((j22 ^ (j22 << 1)) ^ (j22 << 2)) ^ (j22 << 7)) ^ j13;
        jArr3[1] = (((j22 >>> 63) ^ (j22 >>> 62)) ^ (j22 >>> 57)) ^ j15;
    }

    public static void multiplyX(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        jArr2[0] = ((j10 >> 63) & 135) ^ (j4 << 1);
        jArr2[1] = (j4 >>> 63) | (j10 << 1);
    }

    public static void multiplyX8(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = j10 >>> 56;
        jArr2[0] = (j11 << 7) ^ ((((j4 << 8) ^ j11) ^ (j11 << 1)) ^ (j11 << 2));
        jArr2[1] = (j4 >>> 56) | (j10 << 8);
    }

    public static void one(long[] jArr) {
        jArr[0] = 1;
        jArr[1] = 0;
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[4];
        Interleave.expand64To128(jArr[0], jArr3, 0);
        Interleave.expand64To128(jArr[1], jArr3, 2);
        long j4 = jArr3[0];
        long j10 = jArr3[1];
        long j11 = jArr3[2];
        long j12 = jArr3[3];
        long j13 = j11 ^ ((j12 >>> 57) ^ ((j12 >>> 63) ^ (j12 >>> 62)));
        long j14 = j4 ^ ((((j13 << 1) ^ j13) ^ (j13 << 2)) ^ (j13 << 7));
        jArr2[0] = j14;
        jArr2[1] = (j10 ^ ((((j12 << 1) ^ j12) ^ (j12 << 2)) ^ (j12 << 7))) ^ ((j13 >>> 57) ^ ((j13 >>> 63) ^ (j13 >>> 62)));
    }

    public static void x(long[] jArr) {
        jArr[0] = 2;
        jArr[1] = 0;
    }

    public static void zero(long[] jArr) {
        jArr[0] = 0;
        jArr[1] = 0;
    }
}
