package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes5.dex */
public class SecT239Field {
    private static final long M47 = 140737488355327L;
    private static final long M60 = 1152921504606846975L;

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
        return Nat.fromBigInteger64(239, bigInteger);
    }

    public static void halfTrace(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat256.createExt64();
        Nat256.copy64(jArr, jArr2);
        for (int i4 = 1; i4 < 239; i4 += 2) {
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
        jArr[0] = j4 ^ (j10 << 60);
        jArr[1] = (j10 >>> 4) ^ (j11 << 56);
        jArr[2] = (j11 >>> 8) ^ (j12 << 52);
        jArr[3] = (j12 >>> 12) ^ (j13 << 48);
        jArr[4] = (j13 >>> 16) ^ (j14 << 44);
        jArr[5] = (j14 >>> 20) ^ (j15 << 40);
        jArr[6] = (j15 >>> 24) ^ (j16 << 36);
        jArr[7] = j16 >>> 28;
    }

    protected static void implExpand(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        jArr2[0] = j4 & M60;
        jArr2[1] = ((j4 >>> 60) ^ (j10 << 4)) & M60;
        jArr2[2] = ((j10 >>> 56) ^ (j11 << 8)) & M60;
        jArr2[3] = (j11 >>> 52) ^ (j12 << 12);
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
        jArr2[i4] = jArr2[i4] ^ (M60 & j11);
        int i13 = i4 + 1;
        jArr2[i13] = ((((((j4 & 585610922974906400L) & ((j10 << 4) >> 63)) >>> 5) ^ j12) << 4) ^ (j11 >>> 60)) ^ jArr2[i13];
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
        square(create64, create64);
        multiply(create64, jArr, create64);
        squareN(create64, 59, create642);
        multiply(create642, create64, create642);
        square(create642, create642);
        multiply(create642, jArr, create642);
        squareN(create642, 119, create64);
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
        long j17 = j15 ^ (j16 >>> 17);
        long j18 = (j14 ^ (j16 << 47)) ^ (j17 >>> 17);
        long j19 = ((j13 ^ (j16 >>> 47)) ^ (j17 << 47)) ^ (j18 >>> 17);
        long j20 = j4 ^ (j19 << 17);
        long j21 = (j10 ^ (j18 << 17)) ^ (j19 >>> 47);
        long j22 = (((j12 ^ (j16 << 17)) ^ (j17 >>> 47)) ^ (j18 << 47)) ^ (j19 >>> 17);
        long j23 = j22 >>> 47;
        jArr2[0] = j20 ^ j23;
        jArr2[1] = j21;
        long j24 = j23 << 30;
        jArr2[2] = j24 ^ (((j11 ^ (j17 << 17)) ^ (j18 >>> 47)) ^ (j19 << 47));
        jArr2[3] = M47 & j22;
    }

    public static void reduce17(long[] jArr, int i4) {
        int i10 = i4 + 3;
        long j4 = jArr[i10];
        long j10 = j4 >>> 47;
        jArr[i4] = jArr[i4] ^ j10;
        int i11 = i4 + 2;
        jArr[i11] = (j10 << 30) ^ jArr[i11];
        jArr[i10] = j4 & M47;
    }

    public static void sqrt(long[] jArr, long[] jArr2) {
        int i4 = 0;
        long unshuffle = Interleave.unshuffle(jArr[0]);
        long unshuffle2 = Interleave.unshuffle(jArr[1]);
        long j4 = (unshuffle & 4294967295L) | (unshuffle2 << 32);
        long j10 = (unshuffle >>> 32) | (unshuffle2 & (-4294967296L));
        int i10 = 2;
        long unshuffle3 = Interleave.unshuffle(jArr[2]);
        long unshuffle4 = Interleave.unshuffle(jArr[3]);
        long j11 = (unshuffle3 & 4294967295L) | (unshuffle4 << 32);
        long j12 = (unshuffle4 & (-4294967296L)) | (unshuffle3 >>> 32);
        long j13 = j12 >>> 49;
        long j14 = (j10 >>> 49) | (j12 << 15);
        long j15 = j12 ^ (j10 << 15);
        long[] createExt64 = Nat256.createExt64();
        int[] iArr = {39, 120};
        while (i4 < i10) {
            int i11 = iArr[i4] >>> 6;
            int i12 = iArr[i4] & 63;
            createExt64[i11] = createExt64[i11] ^ (j10 << i12);
            int i13 = i11 + 1;
            int[] iArr2 = iArr;
            int i14 = -i12;
            createExt64[i13] = createExt64[i13] ^ ((j15 << i12) | (j10 >>> i14));
            int i15 = i11 + 2;
            createExt64[i15] = createExt64[i15] ^ ((j14 << i12) | (j15 >>> i14));
            int i16 = i11 + 3;
            createExt64[i16] = createExt64[i16] ^ ((j13 << i12) | (j14 >>> i14));
            int i17 = i11 + 4;
            createExt64[i17] = createExt64[i17] ^ (j13 >>> i14);
            i4++;
            i10 = 2;
            iArr = iArr2;
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
        return ((int) ((jArr[0] ^ (jArr[1] >>> 17)) ^ (jArr[2] >>> 34))) & 1;
    }
}
