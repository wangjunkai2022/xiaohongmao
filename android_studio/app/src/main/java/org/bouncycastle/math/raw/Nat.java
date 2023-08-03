package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public abstract class Nat {
    private static final long M = 4294967295L;

    public static int add(int i4, int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            long j10 = j4 + (iArr[i10] & M) + (M & iArr2[i10]);
            iArr3[i10] = (int) j10;
            j4 = j10 >>> 32;
        }
        return (int) j4;
    }

    public static int add33At(int i4, int i10, int[] iArr, int i11) {
        int i12 = i11 + 0;
        long j4 = (iArr[i12] & M) + (i10 & M);
        iArr[i12] = (int) j4;
        int i13 = i11 + 1;
        long j10 = (j4 >>> 32) + (M & iArr[i13]) + 1;
        iArr[i13] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, i11 + 2);
    }

    public static int add33At(int i4, int i10, int[] iArr, int i11, int i12) {
        int i13 = i11 + i12;
        long j4 = (iArr[i13] & M) + (i10 & M);
        iArr[i13] = (int) j4;
        int i14 = i13 + 1;
        long j10 = (j4 >>> 32) + (M & iArr[i14]) + 1;
        iArr[i14] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, i11, i12 + 2);
    }

    public static int add33To(int i4, int i10, int[] iArr) {
        long j4 = (iArr[0] & M) + (i10 & M);
        iArr[0] = (int) j4;
        long j10 = (j4 >>> 32) + (M & iArr[1]) + 1;
        iArr[1] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, 2);
    }

    public static int add33To(int i4, int i10, int[] iArr, int i11) {
        int i12 = i11 + 0;
        long j4 = (iArr[i12] & M) + (i10 & M);
        iArr[i12] = (int) j4;
        int i13 = i11 + 1;
        long j10 = (j4 >>> 32) + (M & iArr[i13]) + 1;
        iArr[i13] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, i11, 2);
    }

    public static int addBothTo(int i4, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j4 = 0;
        for (int i13 = 0; i13 < i4; i13++) {
            int i14 = i12 + i13;
            long j10 = j4 + (iArr[i10 + i13] & M) + (iArr2[i11 + i13] & M) + (M & iArr3[i14]);
            iArr3[i14] = (int) j10;
            j4 = j10 >>> 32;
        }
        return (int) j4;
    }

    public static int addBothTo(int i4, int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            long j10 = j4 + (iArr[i10] & M) + (iArr2[i10] & M) + (M & iArr3[i10]);
            iArr3[i10] = (int) j10;
            j4 = j10 >>> 32;
        }
        return (int) j4;
    }

    public static int addDWordAt(int i4, long j4, int[] iArr, int i10) {
        int i11 = i10 + 0;
        long j10 = (iArr[i11] & M) + (j4 & M);
        iArr[i11] = (int) j10;
        int i12 = i10 + 1;
        long j11 = (j10 >>> 32) + (M & iArr[i12]) + (j4 >>> 32);
        iArr[i12] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, i10 + 2);
    }

    public static int addDWordAt(int i4, long j4, int[] iArr, int i10, int i11) {
        int i12 = i10 + i11;
        long j10 = (iArr[i12] & M) + (j4 & M);
        iArr[i12] = (int) j10;
        int i13 = i12 + 1;
        long j11 = (j10 >>> 32) + (M & iArr[i13]) + (j4 >>> 32);
        iArr[i13] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, i10, i11 + 2);
    }

    public static int addDWordTo(int i4, long j4, int[] iArr) {
        long j10 = (iArr[0] & M) + (j4 & M);
        iArr[0] = (int) j10;
        long j11 = (j10 >>> 32) + (M & iArr[1]) + (j4 >>> 32);
        iArr[1] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, 2);
    }

    public static int addDWordTo(int i4, long j4, int[] iArr, int i10) {
        int i11 = i10 + 0;
        long j10 = (iArr[i11] & M) + (j4 & M);
        iArr[i11] = (int) j10;
        int i12 = i10 + 1;
        long j11 = (j10 >>> 32) + (M & iArr[i12]) + (j4 >>> 32);
        iArr[i12] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, i10, 2);
    }

    public static int addTo(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        long j4 = 0;
        for (int i12 = 0; i12 < i4; i12++) {
            int i13 = i11 + i12;
            long j10 = j4 + (iArr[i10 + i12] & M) + (M & iArr2[i13]);
            iArr2[i13] = (int) j10;
            j4 = j10 >>> 32;
        }
        return (int) j4;
    }

    public static int addTo(int i4, int[] iArr, int i10, int[] iArr2, int i11, int i12) {
        long j4 = i12 & M;
        for (int i13 = 0; i13 < i4; i13++) {
            int i14 = i11 + i13;
            long j10 = j4 + (iArr[i10 + i13] & M) + (iArr2[i14] & M);
            iArr2[i14] = (int) j10;
            j4 = j10 >>> 32;
        }
        return (int) j4;
    }

    public static int addTo(int i4, int[] iArr, int[] iArr2) {
        long j4 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            long j10 = j4 + (iArr[i10] & M) + (M & iArr2[i10]);
            iArr2[i10] = (int) j10;
            j4 = j10 >>> 32;
        }
        return (int) j4;
    }

    public static int addToEachOther(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        long j4 = 0;
        for (int i12 = 0; i12 < i4; i12++) {
            int i13 = i10 + i12;
            int i14 = i11 + i12;
            long j10 = j4 + (iArr[i13] & M) + (M & iArr2[i14]);
            int i15 = (int) j10;
            iArr[i13] = i15;
            iArr2[i14] = i15;
            j4 = j10 >>> 32;
        }
        return (int) j4;
    }

    public static int addWordAt(int i4, int i10, int[] iArr, int i11) {
        long j4 = (i10 & M) + (M & iArr[i11]);
        iArr[i11] = (int) j4;
        if ((j4 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, i11 + 1);
    }

    public static int addWordAt(int i4, int i10, int[] iArr, int i11, int i12) {
        int i13 = i11 + i12;
        long j4 = (i10 & M) + (M & iArr[i13]);
        iArr[i13] = (int) j4;
        if ((j4 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, i11, i12 + 1);
    }

    public static int addWordTo(int i4, int i10, int[] iArr) {
        long j4 = (i10 & M) + (M & iArr[0]);
        iArr[0] = (int) j4;
        if ((j4 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, 1);
    }

    public static int addWordTo(int i4, int i10, int[] iArr, int i11) {
        long j4 = (i10 & M) + (M & iArr[i11]);
        iArr[i11] = (int) j4;
        if ((j4 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, i11, 1);
    }

    public static int cadd(int i4, int i10, int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = (-(i10 & 1)) & M;
        long j10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            long j11 = j10 + (iArr[i11] & M) + (iArr2[i11] & j4);
            iArr3[i11] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static void cmov(int i4, int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        int i13 = -(i10 & 1);
        for (int i14 = 0; i14 < i4; i14++) {
            int i15 = i12 + i14;
            int i16 = iArr2[i15];
            iArr2[i15] = i16 ^ ((iArr[i11 + i14] ^ i16) & i13);
        }
    }

    public static int compare(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = i4 - 1; i12 >= 0; i12--) {
            int i13 = iArr[i10 + i12] ^ Integer.MIN_VALUE;
            int i14 = Integer.MIN_VALUE ^ iArr2[i11 + i12];
            if (i13 < i14) {
                return -1;
            }
            if (i13 > i14) {
                return 1;
            }
        }
        return 0;
    }

    public static int compare(int i4, int[] iArr, int[] iArr2) {
        for (int i10 = i4 - 1; i10 >= 0; i10--) {
            int i11 = iArr[i10] ^ Integer.MIN_VALUE;
            int i12 = Integer.MIN_VALUE ^ iArr2[i10];
            if (i11 < i12) {
                return -1;
            }
            if (i11 > i12) {
                return 1;
            }
        }
        return 0;
    }

    public static void copy(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        System.arraycopy(iArr, i10, iArr2, i11, i4);
    }

    public static void copy(int i4, int[] iArr, int[] iArr2) {
        System.arraycopy(iArr, 0, iArr2, 0, i4);
    }

    public static int[] copy(int i4, int[] iArr) {
        int[] iArr2 = new int[i4];
        System.arraycopy(iArr, 0, iArr2, 0, i4);
        return iArr2;
    }

    public static void copy64(int i4, long[] jArr, int i10, long[] jArr2, int i11) {
        System.arraycopy(jArr, i10, jArr2, i11, i4);
    }

    public static void copy64(int i4, long[] jArr, long[] jArr2) {
        System.arraycopy(jArr, 0, jArr2, 0, i4);
    }

    public static long[] copy64(int i4, long[] jArr) {
        long[] jArr2 = new long[i4];
        System.arraycopy(jArr, 0, jArr2, 0, i4);
        return jArr2;
    }

    public static int[] create(int i4) {
        return new int[i4];
    }

    public static long[] create64(int i4) {
        return new long[i4];
    }

    public static int csub(int i4, int i10, int[] iArr, int i11, int[] iArr2, int i12, int[] iArr3, int i13) {
        long j4 = (-(i10 & 1)) & M;
        long j10 = 0;
        for (int i14 = 0; i14 < i4; i14++) {
            long j11 = j10 + ((iArr[i11 + i14] & M) - (iArr2[i12 + i14] & j4));
            iArr3[i13 + i14] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int csub(int i4, int i10, int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = (-(i10 & 1)) & M;
        long j10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            long j11 = j10 + ((iArr[i11] & M) - (iArr2[i11] & j4));
            iArr3[i11] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int dec(int i4, int[] iArr) {
        for (int i10 = 0; i10 < i4; i10++) {
            int i11 = iArr[i10] - 1;
            iArr[i10] = i11;
            if (i11 != -1) {
                return 0;
            }
        }
        return -1;
    }

    public static int dec(int i4, int[] iArr, int[] iArr2) {
        int i10 = 0;
        while (i10 < i4) {
            int i11 = iArr[i10] - 1;
            iArr2[i10] = i11;
            i10++;
            if (i11 != -1) {
                while (i10 < i4) {
                    iArr2[i10] = iArr[i10];
                    i10++;
                }
                return 0;
            }
        }
        return -1;
    }

    public static int decAt(int i4, int[] iArr, int i10) {
        while (i10 < i4) {
            int i11 = iArr[i10] - 1;
            iArr[i10] = i11;
            if (i11 != -1) {
                return 0;
            }
            i10++;
        }
        return -1;
    }

    public static int decAt(int i4, int[] iArr, int i10, int i11) {
        while (i11 < i4) {
            int i12 = i10 + i11;
            int i13 = iArr[i12] - 1;
            iArr[i12] = i13;
            if (i13 != -1) {
                return 0;
            }
            i11++;
        }
        return -1;
    }

    public static boolean diff(int i4, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        boolean gte = gte(i4, iArr, i10, iArr2, i11);
        if (gte) {
            sub(i4, iArr, i10, iArr2, i11, iArr3, i12);
        } else {
            sub(i4, iArr2, i11, iArr, i10, iArr3, i12);
        }
        return gte;
    }

    public static boolean eq(int i4, int[] iArr, int[] iArr2) {
        for (int i10 = i4 - 1; i10 >= 0; i10--) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static int equalTo(int i4, int[] iArr, int i10) {
        int i11 = i10 ^ iArr[0];
        for (int i12 = 1; i12 < i4; i12++) {
            i11 |= iArr[i12];
        }
        return (((i11 >>> 1) | (i11 & 1)) - 1) >> 31;
    }

    public static int equalTo(int i4, int[] iArr, int i10, int i11) {
        int i12 = i11 ^ iArr[i10];
        for (int i13 = 1; i13 < i4; i13++) {
            i12 |= iArr[i10 + i13];
        }
        return (((i12 >>> 1) | (i12 & 1)) - 1) >> 31;
    }

    public static int equalTo(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = 0;
        for (int i13 = 0; i13 < i4; i13++) {
            i12 |= iArr[i10 + i13] ^ iArr2[i11 + i13];
        }
        return (((i12 >>> 1) | (i12 & 1)) - 1) >> 31;
    }

    public static int equalTo(int i4, int[] iArr, int[] iArr2) {
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            i10 |= iArr[i11] ^ iArr2[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static int equalToZero(int i4, int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static int equalToZero(int i4, int[] iArr, int i10) {
        int i11 = 0;
        for (int i12 = 0; i12 < i4; i12++) {
            i11 |= iArr[i10 + i12];
        }
        return (((i11 >>> 1) | (i11 & 1)) - 1) >> 31;
    }

    public static int[] fromBigInteger(int i4, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i4) {
            throw new IllegalArgumentException();
        }
        int i10 = (i4 + 31) >> 5;
        int[] create = create(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            create[i11] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return create;
    }

    public static long[] fromBigInteger64(int i4, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i4) {
            throw new IllegalArgumentException();
        }
        int i10 = (i4 + 63) >> 6;
        long[] create64 = create64(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            create64[i11] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return create64;
    }

    public static int getBit(int[] iArr, int i4) {
        int i10;
        if (i4 == 0) {
            i10 = iArr[0];
        } else {
            int i11 = i4 >> 5;
            if (i11 < 0 || i11 >= iArr.length) {
                return 0;
            }
            i10 = iArr[i11] >>> (i4 & 31);
        }
        return i10 & 1;
    }

    public static boolean gte(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = i4 - 1; i12 >= 0; i12--) {
            int i13 = iArr[i10 + i12] ^ Integer.MIN_VALUE;
            int i14 = Integer.MIN_VALUE ^ iArr2[i11 + i12];
            if (i13 < i14) {
                return false;
            }
            if (i13 > i14) {
                return true;
            }
        }
        return true;
    }

    public static boolean gte(int i4, int[] iArr, int[] iArr2) {
        for (int i10 = i4 - 1; i10 >= 0; i10--) {
            int i11 = iArr[i10] ^ Integer.MIN_VALUE;
            int i12 = Integer.MIN_VALUE ^ iArr2[i10];
            if (i11 < i12) {
                return false;
            }
            if (i11 > i12) {
                return true;
            }
        }
        return true;
    }

    public static int inc(int i4, int[] iArr) {
        for (int i10 = 0; i10 < i4; i10++) {
            int i11 = iArr[i10] + 1;
            iArr[i10] = i11;
            if (i11 != 0) {
                return 0;
            }
        }
        return 1;
    }

    public static int inc(int i4, int[] iArr, int[] iArr2) {
        int i10 = 0;
        while (i10 < i4) {
            int i11 = iArr[i10] + 1;
            iArr2[i10] = i11;
            i10++;
            if (i11 != 0) {
                while (i10 < i4) {
                    iArr2[i10] = iArr[i10];
                    i10++;
                }
                return 0;
            }
        }
        return 1;
    }

    public static int incAt(int i4, int[] iArr, int i10) {
        while (i10 < i4) {
            int i11 = iArr[i10] + 1;
            iArr[i10] = i11;
            if (i11 != 0) {
                return 0;
            }
            i10++;
        }
        return 1;
    }

    public static int incAt(int i4, int[] iArr, int i10, int i11) {
        while (i11 < i4) {
            int i12 = i10 + i11;
            int i13 = iArr[i12] + 1;
            iArr[i12] = i13;
            if (i13 != 0) {
                return 0;
            }
            i11++;
        }
        return 1;
    }

    public static boolean isOne(int i4, int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i10 = 1; i10 < i4; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int i4, int[] iArr) {
        for (int i10 = 0; i10 < i4; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static int lessThan(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        long j4 = 0;
        for (int i12 = 0; i12 < i4; i12++) {
            j4 = (j4 + ((iArr[i10 + i12] & M) - (M & iArr2[i11 + i12]))) >> 32;
        }
        return (int) j4;
    }

    public static int lessThan(int i4, int[] iArr, int[] iArr2) {
        long j4 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            j4 = (j4 + ((iArr[i10] & M) - (M & iArr2[i10]))) >> 32;
        }
        return (int) j4;
    }

    public static void mul(int i4, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        iArr3[i12 + i4] = mulWord(i4, iArr[i10], iArr2, i11, iArr3, i12);
        for (int i13 = 1; i13 < i4; i13++) {
            int i14 = i12 + i13;
            iArr3[i14 + i4] = mulWordAddTo(i4, iArr[i10 + i13], iArr2, i11, iArr3, i14);
        }
    }

    public static void mul(int i4, int[] iArr, int[] iArr2, int[] iArr3) {
        iArr3[i4] = mulWord(i4, iArr[0], iArr2, iArr3);
        for (int i10 = 1; i10 < i4; i10++) {
            iArr3[i10 + i4] = mulWordAddTo(i4, iArr[i10], iArr2, 0, iArr3, i10);
        }
    }

    public static void mul(int[] iArr, int i4, int i10, int[] iArr2, int i11, int i12, int[] iArr3, int i13) {
        iArr3[i13 + i12] = mulWord(i12, iArr[i4], iArr2, i11, iArr3, i13);
        for (int i14 = 1; i14 < i10; i14++) {
            int i15 = i13 + i14;
            iArr3[i15 + i12] = mulWordAddTo(i12, iArr[i4 + i14], iArr2, i11, iArr3, i15);
        }
    }

    public static int mul31BothAdd(int i4, int i10, int[] iArr, int i11, int[] iArr2, int[] iArr3, int i12) {
        long j4 = i10 & M;
        long j10 = i11 & M;
        long j11 = 0;
        int i13 = 0;
        do {
            int i14 = i12 + i13;
            long j12 = j11 + ((iArr[i13] & M) * j4) + ((iArr2[i13] & M) * j10) + (iArr3[i14] & M);
            iArr3[i14] = (int) j12;
            j11 = j12 >>> 32;
            i13++;
        } while (i13 < i4);
        return (int) j11;
    }

    public static int mulAddTo(int i4, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j4 = 0;
        for (int i13 = 0; i13 < i4; i13++) {
            int i14 = i12 + i4;
            long mulWordAddTo = j4 + (mulWordAddTo(i4, iArr[i10 + i13], iArr2, i11, iArr3, i12) & M) + (iArr3[i14] & M);
            iArr3[i14] = (int) mulWordAddTo;
            j4 = mulWordAddTo >>> 32;
            i12++;
        }
        return (int) j4;
    }

    public static int mulAddTo(int i4, int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            int i11 = i10 + i4;
            long mulWordAddTo = j4 + (mulWordAddTo(i4, iArr[i10], iArr2, 0, iArr3, i10) & M) + (iArr3[i11] & M);
            iArr3[i11] = (int) mulWordAddTo;
            j4 = mulWordAddTo >>> 32;
        }
        return (int) j4;
    }

    public static int mulWord(int i4, int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        long j4 = i10 & M;
        long j10 = 0;
        int i13 = 0;
        do {
            long j11 = j10 + ((iArr[i11 + i13] & M) * j4);
            iArr2[i12 + i13] = (int) j11;
            j10 = j11 >>> 32;
            i13++;
        } while (i13 < i4);
        return (int) j10;
    }

    public static int mulWord(int i4, int i10, int[] iArr, int[] iArr2) {
        long j4 = i10 & M;
        long j10 = 0;
        int i11 = 0;
        do {
            long j11 = j10 + ((iArr[i11] & M) * j4);
            iArr2[i11] = (int) j11;
            j10 = j11 >>> 32;
            i11++;
        } while (i11 < i4);
        return (int) j10;
    }

    public static int mulWordAddTo(int i4, int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        long j4 = i10 & M;
        long j10 = 0;
        int i13 = 0;
        do {
            int i14 = i12 + i13;
            long j11 = j10 + ((iArr[i11 + i13] & M) * j4) + (iArr2[i14] & M);
            iArr2[i14] = (int) j11;
            j10 = j11 >>> 32;
            i13++;
        } while (i13 < i4);
        return (int) j10;
    }

    public static int mulWordDwordAddAt(int i4, int i10, long j4, int[] iArr, int i11) {
        long j10 = i10 & M;
        int i12 = i11 + 0;
        long j11 = ((j4 & M) * j10) + (iArr[i12] & M) + 0;
        iArr[i12] = (int) j11;
        long j12 = j10 * (j4 >>> 32);
        int i13 = i11 + 1;
        long j13 = (j11 >>> 32) + j12 + (iArr[i13] & M);
        iArr[i13] = (int) j13;
        int i14 = i11 + 2;
        long j14 = (j13 >>> 32) + (iArr[i14] & M);
        iArr[i14] = (int) j14;
        if ((j14 >>> 32) == 0) {
            return 0;
        }
        return incAt(i4, iArr, i11 + 3);
    }

    public static int shiftDownBit(int i4, int[] iArr, int i10) {
        while (true) {
            i4--;
            if (i4 < 0) {
                return i10 << 31;
            }
            int i11 = iArr[i4];
            iArr[i4] = (i10 << 31) | (i11 >>> 1);
            i10 = i11;
        }
    }

    public static int shiftDownBit(int i4, int[] iArr, int i10, int i11) {
        while (true) {
            i4--;
            if (i4 < 0) {
                return i11 << 31;
            }
            int i12 = i10 + i4;
            int i13 = iArr[i12];
            iArr[i12] = (i11 << 31) | (i13 >>> 1);
            i11 = i13;
        }
    }

    public static int shiftDownBit(int i4, int[] iArr, int i10, int i11, int[] iArr2, int i12) {
        while (true) {
            i4--;
            if (i4 < 0) {
                return i11 << 31;
            }
            int i13 = iArr[i10 + i4];
            iArr2[i12 + i4] = (i11 << 31) | (i13 >>> 1);
            i11 = i13;
        }
    }

    public static int shiftDownBit(int i4, int[] iArr, int i10, int[] iArr2) {
        while (true) {
            i4--;
            if (i4 < 0) {
                return i10 << 31;
            }
            int i11 = iArr[i4];
            iArr2[i4] = (i10 << 31) | (i11 >>> 1);
            i10 = i11;
        }
    }

    public static int shiftDownBits(int i4, int[] iArr, int i10, int i11) {
        while (true) {
            i4--;
            if (i4 < 0) {
                return i11 << (-i10);
            }
            int i12 = iArr[i4];
            iArr[i4] = (i11 << (-i10)) | (i12 >>> i10);
            i11 = i12;
        }
    }

    public static int shiftDownBits(int i4, int[] iArr, int i10, int i11, int i12) {
        while (true) {
            i4--;
            if (i4 < 0) {
                return i12 << (-i11);
            }
            int i13 = i10 + i4;
            int i14 = iArr[i13];
            iArr[i13] = (i12 << (-i11)) | (i14 >>> i11);
            i12 = i14;
        }
    }

    public static int shiftDownBits(int i4, int[] iArr, int i10, int i11, int i12, int[] iArr2, int i13) {
        while (true) {
            i4--;
            if (i4 < 0) {
                return i12 << (-i11);
            }
            int i14 = iArr[i10 + i4];
            iArr2[i13 + i4] = (i12 << (-i11)) | (i14 >>> i11);
            i12 = i14;
        }
    }

    public static int shiftDownBits(int i4, int[] iArr, int i10, int i11, int[] iArr2) {
        while (true) {
            i4--;
            if (i4 < 0) {
                return i11 << (-i10);
            }
            int i12 = iArr[i4];
            iArr2[i4] = (i11 << (-i10)) | (i12 >>> i10);
            i11 = i12;
        }
    }

    public static int shiftDownWord(int i4, int[] iArr, int i10) {
        while (true) {
            i4--;
            if (i4 < 0) {
                return i10;
            }
            int i11 = iArr[i4];
            iArr[i4] = i10;
            i10 = i11;
        }
    }

    public static int shiftUpBit(int i4, int[] iArr, int i10) {
        int i11 = 0;
        while (i11 < i4) {
            int i12 = iArr[i11];
            iArr[i11] = (i10 >>> 31) | (i12 << 1);
            i11++;
            i10 = i12;
        }
        return i10 >>> 31;
    }

    public static int shiftUpBit(int i4, int[] iArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i4) {
            int i13 = i10 + i12;
            int i14 = iArr[i13];
            iArr[i13] = (i11 >>> 31) | (i14 << 1);
            i12++;
            i11 = i14;
        }
        return i11 >>> 31;
    }

    public static int shiftUpBit(int i4, int[] iArr, int i10, int i11, int[] iArr2, int i12) {
        int i13 = 0;
        while (i13 < i4) {
            int i14 = iArr[i10 + i13];
            iArr2[i12 + i13] = (i11 >>> 31) | (i14 << 1);
            i13++;
            i11 = i14;
        }
        return i11 >>> 31;
    }

    public static int shiftUpBit(int i4, int[] iArr, int i10, int[] iArr2) {
        int i11 = 0;
        while (i11 < i4) {
            int i12 = iArr[i11];
            iArr2[i11] = (i10 >>> 31) | (i12 << 1);
            i11++;
            i10 = i12;
        }
        return i10 >>> 31;
    }

    public static long shiftUpBit64(int i4, long[] jArr, int i10, long j4, long[] jArr2, int i11) {
        int i12 = 0;
        while (i12 < i4) {
            long j10 = jArr[i10 + i12];
            jArr2[i11 + i12] = (j4 >>> 63) | (j10 << 1);
            i12++;
            j4 = j10;
        }
        return j4 >>> 63;
    }

    public static int shiftUpBits(int i4, int[] iArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i4) {
            int i13 = iArr[i12];
            iArr[i12] = (i11 >>> (-i10)) | (i13 << i10);
            i12++;
            i11 = i13;
        }
        return i11 >>> (-i10);
    }

    public static int shiftUpBits(int i4, int[] iArr, int i10, int i11, int i12) {
        int i13 = 0;
        while (i13 < i4) {
            int i14 = i10 + i13;
            int i15 = iArr[i14];
            iArr[i14] = (i12 >>> (-i11)) | (i15 << i11);
            i13++;
            i12 = i15;
        }
        return i12 >>> (-i11);
    }

    public static int shiftUpBits(int i4, int[] iArr, int i10, int i11, int i12, int[] iArr2, int i13) {
        int i14 = 0;
        while (i14 < i4) {
            int i15 = iArr[i10 + i14];
            iArr2[i13 + i14] = (i12 >>> (-i11)) | (i15 << i11);
            i14++;
            i12 = i15;
        }
        return i12 >>> (-i11);
    }

    public static int shiftUpBits(int i4, int[] iArr, int i10, int i11, int[] iArr2) {
        int i12 = 0;
        while (i12 < i4) {
            int i13 = iArr[i12];
            iArr2[i12] = (i11 >>> (-i10)) | (i13 << i10);
            i12++;
            i11 = i13;
        }
        return i11 >>> (-i10);
    }

    public static long shiftUpBits64(int i4, long[] jArr, int i10, int i11, long j4) {
        int i12 = 0;
        while (i12 < i4) {
            int i13 = i10 + i12;
            long j10 = jArr[i13];
            jArr[i13] = (j4 >>> (-i11)) | (j10 << i11);
            i12++;
            j4 = j10;
        }
        return j4 >>> (-i11);
    }

    public static long shiftUpBits64(int i4, long[] jArr, int i10, int i11, long j4, long[] jArr2, int i12) {
        int i13 = 0;
        while (i13 < i4) {
            long j10 = jArr[i10 + i13];
            jArr2[i12 + i13] = (j4 >>> (-i11)) | (j10 << i11);
            i13++;
            j4 = j10;
        }
        return j4 >>> (-i11);
    }

    public static void square(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        int i12;
        int i13 = i4 << 1;
        int i14 = 0;
        int i15 = i4;
        int i16 = i13;
        do {
            i15--;
            long j4 = iArr[i10 + i15] & M;
            long j10 = j4 * j4;
            int i17 = i16 - 1;
            iArr2[i11 + i17] = (i14 << 31) | ((int) (j10 >>> 33));
            i16 = i17 - 1;
            i12 = 1;
            iArr2[i11 + i16] = (int) (j10 >>> 1);
            i14 = (int) j10;
        } while (i15 > 0);
        long j11 = 0;
        int i18 = i11 + 2;
        while (i12 < i4) {
            long squareWordAddTo = j11 + (squareWordAddTo(iArr, i10, i12, iArr2, i11) & M) + (iArr2[i18] & M);
            int i19 = i18 + 1;
            iArr2[i18] = (int) squareWordAddTo;
            long j12 = (squareWordAddTo >>> 32) + (iArr2[i19] & M);
            iArr2[i19] = (int) j12;
            j11 = j12 >>> 32;
            i12++;
            i18 = i19 + 1;
        }
        shiftUpBit(i13, iArr2, i11, iArr[i10] << 31);
    }

    public static void square(int i4, int[] iArr, int[] iArr2) {
        int i10;
        int i11 = i4 << 1;
        int i12 = 0;
        int i13 = i4;
        int i14 = i11;
        while (true) {
            i13--;
            long j4 = iArr[i13] & M;
            long j10 = j4 * j4;
            int i15 = i14 - 1;
            iArr2[i15] = (i12 << 31) | ((int) (j10 >>> 33));
            i14 = i15 - 1;
            i10 = 1;
            iArr2[i14] = (int) (j10 >>> 1);
            int i16 = (int) j10;
            if (i13 <= 0) {
                break;
            }
            i12 = i16;
        }
        long j11 = 0;
        int i17 = 2;
        while (i10 < i4) {
            long squareWordAddTo = j11 + (squareWordAddTo(iArr, i10, iArr2) & M) + (iArr2[i17] & M);
            int i18 = i17 + 1;
            iArr2[i17] = (int) squareWordAddTo;
            long j12 = (squareWordAddTo >>> 32) + (iArr2[i18] & M);
            iArr2[i18] = (int) j12;
            j11 = j12 >>> 32;
            i10++;
            i17 = i18 + 1;
        }
        shiftUpBit(i11, iArr2, iArr[0] << 31);
    }

    public static int squareWordAddTo(int[] iArr, int i4, int i10, int[] iArr2, int i11) {
        int i12;
        long j4 = iArr[i4 + i10] & M;
        long j10 = 0;
        int i13 = 0;
        int i14 = i11;
        do {
            long j11 = j10 + ((iArr[i4 + i13] & M) * j4) + (iArr2[i12] & M);
            iArr2[i10 + i14] = (int) j11;
            j10 = j11 >>> 32;
            i14++;
            i13++;
        } while (i13 < i10);
        return (int) j10;
    }

    public static int squareWordAddTo(int[] iArr, int i4, int[] iArr2) {
        long j4 = iArr[i4] & M;
        long j10 = 0;
        int i10 = 0;
        do {
            int i11 = i4 + i10;
            long j11 = j10 + ((iArr[i10] & M) * j4) + (iArr2[i11] & M);
            iArr2[i11] = (int) j11;
            j10 = j11 >>> 32;
            i10++;
        } while (i10 < i4);
        return (int) j10;
    }

    public static int sub(int i4, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j4 = 0;
        for (int i13 = 0; i13 < i4; i13++) {
            long j10 = j4 + ((iArr[i10 + i13] & M) - (M & iArr2[i11 + i13]));
            iArr3[i12 + i13] = (int) j10;
            j4 = j10 >> 32;
        }
        return (int) j4;
    }

    public static int sub(int i4, int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            long j10 = j4 + ((iArr[i10] & M) - (M & iArr2[i10]));
            iArr3[i10] = (int) j10;
            j4 = j10 >> 32;
        }
        return (int) j4;
    }

    public static int sub33At(int i4, int i10, int[] iArr, int i11) {
        int i12 = i11 + 0;
        long j4 = (iArr[i12] & M) - (i10 & M);
        iArr[i12] = (int) j4;
        int i13 = i11 + 1;
        long j10 = (j4 >> 32) + ((M & iArr[i13]) - 1);
        iArr[i13] = (int) j10;
        if ((j10 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, i11 + 2);
    }

    public static int sub33At(int i4, int i10, int[] iArr, int i11, int i12) {
        int i13 = i11 + i12;
        long j4 = (iArr[i13] & M) - (i10 & M);
        iArr[i13] = (int) j4;
        int i14 = i13 + 1;
        long j10 = (j4 >> 32) + ((M & iArr[i14]) - 1);
        iArr[i14] = (int) j10;
        if ((j10 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, i11, i12 + 2);
    }

    public static int sub33From(int i4, int i10, int[] iArr) {
        long j4 = (iArr[0] & M) - (i10 & M);
        iArr[0] = (int) j4;
        long j10 = (j4 >> 32) + ((M & iArr[1]) - 1);
        iArr[1] = (int) j10;
        if ((j10 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, 2);
    }

    public static int sub33From(int i4, int i10, int[] iArr, int i11) {
        int i12 = i11 + 0;
        long j4 = (iArr[i12] & M) - (i10 & M);
        iArr[i12] = (int) j4;
        int i13 = i11 + 1;
        long j10 = (j4 >> 32) + ((M & iArr[i13]) - 1);
        iArr[i13] = (int) j10;
        if ((j10 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, i11, 2);
    }

    public static int subBothFrom(int i4, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j4 = 0;
        for (int i13 = 0; i13 < i4; i13++) {
            int i14 = i12 + i13;
            long j10 = j4 + (((iArr3[i14] & M) - (iArr[i10 + i13] & M)) - (M & iArr2[i11 + i13]));
            iArr3[i14] = (int) j10;
            j4 = j10 >> 32;
        }
        return (int) j4;
    }

    public static int subBothFrom(int i4, int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            long j10 = j4 + (((iArr3[i10] & M) - (iArr[i10] & M)) - (M & iArr2[i10]));
            iArr3[i10] = (int) j10;
            j4 = j10 >> 32;
        }
        return (int) j4;
    }

    public static int subDWordAt(int i4, long j4, int[] iArr, int i10) {
        int i11 = i10 + 0;
        long j10 = (iArr[i11] & M) - (j4 & M);
        iArr[i11] = (int) j10;
        int i12 = i10 + 1;
        long j11 = (j10 >> 32) + ((M & iArr[i12]) - (j4 >>> 32));
        iArr[i12] = (int) j11;
        if ((j11 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, i10 + 2);
    }

    public static int subDWordAt(int i4, long j4, int[] iArr, int i10, int i11) {
        int i12 = i10 + i11;
        long j10 = (iArr[i12] & M) - (j4 & M);
        iArr[i12] = (int) j10;
        int i13 = i12 + 1;
        long j11 = (j10 >> 32) + ((M & iArr[i13]) - (j4 >>> 32));
        iArr[i13] = (int) j11;
        if ((j11 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, i10, i11 + 2);
    }

    public static int subDWordFrom(int i4, long j4, int[] iArr) {
        long j10 = (iArr[0] & M) - (j4 & M);
        iArr[0] = (int) j10;
        long j11 = (j10 >> 32) + ((M & iArr[1]) - (j4 >>> 32));
        iArr[1] = (int) j11;
        if ((j11 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, 2);
    }

    public static int subDWordFrom(int i4, long j4, int[] iArr, int i10) {
        int i11 = i10 + 0;
        long j10 = (iArr[i11] & M) - (j4 & M);
        iArr[i11] = (int) j10;
        int i12 = i10 + 1;
        long j11 = (j10 >> 32) + ((M & iArr[i12]) - (j4 >>> 32));
        iArr[i12] = (int) j11;
        if ((j11 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, i10, 2);
    }

    public static int subFrom(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        long j4 = 0;
        for (int i12 = 0; i12 < i4; i12++) {
            int i13 = i11 + i12;
            long j10 = j4 + ((iArr2[i13] & M) - (M & iArr[i10 + i12]));
            iArr2[i13] = (int) j10;
            j4 = j10 >> 32;
        }
        return (int) j4;
    }

    public static int subFrom(int i4, int[] iArr, int[] iArr2) {
        long j4 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            long j10 = j4 + ((iArr2[i10] & M) - (M & iArr[i10]));
            iArr2[i10] = (int) j10;
            j4 = j10 >> 32;
        }
        return (int) j4;
    }

    public static int subWordAt(int i4, int i10, int[] iArr, int i11) {
        long j4 = (iArr[i11] & M) - (M & i10);
        iArr[i11] = (int) j4;
        if ((j4 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, i11 + 1);
    }

    public static int subWordAt(int i4, int i10, int[] iArr, int i11, int i12) {
        int i13 = i11 + i12;
        long j4 = (iArr[i13] & M) - (M & i10);
        iArr[i13] = (int) j4;
        if ((j4 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, i11, i12 + 1);
    }

    public static int subWordFrom(int i4, int i10, int[] iArr) {
        long j4 = (iArr[0] & M) - (M & i10);
        iArr[0] = (int) j4;
        if ((j4 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, 1);
    }

    public static int subWordFrom(int i4, int i10, int[] iArr, int i11) {
        int i12 = i11 + 0;
        long j4 = (iArr[i12] & M) - (M & i10);
        iArr[i12] = (int) j4;
        if ((j4 >> 32) == 0) {
            return 0;
        }
        return decAt(i4, iArr, i11, 1);
    }

    public static BigInteger toBigInteger(int i4, int[] iArr) {
        byte[] bArr = new byte[i4 << 2];
        for (int i10 = 0; i10 < i4; i10++) {
            int i11 = iArr[i10];
            if (i11 != 0) {
                Pack.intToBigEndian(i11, bArr, ((i4 - 1) - i10) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int i4, int[] iArr) {
        for (int i10 = 0; i10 < i4; i10++) {
            iArr[i10] = 0;
        }
    }

    public static void zero(int i4, int[] iArr, int i10) {
        for (int i11 = 0; i11 < i4; i11++) {
            iArr[i10 + i11] = 0;
        }
    }

    public static void zero64(int i4, long[] jArr) {
        for (int i10 = 0; i10 < i4; i10++) {
            jArr[i10] = 0;
        }
    }
}
