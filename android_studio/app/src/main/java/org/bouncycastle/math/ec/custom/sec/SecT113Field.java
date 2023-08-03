package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat128;

/* loaded from: classes5.dex */
public class SecT113Field {
    private static final long M49 = 562949953421311L;
    private static final long M57 = 144115188075855871L;

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr2[1] ^ jArr[1];
    }

    public static void addExt(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    public static void addOne(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
    }

    private static void addTo(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
    }

    public static long[] fromBigInteger(BigInteger bigInteger) {
        return Nat.fromBigInteger64(113, bigInteger);
    }

    public static void halfTrace(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat128.createExt64();
        Nat128.copy64(jArr, jArr2);
        for (int i4 = 1; i4 < 113; i4 += 2) {
            implSquare(jArr2, createExt64);
            reduce(createExt64, jArr2);
            implSquare(jArr2, createExt64);
            reduce(createExt64, jArr2);
            addTo(jArr, jArr2);
        }
    }

    protected static void implMultiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long j4 = jArr[0];
        long j10 = ((jArr[1] << 7) ^ (j4 >>> 57)) & M57;
        long j11 = j4 & M57;
        long j12 = jArr2[0];
        long j13 = ((jArr2[1] << 7) ^ (j12 >>> 57)) & M57;
        long j14 = j12 & M57;
        long[] jArr4 = new long[6];
        implMulw(jArr3, j11, j14, jArr4, 0);
        implMulw(jArr3, j10, j13, jArr4, 2);
        implMulw(jArr3, j11 ^ j10, j14 ^ j13, jArr4, 4);
        long j15 = jArr4[1] ^ jArr4[2];
        long j16 = jArr4[0];
        long j17 = jArr4[3];
        long j18 = (jArr4[4] ^ j16) ^ j15;
        long j19 = j15 ^ (jArr4[5] ^ j17);
        jArr3[0] = j16 ^ (j18 << 57);
        jArr3[1] = (j18 >>> 7) ^ (j19 << 50);
        jArr3[2] = (j19 >>> 14) ^ (j17 << 43);
        jArr3[3] = j17 >>> 21;
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
        Interleave.expand64To128(jArr, 0, 2, jArr2, 0);
    }

    public static void invert(long[] jArr, long[] jArr2) {
        if (Nat128.isZero64(jArr)) {
            throw new IllegalStateException();
        }
        long[] create64 = Nat128.create64();
        long[] create642 = Nat128.create64();
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
        squareN(create642, 28, create64);
        multiply(create64, create642, create64);
        squareN(create64, 56, create642);
        multiply(create642, create64, create642);
        square(create642, jArr2);
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
        long j13 = j11 ^ ((j12 >>> 40) ^ (j12 >>> 49));
        long j14 = j4 ^ ((j13 << 15) ^ (j13 << 24));
        long j15 = (j10 ^ ((j12 << 15) ^ (j12 << 24))) ^ ((j13 >>> 40) ^ (j13 >>> 49));
        long j16 = j15 >>> 49;
        jArr2[0] = (j14 ^ j16) ^ (j16 << 9);
        jArr2[1] = M49 & j15;
    }

    public static void reduce15(long[] jArr, int i4) {
        int i10 = i4 + 1;
        long j4 = jArr[i10];
        long j10 = j4 >>> 49;
        jArr[i4] = (j10 ^ (j10 << 9)) ^ jArr[i4];
        jArr[i10] = j4 & M49;
    }

    public static void sqrt(long[] jArr, long[] jArr2) {
        long unshuffle = Interleave.unshuffle(jArr[0]);
        long unshuffle2 = Interleave.unshuffle(jArr[1]);
        long j4 = (unshuffle >>> 32) | (unshuffle2 & (-4294967296L));
        jArr2[0] = ((j4 << 57) ^ ((4294967295L & unshuffle) | (unshuffle2 << 32))) ^ (j4 << 5);
        jArr2[1] = (j4 >>> 59) ^ (j4 >>> 7);
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat128.createExt64();
        implSquare(jArr, createExt64);
        reduce(createExt64, jArr2);
    }

    public static void squareAddToExt(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat128.createExt64();
        implSquare(jArr, createExt64);
        addExt(jArr2, createExt64, jArr2);
    }

    public static void squareN(long[] jArr, int i4, long[] jArr2) {
        long[] createExt64 = Nat128.createExt64();
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
