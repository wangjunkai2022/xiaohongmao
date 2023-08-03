package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat192;

/* loaded from: classes5.dex */
public class SecT131Field {
    private static final long M03 = 7;
    private static final long M44 = 17592186044415L;
    private static final long[] ROOT_Z = {2791191049453778211L, 2791191049453778402L, 6};

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
        jArr3[4] = jArr2[4] ^ jArr[4];
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
        return Nat.fromBigInteger64(131, bigInteger);
    }

    public static void halfTrace(long[] jArr, long[] jArr2) {
        long[] create64 = Nat.create64(5);
        Nat192.copy64(jArr, jArr2);
        for (int i4 = 1; i4 < 131; i4 += 2) {
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
        jArr[0] = j4 ^ (j10 << 44);
        jArr[1] = (j10 >>> 20) ^ (j11 << 24);
        jArr[2] = ((j11 >>> 40) ^ (j12 << 4)) ^ (j13 << 48);
        jArr[3] = ((j12 >>> 60) ^ (j14 << 28)) ^ (j13 >>> 16);
        jArr[4] = j14 >>> 36;
        jArr[5] = 0;
    }

    protected static void implMultiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = ((jArr[2] << 40) ^ (j10 >>> 24)) & M44;
        long j12 = ((j10 << 20) ^ (j4 >>> 44)) & M44;
        long j13 = j4 & M44;
        long j14 = jArr2[0];
        long j15 = jArr2[1];
        long j16 = ((j15 >>> 24) ^ (jArr2[2] << 40)) & M44;
        long j17 = ((j15 << 20) ^ (j14 >>> 44)) & M44;
        long j18 = j14 & M44;
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
        long j31 = (((j28 ^ j26) ^ (jArr4[3] << 4)) ^ (jArr4[3] << 1)) ^ (j30 >>> 44);
        long j32 = j30 & M44;
        long j33 = (j29 ^ j24) ^ (j31 >>> 44);
        long j34 = j31 & M44;
        long j35 = (j32 >>> 1) ^ ((j34 & 1) << 43);
        long j36 = j35 ^ (j35 << 1);
        long j37 = j36 ^ (j36 << 2);
        long j38 = j37 ^ (j37 << 4);
        long j39 = j38 ^ (j38 << 8);
        long j40 = j39 ^ (j39 << 16);
        long j41 = (j40 ^ (j40 << 32)) & M44;
        long j42 = ((j34 >>> 1) ^ ((j33 & 1) << 43)) ^ (j41 >>> 43);
        long j43 = j42 ^ (j42 << 1);
        long j44 = j43 ^ (j43 << 2);
        long j45 = j44 ^ (j44 << 4);
        long j46 = j45 ^ (j45 << 8);
        long j47 = j46 ^ (j46 << 16);
        long j48 = (j47 ^ (j47 << 32)) & M44;
        long j49 = (j33 >>> 1) ^ (j48 >>> 43);
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
        int i10 = (int) j4;
        long j11 = (((jArr[i10 & 7] ^ (jArr[(i10 >>> 3) & 7] << 3)) ^ (jArr[(i10 >>> 6) & 7] << 6)) ^ (jArr[(i10 >>> 9) & 7] << 9)) ^ (jArr[(i10 >>> 12) & 7] << 12);
        long j12 = 0;
        int i11 = 30;
        do {
            int i12 = (int) (j4 >>> i11);
            long j13 = (jArr[(i12 >>> 12) & 7] << 12) ^ (((jArr[i12 & 7] ^ (jArr[(i12 >>> 3) & 7] << 3)) ^ (jArr[(i12 >>> 6) & 7] << 6)) ^ (jArr[(i12 >>> 9) & 7] << 9));
            j11 ^= j13 << i11;
            j12 ^= j13 >>> (-i11);
            i11 -= 15;
        } while (i11 > 0);
        jArr2[i4] = M44 & j11;
        jArr2[i4 + 1] = (j11 >>> 44) ^ (j12 << 20);
    }

    protected static void implSquare(long[] jArr, long[] jArr2) {
        Interleave.expand64To128(jArr, 0, 2, jArr2, 0);
        jArr2[4] = Interleave.expand8to16((int) jArr[2]) & 4294967295L;
    }

    public static void invert(long[] jArr, long[] jArr2) {
        if (Nat192.isZero64(jArr)) {
            throw new IllegalStateException();
        }
        long[] create64 = Nat192.create64();
        long[] create642 = Nat192.create64();
        square(jArr, create64);
        multiply(create64, jArr, create64);
        squareN(create64, 2, create642);
        multiply(create642, create64, create642);
        squareN(create642, 4, create64);
        multiply(create64, create642, create64);
        squareN(create64, 8, create642);
        multiply(create642, create64, create642);
        squareN(create642, 16, create64);
        multiply(create64, create642, create64);
        squareN(create64, 32, create642);
        multiply(create642, create64, create642);
        square(create642, create642);
        multiply(create642, jArr, create642);
        squareN(create642, 65, create64);
        multiply(create64, create642, create64);
        square(create64, jArr2);
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
        long j14 = j12 ^ (j13 >>> 59);
        long j15 = j4 ^ ((j14 << 61) ^ (j14 << 63));
        long j16 = (j10 ^ ((j13 << 61) ^ (j13 << 63))) ^ ((((j14 >>> 3) ^ (j14 >>> 1)) ^ j14) ^ (j14 << 5));
        long j17 = (j11 ^ ((((j13 >>> 3) ^ (j13 >>> 1)) ^ j13) ^ (j13 << 5))) ^ (j14 >>> 59);
        long j18 = j17 >>> 3;
        jArr2[0] = (((j15 ^ j18) ^ (j18 << 2)) ^ (j18 << 3)) ^ (j18 << 8);
        jArr2[1] = (j18 >>> 56) ^ j16;
        jArr2[2] = 7 & j17;
    }

    public static void reduce61(long[] jArr, int i4) {
        int i10 = i4 + 2;
        long j4 = jArr[i10];
        long j10 = j4 >>> 3;
        jArr[i4] = jArr[i4] ^ ((((j10 << 2) ^ j10) ^ (j10 << 3)) ^ (j10 << 8));
        int i11 = i4 + 1;
        jArr[i11] = (j10 >>> 56) ^ jArr[i11];
        jArr[i10] = j4 & 7;
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
        long[] create64 = Nat.create64(5);
        implSquare(jArr, create64);
        reduce(create64, jArr2);
    }

    public static void squareAddToExt(long[] jArr, long[] jArr2) {
        long[] create64 = Nat.create64(5);
        implSquare(jArr, create64);
        addExt(jArr2, create64, jArr2);
    }

    public static void squareN(long[] jArr, int i4, long[] jArr2) {
        long[] create64 = Nat.create64(5);
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
        return ((int) ((jArr[0] ^ (jArr[1] >>> 59)) ^ (jArr[2] >>> 1))) & 1;
    }
}
