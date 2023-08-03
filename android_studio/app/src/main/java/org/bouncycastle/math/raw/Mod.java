package org.bouncycastle.math.raw;

import java.util.Random;
import org.bouncycastle.util.Integers;

/* loaded from: classes5.dex */
public abstract class Mod {
    private static final int M30 = 1073741823;
    private static final long M32L = 4294967295L;

    private static int add30(int i4, int[] iArr, int[] iArr2) {
        int i10 = i4 - 1;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = i11 + iArr[i12] + iArr2[i12];
            iArr[i12] = 1073741823 & i13;
            i11 = i13 >> 30;
        }
        int i14 = i11 + iArr[i10] + iArr2[i10];
        iArr[i10] = i14;
        return i14 >> 30;
    }

    public static void checkedModOddInverse(int[] iArr, int[] iArr2, int[] iArr3) {
        if (modOddInverse(iArr, iArr2, iArr3) == 0) {
            throw new ArithmeticException("Inverse does not exist.");
        }
    }

    public static void checkedModOddInverseVar(int[] iArr, int[] iArr2, int[] iArr3) {
        if (!modOddInverseVar(iArr, iArr2, iArr3)) {
            throw new ArithmeticException("Inverse does not exist.");
        }
    }

    private static void cnegate30(int i4, int i10, int[] iArr) {
        int i11 = i4 - 1;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 + ((iArr[i13] ^ i10) - i10);
            iArr[i13] = 1073741823 & i14;
            i12 = i14 >> 30;
        }
        iArr[i11] = i12 + ((iArr[i11] ^ i10) - i10);
    }

    private static void cnormalize30(int i4, int i10, int[] iArr, int[] iArr2) {
        int i11 = i4 - 1;
        int i12 = iArr[i11] >> 31;
        int i13 = 0;
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = i13 + (((iArr[i14] + (iArr2[i14] & i12)) ^ i10) - i10);
            iArr[i14] = 1073741823 & i15;
            i13 = i15 >> 30;
        }
        iArr[i11] = i13 + (((iArr[i11] + (i12 & iArr2[i11])) ^ i10) - i10);
        int i16 = iArr[i11] >> 31;
        int i17 = 0;
        for (int i18 = 0; i18 < i11; i18++) {
            int i19 = i17 + iArr[i18] + (iArr2[i18] & i16);
            iArr[i18] = i19 & 1073741823;
            i17 = i19 >> 30;
        }
        iArr[i11] = i17 + iArr[i11] + (i16 & iArr2[i11]);
    }

    private static void decode30(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = 0;
        long j4 = 0;
        while (i4 > 0) {
            while (i12 < Math.min(32, i4)) {
                j4 |= iArr[i10] << i12;
                i12 += 30;
                i10++;
            }
            iArr2[i11] = (int) j4;
            j4 >>>= 32;
            i12 -= 32;
            i4 -= 32;
            i11++;
        }
    }

    private static int divsteps30(int i4, int i10, int i11, int[] iArr) {
        int i12 = 1;
        int i13 = 0;
        int i14 = 0;
        int i15 = 1;
        for (int i16 = 0; i16 < 30; i16++) {
            int i17 = i4 >> 31;
            int i18 = -(i11 & 1);
            int i19 = i11 + (((i10 ^ i17) - i17) & i18);
            i14 += ((i12 ^ i17) - i17) & i18;
            i15 += ((i13 ^ i17) - i17) & i18;
            int i20 = i17 & i18;
            i4 = (i4 ^ i20) - (i20 + 1);
            i10 += i19 & i20;
            i11 = i19 >> 1;
            i12 = (i12 + (i14 & i20)) << 1;
            i13 = (i13 + (i20 & i15)) << 1;
        }
        iArr[0] = i12;
        iArr[1] = i13;
        iArr[2] = i14;
        iArr[3] = i15;
        return i4;
    }

    private static int divsteps30Var(int i4, int i10, int i11, int[] iArr) {
        int i12;
        int i13 = i4;
        int i14 = i10;
        int i15 = i11;
        int i16 = 30;
        int i17 = 1;
        int i18 = 0;
        int i19 = 0;
        int i20 = 1;
        while (true) {
            int numberOfTrailingZeros = Integers.numberOfTrailingZeros(((-1) << i16) | i15);
            int i21 = i15 >> numberOfTrailingZeros;
            i17 <<= numberOfTrailingZeros;
            i18 <<= numberOfTrailingZeros;
            i13 -= numberOfTrailingZeros;
            i16 -= numberOfTrailingZeros;
            if (i16 <= 0) {
                iArr[0] = i17;
                iArr[1] = i18;
                iArr[2] = i19;
                iArr[3] = i20;
                return i13;
            }
            if (i13 < 0) {
                i13 = -i13;
                int i22 = -i14;
                int i23 = -i17;
                int i24 = -i18;
                int i25 = i13 + 1;
                if (i25 > i16) {
                    i25 = i16;
                }
                i12 = ((-1) >>> (32 - i25)) & 63 & (i21 * i22 * ((i21 * i21) - 2));
                i21 = i22;
                i14 = i21;
                int i26 = i19;
                i19 = i23;
                i17 = i26;
                int i27 = i20;
                i20 = i24;
                i18 = i27;
            } else {
                int i28 = i13 + 1;
                if (i28 > i16) {
                    i28 = i16;
                }
                i12 = ((-1) >>> (32 - i28)) & 15 & ((-((((i14 + 1) & 4) << 1) + i14)) * i21);
            }
            i15 = i21 + (i14 * i12);
            i19 += i17 * i12;
            i20 += i12 * i18;
        }
    }

    private static void encode30(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = 0;
        long j4 = 0;
        while (i4 > 0) {
            if (i12 < Math.min(30, i4)) {
                j4 |= (iArr[i10] & M32L) << i12;
                i12 += 32;
                i10++;
            }
            iArr2[i11] = ((int) j4) & 1073741823;
            j4 >>>= 30;
            i12 -= 30;
            i4 -= 30;
            i11++;
        }
    }

    private static int getMaximumDivsteps(int i4) {
        return ((i4 * 49) + (i4 < 46 ? 80 : 47)) / 17;
    }

    public static int inverse32(int i4) {
        int i10 = (2 - (i4 * i4)) * i4;
        int i11 = i10 * (2 - (i4 * i10));
        int i12 = i11 * (2 - (i4 * i11));
        return i12 * (2 - (i4 * i12));
    }

    public static int modOddInverse(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int numberOfLeadingZeros = (length << 5) - Integers.numberOfLeadingZeros(iArr[length - 1]);
        int i4 = (numberOfLeadingZeros + 29) / 30;
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[i4];
        int[] iArr6 = new int[i4];
        int[] iArr7 = new int[i4];
        int[] iArr8 = new int[i4];
        int[] iArr9 = new int[i4];
        char c10 = 0;
        iArr6[0] = 1;
        encode30(numberOfLeadingZeros, iArr2, 0, iArr8, 0);
        encode30(numberOfLeadingZeros, iArr, 0, iArr9, 0);
        System.arraycopy(iArr9, 0, iArr7, 0, i4);
        int inverse32 = inverse32(iArr9[0]);
        int maximumDivsteps = getMaximumDivsteps(numberOfLeadingZeros);
        int i10 = -1;
        int i11 = 0;
        while (i11 < maximumDivsteps) {
            int divsteps30 = divsteps30(i10, iArr7[c10], iArr8[c10], iArr4);
            updateDE30(i4, iArr5, iArr6, iArr4, inverse32, iArr9);
            updateFG30(i4, iArr7, iArr8, iArr4);
            i11 += 30;
            i10 = divsteps30;
            maximumDivsteps = maximumDivsteps;
            c10 = 0;
        }
        int i12 = iArr7[i4 - 1] >> 31;
        cnegate30(i4, i12, iArr7);
        cnormalize30(i4, i12, iArr5, iArr9);
        decode30(numberOfLeadingZeros, iArr5, 0, iArr3, 0);
        return Nat.equalTo(i4, iArr7, 1) & Nat.equalToZero(i4, iArr8);
    }

    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static boolean modOddInverseVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int numberOfLeadingZeros = (length << 5) - Integers.numberOfLeadingZeros(iArr[length - 1]);
        int i4 = (numberOfLeadingZeros + 29) / 30;
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[i4];
        int[] iArr6 = new int[i4];
        int[] iArr7 = new int[i4];
        int[] iArr8 = new int[i4];
        int[] iArr9 = new int[i4];
        ?? r9 = 0;
        iArr6[0] = 1;
        encode30(numberOfLeadingZeros, iArr2, 0, iArr8, 0);
        encode30(numberOfLeadingZeros, iArr, 0, iArr9, 0);
        System.arraycopy(iArr9, 0, iArr7, 0, i4);
        int i10 = i4 - 1;
        int numberOfLeadingZeros2 = (-1) - (Integers.numberOfLeadingZeros(iArr8[i10] | 1) - (((i4 * 30) + 2) - numberOfLeadingZeros));
        int inverse32 = inverse32(iArr9[0]);
        int maximumDivsteps = getMaximumDivsteps(numberOfLeadingZeros);
        int i11 = i4;
        int i12 = 0;
        while (!Nat.isZero(i11, iArr8)) {
            if (i12 >= maximumDivsteps) {
                return r9;
            }
            int i13 = i12 + 30;
            int divsteps30Var = divsteps30Var(numberOfLeadingZeros2, iArr7[r9], iArr8[r9], iArr4);
            int i14 = i11;
            int i15 = maximumDivsteps;
            int[] iArr10 = iArr6;
            updateDE30(i4, iArr5, iArr6, iArr4, inverse32, iArr9);
            updateFG30(i14, iArr7, iArr8, iArr4);
            int i16 = i14 - 1;
            int i17 = iArr7[i16];
            int i18 = iArr8[i16];
            int i19 = i14 - 2;
            if (((i19 >> 31) | ((i17 >> 31) ^ i17) | ((i18 >> 31) ^ i18)) == 0) {
                iArr7[i19] = (i17 << 30) | iArr7[i19];
                iArr8[i19] = iArr8[i19] | (i18 << 30);
                i11 = i14 - 1;
            } else {
                i11 = i14;
            }
            i12 = i13;
            numberOfLeadingZeros2 = divsteps30Var;
            maximumDivsteps = i15;
            iArr6 = iArr10;
            r9 = 0;
        }
        int i20 = i11;
        int i21 = iArr7[i20 - 1] >> 31;
        int i22 = iArr5[i10] >> 31;
        if (i22 < 0) {
            i22 = add30(i4, iArr5, iArr9);
        }
        if (i21 < 0) {
            i22 = negate30(i4, iArr5);
            negate30(i20, iArr7);
        }
        if (Nat.isOne(i20, iArr7)) {
            if (i22 < 0) {
                add30(i4, iArr5, iArr9);
            }
            decode30(numberOfLeadingZeros, iArr5, 0, iArr3, 0);
            return true;
        }
        return false;
    }

    private static int negate30(int i4, int[] iArr) {
        int i10 = i4 - 1;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = i11 - iArr[i12];
            iArr[i12] = 1073741823 & i13;
            i11 = i13 >> 30;
        }
        int i14 = i11 - iArr[i10];
        iArr[i10] = i14;
        return i14 >> 30;
    }

    public static int[] random(int[] iArr) {
        int length = iArr.length;
        Random random = new Random();
        int[] create = Nat.create(length);
        int i4 = length - 1;
        int i10 = iArr[i4];
        int i11 = i10 | (i10 >>> 1);
        int i12 = i11 | (i11 >>> 2);
        int i13 = i12 | (i12 >>> 4);
        int i14 = i13 | (i13 >>> 8);
        int i15 = i14 | (i14 >>> 16);
        do {
            for (int i16 = 0; i16 != length; i16++) {
                create[i16] = random.nextInt();
            }
            create[i4] = create[i4] & i15;
        } while (Nat.gte(length, create, iArr));
        return create;
    }

    private static void updateDE30(int i4, int[] iArr, int[] iArr2, int[] iArr3, int i10, int[] iArr4) {
        int i11 = i4;
        int i12 = iArr3[0];
        int i13 = iArr3[1];
        int i14 = iArr3[2];
        int i15 = iArr3[3];
        int i16 = i11 - 1;
        int i17 = iArr[i16] >> 31;
        int i18 = iArr2[i16] >> 31;
        int i19 = (i12 & i17) + (i13 & i18);
        int i20 = (i17 & i14) + (i18 & i15);
        int i21 = iArr4[0];
        long j4 = i12;
        long j10 = iArr[0];
        long j11 = i13;
        long j12 = iArr2[0];
        long j13 = (j4 * j10) + (j11 * j12);
        long j14 = i14;
        long j15 = i15;
        long j16 = (j10 * j14) + (j12 * j15);
        long j17 = i21;
        long j18 = i19 - (((((int) j13) * i10) + i19) & 1073741823);
        int i22 = i16;
        long j19 = i20 - (((((int) j16) * i10) + i20) & 1073741823);
        long j20 = (j16 + (j17 * j19)) >> 30;
        long j21 = (j13 + (j17 * j18)) >> 30;
        int i23 = 1;
        while (i23 < i11) {
            int i24 = iArr4[i23];
            long j22 = j20;
            long j23 = iArr[i23];
            int i25 = i23;
            long j24 = iArr2[i23];
            long j25 = j19;
            long j26 = i24;
            long j27 = j21 + (j4 * j23) + (j11 * j24) + (j26 * j18);
            long j28 = j22 + (j23 * j14) + (j24 * j15) + (j26 * j25);
            int i26 = i25 - 1;
            iArr[i26] = ((int) j27) & 1073741823;
            j21 = j27 >> 30;
            iArr2[i26] = ((int) j28) & 1073741823;
            j20 = j28 >> 30;
            i23 = i25 + 1;
            i11 = i4;
            i22 = i22;
            j19 = j25;
        }
        int i27 = i22;
        iArr[i27] = (int) j21;
        iArr2[i27] = (int) j20;
    }

    private static void updateFG30(int i4, int[] iArr, int[] iArr2, int[] iArr3) {
        int i10 = iArr3[0];
        int i11 = iArr3[1];
        int i12 = iArr3[2];
        int i13 = iArr3[3];
        long j4 = i10;
        long j10 = iArr[0];
        long j11 = i11;
        long j12 = iArr2[0];
        long j13 = i12;
        long j14 = i13;
        long j15 = ((j4 * j10) + (j11 * j12)) >> 30;
        long j16 = ((j10 * j13) + (j12 * j14)) >> 30;
        int i14 = 1;
        while (i14 < i4) {
            int i15 = iArr[i14];
            int i16 = iArr2[i14];
            int i17 = i14;
            long j17 = i15;
            long j18 = j4 * j17;
            long j19 = j4;
            long j20 = i16;
            long j21 = j15 + j18 + (j11 * j20);
            long j22 = j16 + (j17 * j13) + (j20 * j14);
            int i18 = i17 - 1;
            iArr[i18] = ((int) j21) & 1073741823;
            j15 = j21 >> 30;
            iArr2[i18] = 1073741823 & ((int) j22);
            j16 = j22 >> 30;
            i14 = i17 + 1;
            j4 = j19;
        }
        int i19 = i4 - 1;
        iArr[i19] = (int) j15;
        iArr2[i19] = (int) j16;
    }
}
