package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat320;

/* loaded from: classes5.dex */
public class SecT283Field {
    private static final long M27 = 134217727;
    private static final long M57 = 144115188075855871L;
    private static final long[] ROOT_Z = {878416384462358536L, 3513665537849438403L, -9076969306111048948L, 585610922974906400L, 34087042};

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr2[4] ^ jArr[4];
    }

    public static void addExt(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr[6] ^ jArr2[6];
        jArr3[7] = jArr[7] ^ jArr2[7];
        jArr3[8] = jArr2[8] ^ jArr[8];
    }

    public static void addOne(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
    }

    private static void addTo(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
        jArr2[2] = jArr2[2] ^ jArr[2];
        jArr2[3] = jArr2[3] ^ jArr[3];
        jArr2[4] = jArr2[4] ^ jArr[4];
    }

    public static long[] fromBigInteger(BigInteger bigInteger) {
        return Nat.fromBigInteger64(283, bigInteger);
    }

    public static void halfTrace(long[] jArr, long[] jArr2) {
        long[] create64 = Nat.create64(9);
        Nat320.copy64(jArr, jArr2);
        for (int i4 = 1; i4 < 283; i4 += 2) {
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
        jArr[0] = j4 ^ (j10 << 57);
        jArr[1] = (j10 >>> 7) ^ (j11 << 50);
        jArr[2] = (j11 >>> 14) ^ (j12 << 43);
        jArr[3] = (j12 >>> 21) ^ (j13 << 36);
        jArr[4] = (j13 >>> 28) ^ (j14 << 29);
        jArr[5] = (j14 >>> 35) ^ (j15 << 22);
        jArr[6] = (j15 >>> 42) ^ (j16 << 15);
        jArr[7] = (j16 >>> 49) ^ (j17 << 8);
        jArr[8] = (j17 >>> 56) ^ (j18 << 1);
        jArr[9] = j18 >>> 63;
    }

    protected static void implExpand(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        long j13 = jArr[4];
        jArr2[0] = j4 & M57;
        jArr2[1] = ((j4 >>> 57) ^ (j10 << 7)) & M57;
        jArr2[2] = ((j10 >>> 50) ^ (j11 << 14)) & M57;
        jArr2[3] = ((j11 >>> 43) ^ (j12 << 21)) & M57;
        jArr2[4] = (j12 >>> 36) ^ (j13 << 28);
    }

    protected static void implMultiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[5];
        long[] jArr5 = new long[5];
        implExpand(jArr, jArr4);
        implExpand(jArr2, jArr5);
        long[] jArr6 = new long[26];
        implMulw(jArr3, jArr4[0], jArr5[0], jArr6, 0);
        implMulw(jArr3, jArr4[1], jArr5[1], jArr6, 2);
        implMulw(jArr3, jArr4[2], jArr5[2], jArr6, 4);
        implMulw(jArr3, jArr4[3], jArr5[3], jArr6, 6);
        implMulw(jArr3, jArr4[4], jArr5[4], jArr6, 8);
        long j4 = jArr4[0] ^ jArr4[1];
        long j10 = jArr5[0] ^ jArr5[1];
        long j11 = jArr4[0] ^ jArr4[2];
        long j12 = jArr5[0] ^ jArr5[2];
        long j13 = jArr4[2] ^ jArr4[4];
        long j14 = jArr5[2] ^ jArr5[4];
        long j15 = jArr4[3] ^ jArr4[4];
        long j16 = jArr5[3] ^ jArr5[4];
        implMulw(jArr3, j11 ^ jArr4[3], j12 ^ jArr5[3], jArr6, 18);
        implMulw(jArr3, j13 ^ jArr4[1], j14 ^ jArr5[1], jArr6, 20);
        long j17 = j4 ^ j15;
        long j18 = j10 ^ j16;
        implMulw(jArr3, j17, j18, jArr6, 22);
        implMulw(jArr3, j17 ^ jArr4[2], j18 ^ jArr5[2], jArr6, 24);
        implMulw(jArr3, j4, j10, jArr6, 10);
        implMulw(jArr3, j11, j12, jArr6, 12);
        implMulw(jArr3, j13, j14, jArr6, 14);
        implMulw(jArr3, j15, j16, jArr6, 16);
        jArr3[0] = jArr6[0];
        jArr3[9] = jArr6[9];
        long j19 = jArr6[0] ^ jArr6[1];
        long j20 = jArr6[2] ^ j19;
        long j21 = jArr6[10] ^ j20;
        jArr3[1] = j21;
        long j22 = jArr6[3] ^ jArr6[4];
        long j23 = j20 ^ (j22 ^ (jArr6[11] ^ jArr6[12]));
        jArr3[2] = j23;
        long j24 = j19 ^ j22;
        long j25 = jArr6[5] ^ jArr6[6];
        long j26 = (j24 ^ j25) ^ jArr6[8];
        long j27 = jArr6[13] ^ jArr6[14];
        jArr3[3] = (j26 ^ j27) ^ ((jArr6[18] ^ jArr6[22]) ^ jArr6[24]);
        long j28 = (jArr6[7] ^ jArr6[8]) ^ jArr6[9];
        long j29 = j28 ^ jArr6[17];
        jArr3[8] = j29;
        long j30 = (j28 ^ j25) ^ (jArr6[15] ^ jArr6[16]);
        jArr3[7] = j30;
        long j31 = j21 ^ j30;
        long j32 = (jArr6[19] ^ jArr6[20]) ^ (jArr6[25] ^ jArr6[24]);
        jArr3[4] = (j32 ^ (jArr6[18] ^ jArr6[23])) ^ j31;
        jArr3[5] = ((j23 ^ j29) ^ j32) ^ (jArr6[21] ^ jArr6[22]);
        jArr3[6] = (((((j26 ^ jArr6[0]) ^ jArr6[9]) ^ j27) ^ jArr6[21]) ^ jArr6[23]) ^ jArr6[25];
        implCompactExt(jArr3);
    }

    protected static void implMulw(long[] jArr, long j4, long j10, long[] jArr2, int i4) {
        jArr[1] = j10;
        jArr[2] = jArr[1] << 1;
        jArr[3] = jArr[2] ^ j10;
        jArr[4] = jArr[2] << 1;
        jArr[5] = jArr[4] ^ j10;
        jArr[6] = jArr[3] << 1;
        jArr[7] = jArr[6] ^ j10;
        long j11 = jArr[((int) j4) & 7];
        long j12 = 0;
        int i10 = 48;
        do {
            int i11 = (int) (j4 >>> i10);
            long j13 = (jArr[(i11 >>> 6) & 7] << 6) ^ (jArr[i11 & 7] ^ (jArr[(i11 >>> 3) & 7] << 3));
            j11 ^= j13 << i10;
            j12 ^= j13 >>> (-i10);
            i10 -= 9;
        } while (i10 > 0);
        jArr2[i4] = M57 & j11;
        jArr2[i4 + 1] = (((((j4 & 72198606942111744L) & ((j10 << 7) >> 63)) >>> 8) ^ j12) << 7) ^ (j11 >>> 57);
    }

    protected static void implSquare(long[] jArr, long[] jArr2) {
        Interleave.expand64To128(jArr, 0, 4, jArr2, 0);
        jArr2[8] = Interleave.expand32to64((int) jArr[4]);
    }

    public static void invert(long[] jArr, long[] jArr2) {
        if (Nat320.isZero64(jArr)) {
            throw new IllegalStateException();
        }
        long[] create64 = Nat320.create64();
        long[] create642 = Nat320.create64();
        square(jArr, create64);
        multiply(create64, jArr, create64);
        squareN(create64, 2, create642);
        multiply(create642, create64, create642);
        squareN(create642, 4, create64);
        multiply(create64, create642, create64);
        squareN(create64, 8, create642);
        multiply(create642, create64, create642);
        square(create642, create642);
        multiply(create642, jArr, create642);
        squareN(create642, 17, create64);
        multiply(create64, create642, create64);
        square(create64, create64);
        multiply(create64, jArr, create64);
        squareN(create64, 35, create642);
        multiply(create642, create64, create642);
        squareN(create642, 70, create64);
        multiply(create64, create642, create64);
        square(create64, create64);
        multiply(create64, jArr, create64);
        squareN(create64, 141, create642);
        multiply(create642, create64, create642);
        square(create642, jArr2);
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat320.createExt64();
        implMultiply(jArr, jArr2, createExt64);
        reduce(createExt64, jArr3);
    }

    public static void multiplyAddToExt(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat320.createExt64();
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
        long j17 = jArr[8];
        long j18 = j13 ^ ((((j17 >>> 27) ^ (j17 >>> 22)) ^ (j17 >>> 20)) ^ (j17 >>> 15));
        long j19 = j4 ^ ((((j14 << 37) ^ (j14 << 42)) ^ (j14 << 44)) ^ (j14 << 49));
        long j20 = (j10 ^ ((((j15 << 37) ^ (j15 << 42)) ^ (j15 << 44)) ^ (j15 << 49))) ^ ((((j14 >>> 27) ^ (j14 >>> 22)) ^ (j14 >>> 20)) ^ (j14 >>> 15));
        long j21 = j18 >>> 27;
        jArr2[0] = (((j19 ^ j21) ^ (j21 << 5)) ^ (j21 << 7)) ^ (j21 << 12);
        jArr2[1] = j20;
        jArr2[2] = (j11 ^ ((((j16 << 37) ^ (j16 << 42)) ^ (j16 << 44)) ^ (j16 << 49))) ^ ((((j15 >>> 27) ^ (j15 >>> 22)) ^ (j15 >>> 20)) ^ (j15 >>> 15));
        jArr2[3] = (j12 ^ ((((j17 << 37) ^ (j17 << 42)) ^ (j17 << 44)) ^ (j17 << 49))) ^ ((((j16 >>> 27) ^ (j16 >>> 22)) ^ (j16 >>> 20)) ^ (j16 >>> 15));
        jArr2[4] = M27 & j18;
    }

    public static void reduce37(long[] jArr, int i4) {
        int i10 = i4 + 4;
        long j4 = jArr[i10];
        long j10 = j4 >>> 27;
        jArr[i4] = ((j10 << 12) ^ (((j10 << 5) ^ j10) ^ (j10 << 7))) ^ jArr[i4];
        jArr[i10] = j4 & M27;
    }

    public static void sqrt(long[] jArr, long[] jArr2) {
        long[] create64 = Nat320.create64();
        long unshuffle = Interleave.unshuffle(jArr[0]);
        long unshuffle2 = Interleave.unshuffle(jArr[1]);
        long j4 = (unshuffle & 4294967295L) | (unshuffle2 << 32);
        create64[0] = (unshuffle >>> 32) | (unshuffle2 & (-4294967296L));
        long unshuffle3 = Interleave.unshuffle(jArr[2]);
        long unshuffle4 = Interleave.unshuffle(jArr[3]);
        create64[1] = (unshuffle3 >>> 32) | ((-4294967296L) & unshuffle4);
        long unshuffle5 = Interleave.unshuffle(jArr[4]);
        create64[2] = unshuffle5 >>> 32;
        multiply(create64, ROOT_Z, jArr2);
        jArr2[0] = jArr2[0] ^ j4;
        jArr2[1] = jArr2[1] ^ ((unshuffle3 & 4294967295L) | (unshuffle4 << 32));
        jArr2[2] = jArr2[2] ^ (4294967295L & unshuffle5);
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] create64 = Nat.create64(9);
        implSquare(jArr, create64);
        reduce(create64, jArr2);
    }

    public static void squareAddToExt(long[] jArr, long[] jArr2) {
        long[] create64 = Nat.create64(9);
        implSquare(jArr, create64);
        addExt(jArr2, create64, jArr2);
    }

    public static void squareN(long[] jArr, int i4, long[] jArr2) {
        long[] create64 = Nat.create64(9);
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
        return ((int) (jArr[0] ^ (jArr[4] >>> 15))) & 1;
    }
}
