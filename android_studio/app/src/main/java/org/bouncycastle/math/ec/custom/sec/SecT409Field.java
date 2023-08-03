package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat448;

/* loaded from: classes5.dex */
public class SecT409Field {
    private static final long M25 = 33554431;
    private static final long M59 = 576460752303423487L;

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr2[6] ^ jArr[6];
    }

    public static void addExt(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i4 = 0; i4 < 13; i4++) {
            jArr3[i4] = jArr[i4] ^ jArr2[i4];
        }
    }

    public static void addOne(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
    }

    private static void addTo(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
        jArr2[2] = jArr2[2] ^ jArr[2];
        jArr2[3] = jArr2[3] ^ jArr[3];
        jArr2[4] = jArr2[4] ^ jArr[4];
        jArr2[5] = jArr2[5] ^ jArr[5];
        jArr2[6] = jArr2[6] ^ jArr[6];
    }

    public static long[] fromBigInteger(BigInteger bigInteger) {
        return Nat.fromBigInteger64(409, bigInteger);
    }

    public static void halfTrace(long[] jArr, long[] jArr2) {
        long[] create64 = Nat.create64(13);
        Nat448.copy64(jArr, jArr2);
        for (int i4 = 1; i4 < 409; i4 += 2) {
            implSquare(jArr2, create64);
            reduce(create64, jArr2);
            implSquare(jArr2, create64);
            reduce(create64, jArr2);
            addTo(jArr, jArr2);
        }
    }

    protected static void implCompactExt(long[] jArr) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        long j13 = jArr[4];
        long j14 = jArr[5];
        long j15 = jArr[6];
        long j16 = jArr[7];
        long j17 = jArr[8];
        long j18 = jArr[9];
        long j19 = jArr[10];
        long j20 = jArr[11];
        long j21 = jArr[12];
        long j22 = jArr[13];
        jArr[0] = j4 ^ (j10 << 59);
        jArr[1] = (j10 >>> 5) ^ (j11 << 54);
        jArr[2] = (j11 >>> 10) ^ (j12 << 49);
        jArr[3] = (j12 >>> 15) ^ (j13 << 44);
        jArr[4] = (j13 >>> 20) ^ (j14 << 39);
        jArr[5] = (j14 >>> 25) ^ (j15 << 34);
        jArr[6] = (j15 >>> 30) ^ (j16 << 29);
        jArr[7] = (j16 >>> 35) ^ (j17 << 24);
        jArr[8] = (j17 >>> 40) ^ (j18 << 19);
        jArr[9] = (j18 >>> 45) ^ (j19 << 14);
        jArr[10] = (j19 >>> 50) ^ (j20 << 9);
        jArr[11] = ((j20 >>> 55) ^ (j21 << 4)) ^ (j22 << 63);
        jArr[12] = j22 >>> 1;
    }

    protected static void implExpand(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        long j13 = jArr[4];
        long j14 = jArr[5];
        long j15 = jArr[6];
        jArr2[0] = j4 & M59;
        jArr2[1] = ((j4 >>> 59) ^ (j10 << 5)) & M59;
        jArr2[2] = ((j10 >>> 54) ^ (j11 << 10)) & M59;
        jArr2[3] = ((j11 >>> 49) ^ (j12 << 15)) & M59;
        jArr2[4] = ((j12 >>> 44) ^ (j13 << 20)) & M59;
        jArr2[5] = ((j13 >>> 39) ^ (j14 << 25)) & M59;
        jArr2[6] = (j14 >>> 34) ^ (j15 << 30);
    }

    protected static void implMultiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[7];
        long[] jArr5 = new long[7];
        implExpand(jArr, jArr4);
        implExpand(jArr2, jArr5);
        long[] jArr6 = new long[8];
        for (int i4 = 0; i4 < 7; i4++) {
            implMulwAcc(jArr6, jArr4[i4], jArr5[i4], jArr3, i4 << 1);
        }
        long j4 = jArr3[0];
        long j10 = jArr3[1];
        long j11 = j4 ^ jArr3[2];
        jArr3[1] = j11 ^ j10;
        long j12 = j10 ^ jArr3[3];
        long j13 = j11 ^ jArr3[4];
        jArr3[2] = j13 ^ j12;
        long j14 = j12 ^ jArr3[5];
        long j15 = j13 ^ jArr3[6];
        jArr3[3] = j15 ^ j14;
        long j16 = j14 ^ jArr3[7];
        long j17 = j15 ^ jArr3[8];
        jArr3[4] = j17 ^ j16;
        long j18 = j16 ^ jArr3[9];
        long j19 = j17 ^ jArr3[10];
        jArr3[5] = j19 ^ j18;
        long j20 = j18 ^ jArr3[11];
        long j21 = j19 ^ jArr3[12];
        jArr3[6] = j21 ^ j20;
        long j22 = j21 ^ (j20 ^ jArr3[13]);
        jArr3[7] = jArr3[0] ^ j22;
        jArr3[8] = jArr3[1] ^ j22;
        jArr3[9] = jArr3[2] ^ j22;
        jArr3[10] = jArr3[3] ^ j22;
        jArr3[11] = jArr3[4] ^ j22;
        jArr3[12] = jArr3[5] ^ j22;
        jArr3[13] = j22 ^ jArr3[6];
        implMulwAcc(jArr6, jArr4[0] ^ jArr4[1], jArr5[0] ^ jArr5[1], jArr3, 1);
        implMulwAcc(jArr6, jArr4[0] ^ jArr4[2], jArr5[0] ^ jArr5[2], jArr3, 2);
        implMulwAcc(jArr6, jArr4[0] ^ jArr4[3], jArr5[0] ^ jArr5[3], jArr3, 3);
        implMulwAcc(jArr6, jArr4[1] ^ jArr4[2], jArr5[1] ^ jArr5[2], jArr3, 3);
        implMulwAcc(jArr6, jArr4[0] ^ jArr4[4], jArr5[0] ^ jArr5[4], jArr3, 4);
        implMulwAcc(jArr6, jArr4[1] ^ jArr4[3], jArr5[1] ^ jArr5[3], jArr3, 4);
        implMulwAcc(jArr6, jArr4[0] ^ jArr4[5], jArr5[0] ^ jArr5[5], jArr3, 5);
        implMulwAcc(jArr6, jArr4[1] ^ jArr4[4], jArr5[1] ^ jArr5[4], jArr3, 5);
        implMulwAcc(jArr6, jArr4[2] ^ jArr4[3], jArr5[2] ^ jArr5[3], jArr3, 5);
        implMulwAcc(jArr6, jArr4[0] ^ jArr4[6], jArr5[0] ^ jArr5[6], jArr3, 6);
        implMulwAcc(jArr6, jArr4[1] ^ jArr4[5], jArr5[1] ^ jArr5[5], jArr3, 6);
        implMulwAcc(jArr6, jArr4[2] ^ jArr4[4], jArr5[2] ^ jArr5[4], jArr3, 6);
        implMulwAcc(jArr6, jArr4[1] ^ jArr4[6], jArr5[1] ^ jArr5[6], jArr3, 7);
        implMulwAcc(jArr6, jArr4[2] ^ jArr4[5], jArr5[2] ^ jArr5[5], jArr3, 7);
        implMulwAcc(jArr6, jArr4[3] ^ jArr4[4], jArr5[3] ^ jArr5[4], jArr3, 7);
        implMulwAcc(jArr6, jArr4[2] ^ jArr4[6], jArr5[2] ^ jArr5[6], jArr3, 8);
        implMulwAcc(jArr6, jArr4[3] ^ jArr4[5], jArr5[3] ^ jArr5[5], jArr3, 8);
        implMulwAcc(jArr6, jArr4[3] ^ jArr4[6], jArr5[3] ^ jArr5[6], jArr3, 9);
        implMulwAcc(jArr6, jArr4[4] ^ jArr4[5], jArr5[4] ^ jArr5[5], jArr3, 9);
        implMulwAcc(jArr6, jArr4[4] ^ jArr4[6], jArr5[4] ^ jArr5[6], jArr3, 10);
        implMulwAcc(jArr6, jArr4[5] ^ jArr4[6], jArr5[5] ^ jArr5[6], jArr3, 11);
        implCompactExt(jArr3);
    }

    protected static void implMulwAcc(long[] jArr, long j4, long j10, long[] jArr2, int i4) {
        jArr[1] = j10;
        jArr[2] = jArr[1] << 1;
        jArr[3] = jArr[2] ^ j10;
        jArr[4] = jArr[2] << 1;
        jArr[5] = jArr[4] ^ j10;
        jArr[6] = jArr[3] << 1;
        jArr[7] = jArr[6] ^ j10;
        int i10 = (int) j4;
        long j11 = (jArr[(i10 >>> 3) & 7] << 3) ^ jArr[i10 & 7];
        long j12 = 0;
        int i11 = 54;
        do {
            int i12 = (int) (j4 >>> i11);
            long j13 = (jArr[(i12 >>> 3) & 7] << 3) ^ jArr[i12 & 7];
            j11 ^= j13 << i11;
            j12 ^= j13 >>> (-i11);
            i11 -= 6;
        } while (i11 > 0);
        jArr2[i4] = jArr2[i4] ^ (M59 & j11);
        int i13 = i4 + 1;
        jArr2[i13] = jArr2[i13] ^ ((j11 >>> 59) ^ (j12 << 5));
    }

    protected static void implSquare(long[] jArr, long[] jArr2) {
        Interleave.expand64To128(jArr, 0, 6, jArr2, 0);
        jArr2[12] = Interleave.expand32to64((int) jArr[6]);
    }

    public static void invert(long[] jArr, long[] jArr2) {
        if (Nat448.isZero64(jArr)) {
            throw new IllegalStateException();
        }
        long[] create64 = Nat448.create64();
        long[] create642 = Nat448.create64();
        long[] create643 = Nat448.create64();
        square(jArr, create64);
        squareN(create64, 1, create642);
        multiply(create64, create642, create64);
        squareN(create642, 1, create642);
        multiply(create64, create642, create64);
        squareN(create64, 3, create642);
        multiply(create64, create642, create64);
        squareN(create64, 6, create642);
        multiply(create64, create642, create64);
        squareN(create64, 12, create642);
        multiply(create64, create642, create643);
        squareN(create643, 24, create64);
        squareN(create64, 24, create642);
        multiply(create64, create642, create64);
        squareN(create64, 48, create642);
        multiply(create64, create642, create64);
        squareN(create64, 96, create642);
        multiply(create64, create642, create64);
        squareN(create64, 192, create642);
        multiply(create64, create642, create64);
        multiply(create64, create643, jArr2);
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat448.createExt64();
        implMultiply(jArr, jArr2, createExt64);
        reduce(createExt64, jArr3);
    }

    public static void multiplyAddToExt(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat448.createExt64();
        implMultiply(jArr, jArr2, createExt64);
        addExt(jArr3, createExt64, jArr3);
    }

    public static void reduce(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        long j13 = jArr[4];
        long j14 = jArr[5];
        long j15 = jArr[6];
        long j16 = jArr[7];
        long j17 = jArr[12];
        long j18 = j15 ^ ((j17 >>> 25) ^ (j17 << 62));
        long j19 = j16 ^ (j17 >>> 2);
        long j20 = jArr[11];
        long j21 = j13 ^ (j20 << 39);
        long j22 = (j14 ^ (j17 << 39)) ^ ((j20 >>> 25) ^ (j20 << 62));
        long j23 = j18 ^ (j20 >>> 2);
        long j24 = jArr[10];
        long j25 = j12 ^ (j24 << 39);
        long j26 = j21 ^ ((j24 >>> 25) ^ (j24 << 62));
        long j27 = j22 ^ (j24 >>> 2);
        long j28 = jArr[9];
        long j29 = j11 ^ (j28 << 39);
        long j30 = j25 ^ ((j28 >>> 25) ^ (j28 << 62));
        long j31 = j26 ^ (j28 >>> 2);
        long j32 = jArr[8];
        long j33 = j4 ^ (j19 << 39);
        long j34 = (j29 ^ ((j32 >>> 25) ^ (j32 << 62))) ^ (j19 >>> 2);
        long j35 = j23 >>> 25;
        jArr2[0] = j33 ^ j35;
        long j36 = j35 << 23;
        jArr2[1] = j36 ^ ((j10 ^ (j32 << 39)) ^ ((j19 >>> 25) ^ (j19 << 62)));
        jArr2[2] = j34;
        jArr2[3] = j30 ^ (j32 >>> 2);
        jArr2[4] = j31;
        jArr2[5] = j27;
        jArr2[6] = j23 & M25;
    }

    public static void reduce39(long[] jArr, int i4) {
        int i10 = i4 + 6;
        long j4 = jArr[i10];
        long j10 = j4 >>> 25;
        jArr[i4] = jArr[i4] ^ j10;
        int i11 = i4 + 1;
        jArr[i11] = (j10 << 23) ^ jArr[i11];
        jArr[i10] = j4 & M25;
    }

    public static void sqrt(long[] jArr, long[] jArr2) {
        long unshuffle = Interleave.unshuffle(jArr[0]);
        long unshuffle2 = Interleave.unshuffle(jArr[1]);
        long j4 = (unshuffle & 4294967295L) | (unshuffle2 << 32);
        long j10 = (unshuffle >>> 32) | (unshuffle2 & (-4294967296L));
        long unshuffle3 = Interleave.unshuffle(jArr[2]);
        long unshuffle4 = Interleave.unshuffle(jArr[3]);
        long j11 = (unshuffle3 & 4294967295L) | (unshuffle4 << 32);
        long j12 = (unshuffle3 >>> 32) | (unshuffle4 & (-4294967296L));
        long unshuffle5 = Interleave.unshuffle(jArr[4]);
        long unshuffle6 = Interleave.unshuffle(jArr[5]);
        long j13 = (unshuffle5 >>> 32) | (unshuffle6 & (-4294967296L));
        long unshuffle7 = Interleave.unshuffle(jArr[6]);
        long j14 = unshuffle7 & 4294967295L;
        long j15 = unshuffle7 >>> 32;
        jArr2[0] = j4 ^ (j10 << 44);
        jArr2[1] = (j11 ^ (j12 << 44)) ^ (j10 >>> 20);
        jArr2[2] = (((unshuffle5 & 4294967295L) | (unshuffle6 << 32)) ^ (j13 << 44)) ^ (j12 >>> 20);
        jArr2[3] = (((j15 << 44) ^ j14) ^ (j13 >>> 20)) ^ (j10 << 13);
        jArr2[4] = (j10 >>> 51) ^ ((j15 >>> 20) ^ (j12 << 13));
        jArr2[5] = (j13 << 13) ^ (j12 >>> 51);
        jArr2[6] = (j15 << 13) ^ (j13 >>> 51);
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] create64 = Nat.create64(13);
        implSquare(jArr, create64);
        reduce(create64, jArr2);
    }

    public static void squareAddToExt(long[] jArr, long[] jArr2) {
        long[] create64 = Nat.create64(13);
        implSquare(jArr, create64);
        addExt(jArr2, create64, jArr2);
    }

    public static void squareN(long[] jArr, int i4, long[] jArr2) {
        long[] create64 = Nat.create64(13);
        implSquare(jArr, create64);
        while (true) {
            reduce(create64, jArr2);
            i4--;
            if (i4 <= 0) {
                return;
            }
            implSquare(jArr2, create64);
        }
    }

    public static int trace(long[] jArr) {
        return ((int) jArr[0]) & 1;
    }
}
