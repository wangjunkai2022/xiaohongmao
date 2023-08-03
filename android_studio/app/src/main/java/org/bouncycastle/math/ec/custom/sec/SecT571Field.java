package org.bouncycastle.math.ec.custom.sec;

import com.facebook.imagepipeline.common.e;
import java.math.BigInteger;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat576;

/* loaded from: classes5.dex */
public class SecT571Field {
    private static final long M59 = 576460752303423487L;
    private static final long[] ROOT_Z = {3161836309350906777L, -7642453882179322845L, -3821226941089661423L, 7312758566309945096L, -556661012383879292L, 8945041530681231562L, -4750851271514160027L, 6847946401097695794L, 541669439031730457L};

    private static void add(long[] jArr, int i4, long[] jArr2, int i10, long[] jArr3, int i11) {
        for (int i12 = 0; i12 < 9; i12++) {
            jArr3[i11 + i12] = jArr[i4 + i12] ^ jArr2[i10 + i12];
        }
    }

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i4 = 0; i4 < 9; i4++) {
            jArr3[i4] = jArr[i4] ^ jArr2[i4];
        }
    }

    private static void addBothTo(long[] jArr, int i4, long[] jArr2, int i10, long[] jArr3, int i11) {
        for (int i12 = 0; i12 < 9; i12++) {
            int i13 = i11 + i12;
            jArr3[i13] = jArr3[i13] ^ (jArr[i4 + i12] ^ jArr2[i10 + i12]);
        }
    }

    public static void addBothTo(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i4 = 0; i4 < 9; i4++) {
            jArr3[i4] = jArr3[i4] ^ (jArr[i4] ^ jArr2[i4]);
        }
    }

    public static void addExt(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i4 = 0; i4 < 18; i4++) {
            jArr3[i4] = jArr[i4] ^ jArr2[i4];
        }
    }

    public static void addOne(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        for (int i4 = 1; i4 < 9; i4++) {
            jArr2[i4] = jArr[i4];
        }
    }

    private static void addTo(long[] jArr, long[] jArr2) {
        for (int i4 = 0; i4 < 9; i4++) {
            jArr2[i4] = jArr2[i4] ^ jArr[i4];
        }
    }

    public static long[] fromBigInteger(BigInteger bigInteger) {
        return Nat.fromBigInteger64(571, bigInteger);
    }

    public static void halfTrace(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat576.createExt64();
        Nat576.copy64(jArr, jArr2);
        for (int i4 = 1; i4 < 571; i4 += 2) {
            implSquare(jArr2, createExt64);
            reduce(createExt64, jArr2);
            implSquare(jArr2, createExt64);
            reduce(createExt64, jArr2);
            addTo(jArr, jArr2);
        }
    }

    protected static void implMultiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[16];
        for (int i4 = 0; i4 < 9; i4++) {
            implMulwAcc(jArr4, jArr[i4], jArr2[i4], jArr3, i4 << 1);
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
        long j22 = j20 ^ jArr3[13];
        long j23 = j21 ^ jArr3[14];
        jArr3[7] = j23 ^ j22;
        long j24 = j22 ^ jArr3[15];
        long j25 = j23 ^ jArr3[16];
        jArr3[8] = j25 ^ j24;
        long j26 = j25 ^ (j24 ^ jArr3[17]);
        jArr3[9] = jArr3[0] ^ j26;
        jArr3[10] = jArr3[1] ^ j26;
        jArr3[11] = jArr3[2] ^ j26;
        jArr3[12] = jArr3[3] ^ j26;
        jArr3[13] = jArr3[4] ^ j26;
        jArr3[14] = jArr3[5] ^ j26;
        jArr3[15] = jArr3[6] ^ j26;
        jArr3[16] = jArr3[7] ^ j26;
        jArr3[17] = jArr3[8] ^ j26;
        implMulwAcc(jArr4, jArr[0] ^ jArr[1], jArr2[0] ^ jArr2[1], jArr3, 1);
        implMulwAcc(jArr4, jArr[0] ^ jArr[2], jArr2[0] ^ jArr2[2], jArr3, 2);
        implMulwAcc(jArr4, jArr[0] ^ jArr[3], jArr2[0] ^ jArr2[3], jArr3, 3);
        implMulwAcc(jArr4, jArr[1] ^ jArr[2], jArr2[1] ^ jArr2[2], jArr3, 3);
        implMulwAcc(jArr4, jArr[0] ^ jArr[4], jArr2[0] ^ jArr2[4], jArr3, 4);
        implMulwAcc(jArr4, jArr[1] ^ jArr[3], jArr2[1] ^ jArr2[3], jArr3, 4);
        implMulwAcc(jArr4, jArr[0] ^ jArr[5], jArr2[0] ^ jArr2[5], jArr3, 5);
        implMulwAcc(jArr4, jArr[1] ^ jArr[4], jArr2[1] ^ jArr2[4], jArr3, 5);
        implMulwAcc(jArr4, jArr[2] ^ jArr[3], jArr2[2] ^ jArr2[3], jArr3, 5);
        implMulwAcc(jArr4, jArr[0] ^ jArr[6], jArr2[0] ^ jArr2[6], jArr3, 6);
        implMulwAcc(jArr4, jArr[1] ^ jArr[5], jArr2[1] ^ jArr2[5], jArr3, 6);
        implMulwAcc(jArr4, jArr[2] ^ jArr[4], jArr2[2] ^ jArr2[4], jArr3, 6);
        implMulwAcc(jArr4, jArr[0] ^ jArr[7], jArr2[0] ^ jArr2[7], jArr3, 7);
        implMulwAcc(jArr4, jArr[1] ^ jArr[6], jArr2[1] ^ jArr2[6], jArr3, 7);
        implMulwAcc(jArr4, jArr[2] ^ jArr[5], jArr2[2] ^ jArr2[5], jArr3, 7);
        implMulwAcc(jArr4, jArr[3] ^ jArr[4], jArr2[3] ^ jArr2[4], jArr3, 7);
        implMulwAcc(jArr4, jArr[0] ^ jArr[8], jArr2[0] ^ jArr2[8], jArr3, 8);
        implMulwAcc(jArr4, jArr[1] ^ jArr[7], jArr2[1] ^ jArr2[7], jArr3, 8);
        implMulwAcc(jArr4, jArr[2] ^ jArr[6], jArr2[2] ^ jArr2[6], jArr3, 8);
        implMulwAcc(jArr4, jArr[3] ^ jArr[5], jArr2[3] ^ jArr2[5], jArr3, 8);
        implMulwAcc(jArr4, jArr[1] ^ jArr[8], jArr2[1] ^ jArr2[8], jArr3, 9);
        implMulwAcc(jArr4, jArr[2] ^ jArr[7], jArr2[2] ^ jArr2[7], jArr3, 9);
        implMulwAcc(jArr4, jArr[3] ^ jArr[6], jArr2[3] ^ jArr2[6], jArr3, 9);
        implMulwAcc(jArr4, jArr[4] ^ jArr[5], jArr2[4] ^ jArr2[5], jArr3, 9);
        implMulwAcc(jArr4, jArr[2] ^ jArr[8], jArr2[2] ^ jArr2[8], jArr3, 10);
        implMulwAcc(jArr4, jArr[3] ^ jArr[7], jArr2[3] ^ jArr2[7], jArr3, 10);
        implMulwAcc(jArr4, jArr[4] ^ jArr[6], jArr2[4] ^ jArr2[6], jArr3, 10);
        implMulwAcc(jArr4, jArr[3] ^ jArr[8], jArr2[3] ^ jArr2[8], jArr3, 11);
        implMulwAcc(jArr4, jArr[4] ^ jArr[7], jArr2[4] ^ jArr2[7], jArr3, 11);
        implMulwAcc(jArr4, jArr[5] ^ jArr[6], jArr2[5] ^ jArr2[6], jArr3, 11);
        implMulwAcc(jArr4, jArr[4] ^ jArr[8], jArr2[4] ^ jArr2[8], jArr3, 12);
        implMulwAcc(jArr4, jArr[5] ^ jArr[7], jArr2[5] ^ jArr2[7], jArr3, 12);
        implMulwAcc(jArr4, jArr[5] ^ jArr[8], jArr2[5] ^ jArr2[8], jArr3, 13);
        implMulwAcc(jArr4, jArr[6] ^ jArr[7], jArr2[6] ^ jArr2[7], jArr3, 13);
        implMulwAcc(jArr4, jArr[6] ^ jArr[8], jArr2[6] ^ jArr2[8], jArr3, 14);
        implMulwAcc(jArr4, jArr[7] ^ jArr[8], jArr2[7] ^ jArr2[8], jArr3, 15);
    }

    protected static void implMultiplyPrecomp(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i4 = 56; i4 >= 0; i4 -= 8) {
            for (int i10 = 1; i10 < 9; i10 += 2) {
                int i11 = (int) (jArr[i10] >>> i4);
                addBothTo(jArr2, (i11 & 15) * 9, jArr2, (((i11 >>> 4) & 15) + 16) * 9, jArr3, i10 - 1);
            }
            Nat.shiftUpBits64(16, jArr3, 0, 8, 0L);
        }
        for (int i12 = 56; i12 >= 0; i12 -= 8) {
            for (int i13 = 0; i13 < 9; i13 += 2) {
                int i14 = (int) (jArr[i13] >>> i12);
                addBothTo(jArr2, (i14 & 15) * 9, jArr2, (((i14 >>> 4) & 15) + 16) * 9, jArr3, i13);
            }
            if (i12 > 0) {
                Nat.shiftUpBits64(18, jArr3, 0, 8, 0L);
            }
        }
    }

    protected static void implMulwAcc(long[] jArr, long j4, long j10, long[] jArr2, int i4) {
        long j11 = j4;
        jArr[1] = j10;
        for (int i10 = 2; i10 < 16; i10 += 2) {
            jArr[i10] = jArr[i10 >>> 1] << 1;
            jArr[i10 + 1] = jArr[i10] ^ j10;
        }
        int i11 = (int) j11;
        long j12 = 0;
        long j13 = jArr[i11 & 15] ^ (jArr[(i11 >>> 4) & 15] << 4);
        int i12 = 56;
        do {
            int i13 = (int) (j11 >>> i12);
            long j14 = (jArr[(i13 >>> 4) & 15] << 4) ^ jArr[i13 & 15];
            j13 ^= j14 << i12;
            j12 ^= j14 >>> (-i12);
            i12 -= 8;
        } while (i12 > 0);
        for (int i14 = 0; i14 < 7; i14++) {
            j11 = (j11 & (-72340172838076674L)) >>> 1;
            j12 ^= ((j10 << i14) >> 63) & j11;
        }
        jArr2[i4] = jArr2[i4] ^ j13;
        int i15 = i4 + 1;
        jArr2[i15] = jArr2[i15] ^ j12;
    }

    protected static void implSquare(long[] jArr, long[] jArr2) {
        Interleave.expand64To128(jArr, 0, 9, jArr2, 0);
    }

    public static void invert(long[] jArr, long[] jArr2) {
        if (Nat576.isZero64(jArr)) {
            throw new IllegalStateException();
        }
        long[] create64 = Nat576.create64();
        long[] create642 = Nat576.create64();
        long[] create643 = Nat576.create64();
        square(jArr, create643);
        square(create643, create64);
        square(create64, create642);
        multiply(create64, create642, create64);
        squareN(create64, 2, create642);
        multiply(create64, create642, create64);
        multiply(create64, create643, create64);
        squareN(create64, 5, create642);
        multiply(create64, create642, create64);
        squareN(create642, 5, create642);
        multiply(create64, create642, create64);
        squareN(create64, 15, create642);
        multiply(create64, create642, create643);
        squareN(create643, 30, create64);
        squareN(create64, 30, create642);
        multiply(create64, create642, create64);
        squareN(create64, 60, create642);
        multiply(create64, create642, create64);
        squareN(create642, 60, create642);
        multiply(create64, create642, create64);
        squareN(create64, e.f12205e, create642);
        multiply(create64, create642, create64);
        squareN(create642, e.f12205e, create642);
        multiply(create64, create642, create64);
        multiply(create64, create643, jArr2);
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat576.createExt64();
        implMultiply(jArr, jArr2, createExt64);
        reduce(createExt64, jArr3);
    }

    public static void multiplyAddToExt(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat576.createExt64();
        implMultiply(jArr, jArr2, createExt64);
        addExt(jArr3, createExt64, jArr3);
    }

    public static void multiplyPrecomp(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat576.createExt64();
        implMultiplyPrecomp(jArr, jArr2, createExt64);
        reduce(createExt64, jArr3);
    }

    public static void multiplyPrecompAddToExt(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] createExt64 = Nat576.createExt64();
        implMultiplyPrecomp(jArr, jArr2, createExt64);
        addExt(jArr3, createExt64, jArr3);
    }

    public static long[] precompMultiplicand(long[] jArr) {
        long[] jArr2 = new long[288];
        int i4 = 0;
        System.arraycopy(jArr, 0, jArr2, 9, 9);
        int i10 = 7;
        while (i10 > 0) {
            int i11 = i4 + 18;
            Nat.shiftUpBit64(9, jArr2, i11 >>> 1, 0L, jArr2, i11);
            reduce5(jArr2, i11);
            add(jArr2, 9, jArr2, i11, jArr2, i11 + 9);
            i10--;
            i4 = i11;
        }
        Nat.shiftUpBits64(144, jArr2, 0, 4, 0L, jArr2, 144);
        return jArr2;
    }

    public static void reduce(long[] jArr, long[] jArr2) {
        long j4 = jArr[9];
        long j10 = jArr[17];
        long j11 = (((j4 ^ (j10 >>> 59)) ^ (j10 >>> 57)) ^ (j10 >>> 54)) ^ (j10 >>> 49);
        long j12 = (j10 << 15) ^ (((jArr[8] ^ (j10 << 5)) ^ (j10 << 7)) ^ (j10 << 10));
        for (int i4 = 16; i4 >= 10; i4--) {
            long j13 = jArr[i4];
            jArr2[i4 - 8] = (((j12 ^ (j13 >>> 59)) ^ (j13 >>> 57)) ^ (j13 >>> 54)) ^ (j13 >>> 49);
            j12 = (((jArr[i4 - 9] ^ (j13 << 5)) ^ (j13 << 7)) ^ (j13 << 10)) ^ (j13 << 15);
        }
        jArr2[1] = (((j12 ^ (j11 >>> 59)) ^ (j11 >>> 57)) ^ (j11 >>> 54)) ^ (j11 >>> 49);
        long j14 = (j11 << 15) ^ (((jArr[0] ^ (j11 << 5)) ^ (j11 << 7)) ^ (j11 << 10));
        long j15 = jArr2[8];
        long j16 = j15 >>> 59;
        jArr2[0] = (((j14 ^ j16) ^ (j16 << 2)) ^ (j16 << 5)) ^ (j16 << 10);
        jArr2[8] = M59 & j15;
    }

    public static void reduce5(long[] jArr, int i4) {
        int i10 = i4 + 8;
        long j4 = jArr[i10];
        long j10 = j4 >>> 59;
        jArr[i4] = ((j10 << 10) ^ (((j10 << 2) ^ j10) ^ (j10 << 5))) ^ jArr[i4];
        jArr[i10] = j4 & M59;
    }

    public static void sqrt(long[] jArr, long[] jArr2) {
        long[] create64 = Nat576.create64();
        long[] create642 = Nat576.create64();
        int i4 = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = i4 + 1;
            long unshuffle = Interleave.unshuffle(jArr[i4]);
            i4 = i11 + 1;
            long unshuffle2 = Interleave.unshuffle(jArr[i11]);
            create64[i10] = (4294967295L & unshuffle) | (unshuffle2 << 32);
            create642[i10] = (unshuffle >>> 32) | ((-4294967296L) & unshuffle2);
        }
        long unshuffle3 = Interleave.unshuffle(jArr[i4]);
        create64[4] = 4294967295L & unshuffle3;
        create642[4] = unshuffle3 >>> 32;
        multiply(create642, ROOT_Z, jArr2);
        add(jArr2, create64, jArr2);
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat576.createExt64();
        implSquare(jArr, createExt64);
        reduce(createExt64, jArr2);
    }

    public static void squareAddToExt(long[] jArr, long[] jArr2) {
        long[] createExt64 = Nat576.createExt64();
        implSquare(jArr, createExt64);
        addExt(jArr2, createExt64, jArr2);
    }

    public static void squareN(long[] jArr, int i4, long[] jArr2) {
        long[] createExt64 = Nat576.createExt64();
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
        return ((int) ((jArr[0] ^ (jArr[8] >>> 49)) ^ (jArr[8] >>> 57))) & 1;
    }
}
