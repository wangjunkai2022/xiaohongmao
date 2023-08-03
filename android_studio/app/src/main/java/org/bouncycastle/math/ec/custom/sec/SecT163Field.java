package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat192;

/* loaded from: classes5.dex */
public class SecT163Field {
    private static final long M35 = 34359738367L;
    private static final long M55 = 36028797018963967L;
    private static final long[] ROOT_Z = {-5270498306774157648L, 5270498306774195053L, 19634136210L};

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr2[2] ^ jArr[2];
    }

    public static void addExt(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr2[5] ^ jArr[5];
    }

    public static void addOne(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
    }

    private static void addTo(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
        jArr2[2] = jArr2[2] ^ jArr[2];
    }

    public static long[] fromBigInteger(BigInteger bigInteger) {
        return Nat.fromBigInteger64(163, bigInteger);
    }

    public static void halfTrace(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat192.createExt64();
        Nat192.copy64(jArr, jArr2);
        for (int i4 = 1; i4 < 163; i4 += 2) {
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
        jArr[0] = j4 ^ (j10 << 55);
        jArr[1] = (j10 >>> 9) ^ (j11 << 46);
        jArr[2] = (j11 >>> 18) ^ (j12 << 37);
        jArr[3] = (j12 >>> 27) ^ (j13 << 28);
        jArr[4] = (j13 >>> 36) ^ (j14 << 19);
        jArr[5] = j14 >>> 45;
    }

    protected static void implMultiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = (j10 >>> 46) ^ (jArr[2] << 18);
        long j12 = ((j10 << 9) ^ (j4 >>> 55)) & M55;
        long j13 = j4 & M55;
        long j14 = jArr2[0];
        long j15 = jArr2[1];
        long j16 = (j15 >>> 46) ^ (jArr2[2] << 18);
        long j17 = ((j15 << 9) ^ (j14 >>> 55)) & M55;
        long j18 = j14 & M55;
        long[] jArr4 = new long[10];
        implMulw(jArr3, j13, j18, jArr4, 0);
        implMulw(jArr3, j11, j16, jArr4, 2);
        long j19 = (j13 ^ j12) ^ j11;
        long j20 = (j18 ^ j17) ^ j16;
        implMulw(jArr3, j19, j20, jArr4, 4);
        long j21 = (j12 << 1) ^ (j11 << 2);
        long j22 = (j17 << 1) ^ (j16 << 2);
        implMulw(jArr3, j13 ^ j21, j18 ^ j22, jArr4, 6);
        implMulw(jArr3, j19 ^ j21, j20 ^ j22, jArr4, 8);
        long j23 = jArr4[6] ^ jArr4[8];
        long j24 = jArr4[7] ^ jArr4[9];
        long j25 = (j23 << 1) ^ jArr4[6];
        long j26 = (j23 ^ (j24 << 1)) ^ jArr4[7];
        long j27 = jArr4[0];
        long j28 = (jArr4[1] ^ jArr4[0]) ^ jArr4[4];
        long j29 = jArr4[1] ^ jArr4[5];
        long j30 = ((j27 ^ j25) ^ (jArr4[2] << 4)) ^ (jArr4[2] << 1);
        long j31 = (((j28 ^ j26) ^ (jArr4[3] << 4)) ^ (jArr4[3] << 1)) ^ (j30 >>> 55);
        long j32 = j30 & M55;
        long j33 = (j29 ^ j24) ^ (j31 >>> 55);
        long j34 = j31 & M55;
        long j35 = (j32 >>> 1) ^ ((j34 & 1) << 54);
        long j36 = j35 ^ (j35 << 1);
        long j37 = j36 ^ (j36 << 2);
        long j38 = j37 ^ (j37 << 4);
        long j39 = j38 ^ (j38 << 8);
        long j40 = j39 ^ (j39 << 16);
        long j41 = (j40 ^ (j40 << 32)) & M55;
        long j42 = ((j34 >>> 1) ^ ((j33 & 1) << 54)) ^ (j41 >>> 54);
        long j43 = j42 ^ (j42 << 1);
        long j44 = j43 ^ (j43 << 2);
        long j45 = j44 ^ (j44 << 4);
        long j46 = j45 ^ (j45 << 8);
        long j47 = j46 ^ (j46 << 16);
        long j48 = (j47 ^ (j47 << 32)) & M55;
        long j49 = (j33 >>> 1) ^ (j48 >>> 54);
        long j50 = j49 ^ (j49 << 1);
        long j51 = j50 ^ (j50 << 2);
        long j52 = j51 ^ (j51 << 4);
        long j53 = j52 ^ (j52 << 8);
        long j54 = j53 ^ (j53 << 16);
        long j55 = j54 ^ (j54 << 32);
        jArr3[0] = j27;
        jArr3[1] = (j28 ^ j41) ^ jArr4[2];
        jArr3[2] = ((j29 ^ j48) ^ j41) ^ jArr4[3];
        jArr3[3] = j48 ^ j55;
        jArr3[4] = jArr4[2] ^ j55;
        jArr3[5] = jArr4[3];
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
        long j11 = jArr[((int) j4) & 3];
        long j12 = 0;
        int i10 = 47;
        do {
            int i11 = (int) (j4 >>> i10);
            long j13 = (jArr[(i11 >>> 6) & 7] << 6) ^ (jArr[i11 & 7] ^ (jArr[(i11 >>> 3) & 7] << 3));
            j11 ^= j13 << i10;
            j12 ^= j13 >>> (-i10);
            i10 -= 9;
        } while (i10 > 0);
        jArr2[i4] = M55 & j11;
        jArr2[i4 + 1] = (j11 >>> 55) ^ (j12 << 9);
    }

    protected static void implSquare(long[] jArr, long[] jArr2) {
        Interleave.expand64To128(jArr, 0, 3, jArr2, 0);
    }

    public static void invert(long[] jArr, long[] jArr2) {
        if (Nat192.isZero64(jArr)) {
            throw new IllegalStateException();
        }
        long[] create64 = Nat192.create64();
        long[] create642 = Nat192.create64();
        square(jArr, create64);
        squareN(create64, 1, create642);
        multiply(create64, create642, create64);
        squareN(create642, 1, create642);
        multiply(create64, create642, create64);
        squareN(create64, 3, create642);
        multiply(create64, create642, create64);
        squareN(create642, 3, create642);
        multiply(create64, create642, create64);
        squareN(create64, 9, create642);
        multiply(create64, create642, create64);
        squareN(create642, 9, create642);
        multiply(create64, create642, create64);
        squareN(create64, 27, create642);
        multiply(create64, create642, create64);
        squareN(create642, 27, create642);
        multiply(create64, create642, create64);
        squareN(create64, 81, create642);
        multiply(create64, create642, jArr2);
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[8];
        implMultiply(jArr, jArr2, jArr4);
        reduce(jArr4, jArr3);
    }

    public static void multiplyAddToExt(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[8];
        implMultiply(jArr, jArr2, jArr4);
        addExt(jArr3, jArr4, jArr3);
    }

    public static void reduce(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr[2];
        long j12 = jArr[3];
        long j13 = jArr[4];
        long j14 = jArr[5];
        long j15 = j12 ^ ((((j14 >>> 35) ^ (j14 >>> 32)) ^ (j14 >>> 29)) ^ (j14 >>> 28));
        long j16 = j10 ^ ((((j13 << 29) ^ (j13 << 32)) ^ (j13 << 35)) ^ (j13 << 36));
        long j17 = (j11 ^ ((((j14 << 29) ^ (j14 << 32)) ^ (j14 << 35)) ^ (j14 << 36))) ^ ((j13 >>> 28) ^ (((j13 >>> 35) ^ (j13 >>> 32)) ^ (j13 >>> 29)));
        long j18 = j4 ^ ((((j15 << 29) ^ (j15 << 32)) ^ (j15 << 35)) ^ (j15 << 36));
        long j19 = j16 ^ ((j15 >>> 28) ^ (((j15 >>> 35) ^ (j15 >>> 32)) ^ (j15 >>> 29)));
        long j20 = j17 >>> 35;
        jArr2[0] = (((j18 ^ j20) ^ (j20 << 3)) ^ (j20 << 6)) ^ (j20 << 7);
        jArr2[1] = j19;
        jArr2[2] = M35 & j17;
    }

    public static void reduce29(long[] jArr, int i4) {
        int i10 = i4 + 2;
        long j4 = jArr[i10];
        long j10 = j4 >>> 35;
        jArr[i4] = ((j10 << 7) ^ (((j10 << 3) ^ j10) ^ (j10 << 6))) ^ jArr[i4];
        jArr[i10] = j4 & M35;
    }

    public static void sqrt(long[] jArr, long[] jArr2) {
        long[] create64 = Nat192.create64();
        long unshuffle = Interleave.unshuffle(jArr[0]);
        long unshuffle2 = Interleave.unshuffle(jArr[1]);
        create64[0] = (unshuffle >>> 32) | (unshuffle2 & (-4294967296L));
        long unshuffle3 = Interleave.unshuffle(jArr[2]);
        long j4 = unshuffle3 & 4294967295L;
        create64[1] = unshuffle3 >>> 32;
        multiply(create64, ROOT_Z, jArr2);
        jArr2[0] = jArr2[0] ^ ((unshuffle & 4294967295L) | (unshuffle2 << 32));
        jArr2[1] = jArr2[1] ^ j4;
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat192.createExt64();
        implSquare(jArr, createExt64);
        reduce(createExt64, jArr2);
    }

    public static void squareAddToExt(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat192.createExt64();
        implSquare(jArr, createExt64);
        addExt(jArr2, createExt64, jArr2);
    }

    public static void squareN(long[] jArr, int i4, long[] jArr2) {
        long[] createExt64 = Nat192.createExt64();
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
        return ((int) (jArr[0] ^ (jArr[2] >>> 29))) & 1;
    }
}
