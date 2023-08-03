package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes5.dex */
public class SecT193Field {
    private static final long M01 = 1;
    private static final long M49 = 562949953421311L;

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    public static void addExt(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr2[6] ^ jArr[6];
    }

    public static void addOne(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    private static void addTo(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
        jArr2[2] = jArr2[2] ^ jArr[2];
        jArr2[3] = jArr2[3] ^ jArr[3];
    }

    public static long[] fromBigInteger(BigInteger bigInteger) {
        return Nat.fromBigInteger64(193, bigInteger);
    }

    public static void halfTrace(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat256.createExt64();
        Nat256.copy64(jArr, jArr2);
        for (int i4 = 1; i4 < 193; i4 += 2) {
            implSquare(jArr2, createExt64);
            reduce(createExt64, jArr2);
            implSquare(jArr2, createExt64);
            reduce(createExt64, jArr2);
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
        jArr[0] = j4 ^ (j10 << 49);
        jArr[1] = (j10 >>> 15) ^ (j11 << 34);
        jArr[2] = (j11 >>> 30) ^ (j12 << 19);
        jArr[3] = ((j12 >>> 45) ^ (j13 << 4)) ^ (j14 << 53);
        jArr[4] = ((j13 >>> 60) ^ (j15 << 38)) ^ (j14 >>> 11);
        jArr[5] = (j15 >>> 26) ^ (j16 << 23);
        jArr[6] = j16 >>> 41;
        jArr[7] = 0;
    }

    protected static void implExpand(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        jArr2[0] = j4 & M49;
        jArr2[1] = ((j4 >>> 49) ^ (j10 << 15)) & M49;
        jArr2[2] = ((j10 >>> 34) ^ (j11 << 30)) & M49;
        jArr2[3] = (j11 >>> 19) ^ (j12 << 45);
    }

    protected static void implMultiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[4];
        long[] jArr5 = new long[4];
        implExpand(jArr, jArr4);
        implExpand(jArr2, jArr5);
        long[] jArr6 = new long[8];
        implMulwAcc(jArr6, jArr4[0], jArr5[0], jArr3, 0);
        implMulwAcc(jArr6, jArr4[1], jArr5[1], jArr3, 1);
        implMulwAcc(jArr6, jArr4[2], jArr5[2], jArr3, 2);
        implMulwAcc(jArr6, jArr4[3], jArr5[3], jArr3, 3);
        for (int i4 = 5; i4 > 0; i4--) {
            jArr3[i4] = jArr3[i4] ^ jArr3[i4 - 1];
        }
        implMulwAcc(jArr6, jArr4[0] ^ jArr4[1], jArr5[0] ^ jArr5[1], jArr3, 1);
        implMulwAcc(jArr6, jArr4[2] ^ jArr4[3], jArr5[2] ^ jArr5[3], jArr3, 3);
        for (int i10 = 7; i10 > 1; i10--) {
            jArr3[i10] = jArr3[i10] ^ jArr3[i10 - 2];
        }
        long j4 = jArr4[0] ^ jArr4[2];
        long j10 = jArr4[1] ^ jArr4[3];
        long j11 = jArr5[0] ^ jArr5[2];
        long j12 = jArr5[1] ^ jArr5[3];
        implMulwAcc(jArr6, j4 ^ j10, j11 ^ j12, jArr3, 3);
        long[] jArr7 = new long[3];
        implMulwAcc(jArr6, j4, j11, jArr7, 0);
        implMulwAcc(jArr6, j10, j12, jArr7, 1);
        long j13 = jArr7[0];
        long j14 = jArr7[1];
        long j15 = jArr7[2];
        jArr3[2] = jArr3[2] ^ j13;
        jArr3[3] = (j13 ^ j14) ^ jArr3[3];
        jArr3[4] = jArr3[4] ^ (j15 ^ j14);
        jArr3[5] = jArr3[5] ^ j15;
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
        int i11 = 36;
        do {
            int i12 = (int) (j4 >>> i11);
            long j13 = (jArr[(i12 >>> 12) & 7] << 12) ^ (((jArr[i12 & 7] ^ (jArr[(i12 >>> 3) & 7] << 3)) ^ (jArr[(i12 >>> 6) & 7] << 6)) ^ (jArr[(i12 >>> 9) & 7] << 9));
            j11 ^= j13 << i11;
            j12 ^= j13 >>> (-i11);
            i11 -= 15;
        } while (i11 > 0);
        jArr2[i4] = jArr2[i4] ^ (M49 & j11);
        int i13 = i4 + 1;
        jArr2[i13] = jArr2[i13] ^ ((j11 >>> 49) ^ (j12 << 15));
    }

    protected static void implSquare(long[] jArr, long[] jArr2) {
        Interleave.expand64To128(jArr, 0, 3, jArr2, 0);
        jArr2[6] = jArr[3] & 1;
    }

    public static void invert(long[] jArr, long[] jArr2) {
        if (Nat256.isZero64(jArr)) {
            throw new IllegalStateException();
        }
        long[] create64 = Nat256.create64();
        long[] create642 = Nat256.create64();
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
        multiply(create64, create642, create64);
        squareN(create64, 24, create642);
        multiply(create64, create642, create64);
        squareN(create64, 48, create642);
        multiply(create64, create642, create64);
        squareN(create64, 96, create642);
        multiply(create64, create642, jArr2);
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat256.createExt64();
        implMultiply(jArr, jArr2, createExt64);
        reduce(createExt64, jArr3);
    }

    public static void multiplyAddToExt(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat256.createExt64();
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
        long j16 = j13 ^ (j15 >>> 50);
        long j17 = (j12 ^ ((j15 >>> 1) ^ (j15 << 14))) ^ (j14 >>> 50);
        long j18 = j4 ^ (j16 << 63);
        long j19 = (j10 ^ (j14 << 63)) ^ ((j16 >>> 1) ^ (j16 << 14));
        long j20 = ((j11 ^ (j15 << 63)) ^ ((j14 >>> 1) ^ (j14 << 14))) ^ (j16 >>> 50);
        long j21 = j17 >>> 1;
        jArr2[0] = (j18 ^ j21) ^ (j21 << 15);
        jArr2[1] = (j21 >>> 49) ^ j19;
        jArr2[2] = j20;
        jArr2[3] = 1 & j17;
    }

    public static void reduce63(long[] jArr, int i4) {
        int i10 = i4 + 3;
        long j4 = jArr[i10];
        long j10 = j4 >>> 1;
        jArr[i4] = jArr[i4] ^ ((j10 << 15) ^ j10);
        int i11 = i4 + 1;
        jArr[i11] = (j10 >>> 49) ^ jArr[i11];
        jArr[i10] = j4 & 1;
    }

    public static void sqrt(long[] jArr, long[] jArr2) {
        long unshuffle = Interleave.unshuffle(jArr[0]);
        long unshuffle2 = Interleave.unshuffle(jArr[1]);
        long j4 = (unshuffle & 4294967295L) | (unshuffle2 << 32);
        long j10 = (unshuffle >>> 32) | (unshuffle2 & (-4294967296L));
        long unshuffle3 = Interleave.unshuffle(jArr[2]);
        long j11 = (unshuffle3 & 4294967295L) ^ (jArr[3] << 32);
        long j12 = unshuffle3 >>> 32;
        jArr2[0] = j4 ^ (j10 << 8);
        jArr2[1] = ((j11 ^ (j12 << 8)) ^ (j10 >>> 56)) ^ (j10 << 33);
        jArr2[2] = (j10 >>> 31) ^ ((j12 >>> 56) ^ (j12 << 33));
        jArr2[3] = j12 >>> 31;
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat256.createExt64();
        implSquare(jArr, createExt64);
        reduce(createExt64, jArr2);
    }

    public static void squareAddToExt(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat256.createExt64();
        implSquare(jArr, createExt64);
        addExt(jArr2, createExt64, jArr2);
    }

    public static void squareN(long[] jArr, int i4, long[] jArr2) {
        long[] createExt64 = Nat256.createExt64();
        implSquare(jArr, createExt64);
        while (true) {
            reduce(createExt64, jArr2);
            i4--;
            if (i4 <= 0) {
                return;
            }
            implSquare(jArr2, createExt64);
        }
    }

    public static int trace(long[] jArr) {
        return ((int) jArr[0]) & 1;
    }
}
