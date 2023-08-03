package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes5.dex */
public class SecT233Field {
    private static final long M41 = 2199023255551L;
    private static final long M59 = 576460752303423487L;

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
        jArr3[6] = jArr[6] ^ jArr2[6];
        jArr3[7] = jArr2[7] ^ jArr[7];
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
        return Nat.fromBigInteger64(233, bigInteger);
    }

    public static void halfTrace(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat256.createExt64();
        Nat256.copy64(jArr, jArr2);
        for (int i4 = 1; i4 < 233; i4 += 2) {
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
        jArr[0] = j4 ^ (j10 << 59);
        jArr[1] = (j10 >>> 5) ^ (j11 << 54);
        jArr[2] = (j11 >>> 10) ^ (j12 << 49);
        jArr[3] = (j12 >>> 15) ^ (j13 << 44);
        jArr[4] = (j13 >>> 20) ^ (j14 << 39);
        jArr[5] = (j14 >>> 25) ^ (j15 << 34);
        jArr[6] = (j15 >>> 30) ^ (j16 << 29);
        jArr[7] = j16 >>> 35;
    }

    protected static void implExpand(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        jArr2[0] = j4 & M59;
        jArr2[1] = ((j4 >>> 59) ^ (j10 << 5)) & M59;
        jArr2[2] = ((j10 >>> 54) ^ (j11 << 10)) & M59;
        jArr2[3] = (j11 >>> 49) ^ (j12 << 15);
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
        Interleave.expand64To128(jArr, 0, 4, jArr2, 0);
    }

    public static void invert(long[] jArr, long[] jArr2) {
        if (Nat256.isZero64(jArr)) {
            throw new IllegalStateException();
        }
        long[] create64 = Nat256.create64();
        long[] create642 = Nat256.create64();
        square(jArr, create64);
        multiply(create64, jArr, create64);
        square(create64, create64);
        multiply(create64, jArr, create64);
        squareN(create64, 3, create642);
        multiply(create642, create64, create642);
        square(create642, create642);
        multiply(create642, jArr, create642);
        squareN(create642, 7, create64);
        multiply(create64, create642, create64);
        squareN(create64, 14, create642);
        multiply(create642, create64, create642);
        square(create642, create642);
        multiply(create642, jArr, create642);
        squareN(create642, 29, create64);
        multiply(create64, create642, create64);
        squareN(create64, 58, create642);
        multiply(create642, create64, create642);
        squareN(create642, 116, create64);
        multiply(create64, create642, create64);
        square(create64, jArr2);
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
        long j16 = jArr[7];
        long j17 = j14 ^ (j16 >>> 31);
        long j18 = (j13 ^ ((j16 >>> 41) ^ (j16 << 33))) ^ (j15 >>> 31);
        long j19 = ((j12 ^ (j16 << 23)) ^ ((j15 >>> 41) ^ (j15 << 33))) ^ (j17 >>> 31);
        long j20 = j4 ^ (j18 << 23);
        long j21 = ((j11 ^ (j15 << 23)) ^ ((j17 >>> 41) ^ (j17 << 33))) ^ (j18 >>> 31);
        long j22 = j19 >>> 41;
        jArr2[0] = j20 ^ j22;
        long j23 = j22 << 10;
        jArr2[1] = j23 ^ ((j10 ^ (j17 << 23)) ^ ((j18 >>> 41) ^ (j18 << 33)));
        jArr2[2] = j21;
        jArr2[3] = M41 & j19;
    }

    public static void reduce23(long[] jArr, int i4) {
        int i10 = i4 + 3;
        long j4 = jArr[i10];
        long j10 = j4 >>> 41;
        jArr[i4] = jArr[i4] ^ j10;
        int i11 = i4 + 1;
        jArr[i11] = (j10 << 10) ^ jArr[i11];
        jArr[i10] = j4 & M41;
    }

    public static void sqrt(long[] jArr, long[] jArr2) {
        long unshuffle = Interleave.unshuffle(jArr[0]);
        long unshuffle2 = Interleave.unshuffle(jArr[1]);
        long j4 = (unshuffle & 4294967295L) | (unshuffle2 << 32);
        long j10 = (unshuffle >>> 32) | (unshuffle2 & (-4294967296L));
        long unshuffle3 = Interleave.unshuffle(jArr[2]);
        long unshuffle4 = Interleave.unshuffle(jArr[3]);
        long j11 = (4294967295L & unshuffle3) | (unshuffle4 << 32);
        long j12 = (unshuffle3 >>> 32) | (unshuffle4 & (-4294967296L));
        long j13 = j12 >>> 27;
        long j14 = j12 ^ ((j10 >>> 27) | (j12 << 37));
        long j15 = j10 ^ (j10 << 37);
        long[] createExt64 = Nat256.createExt64();
        int[] iArr = {32, 117, 191};
        int i4 = 0;
        for (int i10 = 3; i4 < i10; i10 = 3) {
            int i11 = iArr[i4] >>> 6;
            int i12 = iArr[i4] & 63;
            createExt64[i11] = createExt64[i11] ^ (j15 << i12);
            int i13 = i11 + 1;
            int i14 = -i12;
            createExt64[i13] = createExt64[i13] ^ ((j14 << i12) | (j15 >>> i14));
            int i15 = i11 + 2;
            createExt64[i15] = createExt64[i15] ^ ((j13 << i12) | (j14 >>> i14));
            int i16 = i11 + 3;
            createExt64[i16] = createExt64[i16] ^ (j13 >>> i14);
            i4++;
        }
        reduce(createExt64, jArr2);
        jArr2[0] = jArr2[0] ^ j4;
        jArr2[1] = jArr2[1] ^ j11;
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
        return ((int) (jArr[0] ^ (jArr[2] >>> 31))) & 1;
    }
}
