package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public abstract class Nat160 {
    private static final long M = 4294967295L;

    public static int add(int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = (iArr[0] & M) + (iArr2[0] & M) + 0;
        iArr3[0] = (int) j4;
        long j10 = (j4 >>> 32) + (iArr[1] & M) + (iArr2[1] & M);
        iArr3[1] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[2] & M) + (iArr2[2] & M);
        iArr3[2] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[3] & M) + (iArr2[3] & M);
        iArr3[3] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[4] & M) + (iArr2[4] & M);
        iArr3[4] = (int) j13;
        return (int) (j13 >>> 32);
    }

    public static int addBothTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = (iArr[0] & M) + (iArr2[0] & M) + (iArr3[0] & M) + 0;
        iArr3[0] = (int) j4;
        long j10 = (j4 >>> 32) + (iArr[1] & M) + (iArr2[1] & M) + (iArr3[1] & M);
        iArr3[1] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[2] & M) + (iArr2[2] & M) + (iArr3[2] & M);
        iArr3[2] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[3] & M) + (iArr2[3] & M) + (iArr3[3] & M);
        iArr3[3] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[4] & M) + (iArr2[4] & M) + (iArr3[4] & M);
        iArr3[4] = (int) j13;
        return (int) (j13 >>> 32);
    }

    public static int addTo(int[] iArr, int i4, int[] iArr2, int i10, int i11) {
        int i12 = i10 + 0;
        long j4 = (i11 & M) + (iArr[i4 + 0] & M) + (iArr2[i12] & M);
        iArr2[i12] = (int) j4;
        int i13 = i10 + 1;
        long j10 = (j4 >>> 32) + (iArr[i4 + 1] & M) + (iArr2[i13] & M);
        iArr2[i13] = (int) j10;
        int i14 = i10 + 2;
        long j11 = (j10 >>> 32) + (iArr[i4 + 2] & M) + (iArr2[i14] & M);
        iArr2[i14] = (int) j11;
        int i15 = i10 + 3;
        long j12 = (j11 >>> 32) + (iArr[i4 + 3] & M) + (iArr2[i15] & M);
        iArr2[i15] = (int) j12;
        int i16 = i10 + 4;
        long j13 = (j12 >>> 32) + (iArr[i4 + 4] & M) + (M & iArr2[i16]);
        iArr2[i16] = (int) j13;
        return (int) (j13 >>> 32);
    }

    public static int addTo(int[] iArr, int[] iArr2) {
        long j4 = (iArr[0] & M) + (iArr2[0] & M) + 0;
        iArr2[0] = (int) j4;
        long j10 = (j4 >>> 32) + (iArr[1] & M) + (iArr2[1] & M);
        iArr2[1] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[2] & M) + (iArr2[2] & M);
        iArr2[2] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[3] & M) + (iArr2[3] & M);
        iArr2[3] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[4] & M) + (M & iArr2[4]);
        iArr2[4] = (int) j13;
        return (int) (j13 >>> 32);
    }

    public static int addToEachOther(int[] iArr, int i4, int[] iArr2, int i10) {
        int i11 = i4 + 0;
        int i12 = i10 + 0;
        long j4 = (iArr[i11] & M) + (iArr2[i12] & M) + 0;
        int i13 = (int) j4;
        iArr[i11] = i13;
        iArr2[i12] = i13;
        int i14 = i4 + 1;
        int i15 = i10 + 1;
        long j10 = (j4 >>> 32) + (iArr[i14] & M) + (iArr2[i15] & M);
        int i16 = (int) j10;
        iArr[i14] = i16;
        iArr2[i15] = i16;
        int i17 = i4 + 2;
        int i18 = i10 + 2;
        long j11 = (j10 >>> 32) + (iArr[i17] & M) + (iArr2[i18] & M);
        int i19 = (int) j11;
        iArr[i17] = i19;
        iArr2[i18] = i19;
        int i20 = i4 + 3;
        int i21 = i10 + 3;
        long j12 = (j11 >>> 32) + (iArr[i20] & M) + (iArr2[i21] & M);
        int i22 = (int) j12;
        iArr[i20] = i22;
        iArr2[i21] = i22;
        int i23 = i4 + 4;
        int i24 = i10 + 4;
        long j13 = (j12 >>> 32) + (iArr[i23] & M) + (M & iArr2[i24]);
        int i25 = (int) j13;
        iArr[i23] = i25;
        iArr2[i24] = i25;
        return (int) (j13 >>> 32);
    }

    public static void copy(int[] iArr, int i4, int[] iArr2, int i10) {
        iArr2[i10 + 0] = iArr[i4 + 0];
        iArr2[i10 + 1] = iArr[i4 + 1];
        iArr2[i10 + 2] = iArr[i4 + 2];
        iArr2[i10 + 3] = iArr[i4 + 3];
        iArr2[i10 + 4] = iArr[i4 + 4];
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
    }

    public static int[] create() {
        return new int[5];
    }

    public static int[] createExt() {
        return new int[10];
    }

    public static boolean diff(int[] iArr, int i4, int[] iArr2, int i10, int[] iArr3, int i11) {
        boolean gte = gte(iArr, i4, iArr2, i10);
        if (gte) {
            sub(iArr, i4, iArr2, i10, iArr3, i11);
        } else {
            sub(iArr2, i10, iArr, i4, iArr3, i11);
        }
        return gte;
    }

    public static boolean eq(int[] iArr, int[] iArr2) {
        for (int i4 = 4; i4 >= 0; i4--) {
            if (iArr[i4] != iArr2[i4]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 160) {
            throw new IllegalArgumentException();
        }
        int[] create = create();
        for (int i4 = 0; i4 < 5; i4++) {
            create[i4] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return create;
    }

    public static int getBit(int[] iArr, int i4) {
        int i10;
        if (i4 == 0) {
            i10 = iArr[0];
        } else {
            int i11 = i4 >> 5;
            if (i11 < 0 || i11 >= 5) {
                return 0;
            }
            i10 = iArr[i11] >>> (i4 & 31);
        }
        return i10 & 1;
    }

    public static boolean gte(int[] iArr, int i4, int[] iArr2, int i10) {
        for (int i11 = 4; i11 >= 0; i11--) {
            int i12 = iArr[i4 + i11] ^ Integer.MIN_VALUE;
            int i13 = Integer.MIN_VALUE ^ iArr2[i10 + i11];
            if (i12 < i13) {
                return false;
            }
            if (i12 > i13) {
                return true;
            }
        }
        return true;
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i4 = 4; i4 >= 0; i4--) {
            int i10 = iArr[i4] ^ Integer.MIN_VALUE;
            int i11 = Integer.MIN_VALUE ^ iArr2[i4];
            if (i10 < i11) {
                return false;
            }
            if (i10 > i11) {
                return true;
            }
        }
        return true;
    }

    public static boolean isOne(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i4 = 1; i4 < 5; i4++) {
            if (iArr[i4] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i4 = 0; i4 < 5; i4++) {
            if (iArr[i4] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int i4, int[] iArr2, int i10, int[] iArr3, int i11) {
        long j4 = iArr2[i10 + 0] & M;
        long j10 = iArr2[i10 + 1] & M;
        long j11 = iArr2[i10 + 2] & M;
        long j12 = iArr2[i10 + 3] & M;
        long j13 = iArr2[i10 + 4] & M;
        long j14 = iArr[i4 + 0] & M;
        long j15 = (j14 * j4) + 0;
        iArr3[i11 + 0] = (int) j15;
        long j16 = (j15 >>> 32) + (j14 * j10);
        iArr3[i11 + 1] = (int) j16;
        long j17 = (j16 >>> 32) + (j14 * j11);
        iArr3[i11 + 2] = (int) j17;
        long j18 = (j17 >>> 32) + (j14 * j12);
        iArr3[i11 + 3] = (int) j18;
        long j19 = (j18 >>> 32) + (j14 * j13);
        iArr3[i11 + 4] = (int) j19;
        iArr3[i11 + 5] = (int) (j19 >>> 32);
        int i12 = 1;
        int i13 = i11;
        int i14 = 1;
        while (i14 < 5) {
            i13 += i12;
            long j20 = iArr[i4 + i14] & M;
            int i15 = i13 + 0;
            long j21 = (j20 * j4) + (iArr3[i15] & M) + 0;
            iArr3[i15] = (int) j21;
            int i16 = i13 + 1;
            long j22 = (j21 >>> 32) + (j20 * j10) + (iArr3[i16] & M);
            iArr3[i16] = (int) j22;
            int i17 = i13 + 2;
            long j23 = (j22 >>> 32) + (j20 * j11) + (iArr3[i17] & M);
            iArr3[i17] = (int) j23;
            int i18 = i13 + 3;
            long j24 = (j23 >>> 32) + (j20 * j12) + (iArr3[i18] & M);
            iArr3[i18] = (int) j24;
            int i19 = i13 + 4;
            long j25 = (j24 >>> 32) + (j20 * j13) + (iArr3[i19] & M);
            iArr3[i19] = (int) j25;
            iArr3[i13 + 5] = (int) (j25 >>> 32);
            i14++;
            j11 = j11;
            j4 = j4;
            i12 = 1;
        }
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = iArr2[0] & M;
        int i4 = 1;
        long j10 = iArr2[1] & M;
        long j11 = iArr2[2] & M;
        long j12 = iArr2[3] & M;
        long j13 = iArr2[4] & M;
        long j14 = iArr[0] & M;
        long j15 = (j14 * j4) + 0;
        iArr3[0] = (int) j15;
        long j16 = (j15 >>> 32) + (j14 * j10);
        iArr3[1] = (int) j16;
        long j17 = (j16 >>> 32) + (j14 * j11);
        iArr3[2] = (int) j17;
        long j18 = (j17 >>> 32) + (j14 * j12);
        iArr3[3] = (int) j18;
        long j19 = (j18 >>> 32) + (j14 * j13);
        iArr3[4] = (int) j19;
        int i10 = (int) (j19 >>> 32);
        iArr3[5] = i10;
        for (int i11 = 5; i4 < i11; i11 = 5) {
            long j20 = iArr[i4] & M;
            int i12 = i4 + 0;
            long j21 = (j20 * j4) + (iArr3[i12] & M) + 0;
            iArr3[i12] = (int) j21;
            int i13 = i4 + 1;
            long j22 = j10;
            long j23 = (j21 >>> 32) + (j20 * j10) + (iArr3[i13] & M);
            iArr3[i13] = (int) j23;
            int i14 = i4 + 2;
            long j24 = j13;
            long j25 = (j23 >>> 32) + (j20 * j11) + (iArr3[i14] & M);
            iArr3[i14] = (int) j25;
            int i15 = i4 + 3;
            long j26 = (j25 >>> 32) + (j20 * j12) + (iArr3[i15] & M);
            iArr3[i15] = (int) j26;
            int i16 = i4 + 4;
            long j27 = (j26 >>> 32) + (j20 * j24) + (iArr3[i16] & M);
            iArr3[i16] = (int) j27;
            iArr3[i4 + 5] = (int) (j27 >>> 32);
            i4 = i13;
            j13 = j24;
            j4 = j4;
            j10 = j22;
        }
    }

    public static long mul33Add(int i4, int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j4 = i4 & M;
        long j10 = iArr[i10 + 0] & M;
        long j11 = (j4 * j10) + (iArr2[i11 + 0] & M) + 0;
        iArr3[i12 + 0] = (int) j11;
        long j12 = iArr[i10 + 1] & M;
        long j13 = (j11 >>> 32) + (j4 * j12) + j10 + (iArr2[i11 + 1] & M);
        iArr3[i12 + 1] = (int) j13;
        long j14 = j13 >>> 32;
        long j15 = iArr[i10 + 2] & M;
        long j16 = j14 + (j4 * j15) + j12 + (iArr2[i11 + 2] & M);
        iArr3[i12 + 2] = (int) j16;
        long j17 = iArr[i10 + 3] & M;
        long j18 = (j16 >>> 32) + (j4 * j17) + j15 + (iArr2[i11 + 3] & M);
        iArr3[i12 + 3] = (int) j18;
        long j19 = iArr[i10 + 4] & M;
        long j20 = (j18 >>> 32) + (j4 * j19) + j17 + (M & iArr2[i11 + 4]);
        iArr3[i12 + 4] = (int) j20;
        return (j20 >>> 32) + j19;
    }

    public static int mul33DWordAdd(int i4, long j4, int[] iArr, int i10) {
        long j10 = i4 & M;
        long j11 = j4 & M;
        int i11 = i10 + 0;
        long j12 = (j10 * j11) + (iArr[i11] & M) + 0;
        iArr[i11] = (int) j12;
        long j13 = j4 >>> 32;
        long j14 = (j10 * j13) + j11;
        int i12 = i10 + 1;
        long j15 = (j12 >>> 32) + j14 + (iArr[i12] & M);
        iArr[i12] = (int) j15;
        int i13 = i10 + 2;
        long j16 = (j15 >>> 32) + j13 + (iArr[i13] & M);
        iArr[i13] = (int) j16;
        int i14 = i10 + 3;
        long j17 = (j16 >>> 32) + (M & iArr[i14]);
        iArr[i14] = (int) j17;
        if ((j17 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i10, 4);
    }

    public static int mul33WordAdd(int i4, int i10, int[] iArr, int i11) {
        long j4 = i4 & M;
        long j10 = i10 & M;
        int i12 = i11 + 0;
        long j11 = (j4 * j10) + (iArr[i12] & M) + 0;
        iArr[i12] = (int) j11;
        int i13 = i11 + 1;
        long j12 = (j11 >>> 32) + j10 + (iArr[i13] & M);
        iArr[i13] = (int) j12;
        long j13 = j12 >>> 32;
        int i14 = i11 + 2;
        long j14 = j13 + (iArr[i14] & M);
        iArr[i14] = (int) j14;
        if ((j14 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i11, 3);
    }

    public static int mulAddTo(int[] iArr, int i4, int[] iArr2, int i10, int[] iArr3, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        long j4 = M;
        long j10 = iArr2[i10 + 0] & M;
        long j11 = iArr2[i10 + 1] & M;
        long j12 = iArr2[i10 + 2] & M;
        long j13 = iArr2[i10 + 3] & M;
        long j14 = iArr2[i10 + 4] & M;
        int i17 = i11;
        int i18 = 0;
        long j15 = 0;
        while (i18 < 5) {
            long j16 = iArr[i4 + i18] & j4;
            long j17 = (j16 * j10) + (iArr3[i12] & j4) + 0;
            iArr3[i17 + 0] = (int) j17;
            int i19 = i17 + 1;
            long j18 = j11;
            long j19 = (j17 >>> 32) + (j16 * j11) + (iArr3[i19] & M);
            iArr3[i19] = (int) j19;
            long j20 = j12;
            long j21 = (j19 >>> 32) + (j16 * j12) + (iArr3[i13] & M);
            iArr3[i17 + 2] = (int) j21;
            long j22 = (j21 >>> 32) + (j16 * j13) + (iArr3[i14] & M);
            iArr3[i17 + 3] = (int) j22;
            long j23 = (j22 >>> 32) + (j16 * j14) + (iArr3[i15] & M);
            iArr3[i17 + 4] = (int) j23;
            long j24 = (j23 >>> 32) + (iArr3[i16] & M) + j15;
            iArr3[i17 + 5] = (int) j24;
            j15 = j24 >>> 32;
            i18++;
            i17 = i19;
            j10 = j10;
            j4 = 4294967295L;
            j11 = j18;
            j12 = j20;
        }
        return (int) j15;
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        int i4;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        long j4 = M;
        long j10 = iArr2[0] & M;
        long j11 = iArr2[1] & M;
        long j12 = iArr2[2] & M;
        long j13 = iArr2[3] & M;
        long j14 = iArr2[4] & M;
        long j15 = 0;
        while (i14 < 5) {
            long j16 = iArr[i14] & j4;
            long j17 = (j16 * j10) + (iArr3[i4] & j4) + 0;
            iArr3[i14 + 0] = (int) j17;
            int i15 = i14 + 1;
            long j18 = j11;
            long j19 = (j17 >>> 32) + (j16 * j11) + (iArr3[i15] & M);
            iArr3[i15] = (int) j19;
            long j20 = j12;
            long j21 = (j19 >>> 32) + (j16 * j12) + (iArr3[i10] & M);
            iArr3[i14 + 2] = (int) j21;
            long j22 = (j21 >>> 32) + (j16 * j13) + (iArr3[i11] & M);
            iArr3[i14 + 3] = (int) j22;
            long j23 = (j22 >>> 32) + (j16 * j14) + (iArr3[i12] & M);
            iArr3[i14 + 4] = (int) j23;
            long j24 = (j23 >>> 32) + (iArr3[i13] & M) + j15;
            iArr3[i14 + 5] = (int) j24;
            j15 = j24 >>> 32;
            i14 = i15;
            j4 = 4294967295L;
            j10 = j10;
            j12 = j20;
            j11 = j18;
        }
        return (int) j15;
    }

    public static int mulWord(int i4, int[] iArr, int[] iArr2, int i10) {
        long j4 = i4 & M;
        long j10 = 0;
        int i11 = 0;
        do {
            long j11 = j10 + ((iArr[i11] & M) * j4);
            iArr2[i10 + i11] = (int) j11;
            j10 = j11 >>> 32;
            i11++;
        } while (i11 < 5);
        return (int) j10;
    }

    public static int mulWordAddExt(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        long j4 = i4 & M;
        int i12 = i11 + 0;
        long j10 = ((iArr[i10 + 0] & M) * j4) + (iArr2[i12] & M) + 0;
        iArr2[i12] = (int) j10;
        int i13 = i11 + 1;
        long j11 = (j10 >>> 32) + ((iArr[i10 + 1] & M) * j4) + (iArr2[i13] & M);
        iArr2[i13] = (int) j11;
        int i14 = i11 + 2;
        long j12 = (j11 >>> 32) + ((iArr[i10 + 2] & M) * j4) + (iArr2[i14] & M);
        iArr2[i14] = (int) j12;
        int i15 = i11 + 3;
        long j13 = (j12 >>> 32) + ((iArr[i10 + 3] & M) * j4) + (iArr2[i15] & M);
        iArr2[i15] = (int) j13;
        int i16 = i11 + 4;
        long j14 = (j13 >>> 32) + (j4 * (iArr[i10 + 4] & M)) + (iArr2[i16] & M);
        iArr2[i16] = (int) j14;
        return (int) (j14 >>> 32);
    }

    public static int mulWordDwordAdd(int i4, long j4, int[] iArr, int i10) {
        long j10 = i4 & M;
        int i11 = i10 + 0;
        long j11 = ((j4 & M) * j10) + (iArr[i11] & M) + 0;
        iArr[i11] = (int) j11;
        long j12 = j10 * (j4 >>> 32);
        int i12 = i10 + 1;
        long j13 = (j11 >>> 32) + j12 + (iArr[i12] & M);
        iArr[i12] = (int) j13;
        int i13 = i10 + 2;
        long j14 = (j13 >>> 32) + (iArr[i13] & M);
        iArr[i13] = (int) j14;
        if ((j14 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i10, 3);
    }

    public static int mulWordsAdd(int i4, int i10, int[] iArr, int i11) {
        long j4 = (i10 & M) * (i4 & M);
        int i12 = i11 + 0;
        long j10 = j4 + (iArr[i12] & M) + 0;
        iArr[i12] = (int) j10;
        int i13 = i11 + 1;
        long j11 = (j10 >>> 32) + (M & iArr[i13]);
        iArr[i13] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i11, 2);
    }

    public static void square(int[] iArr, int i4, int[] iArr2, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        long j4 = iArr[i4 + 0] & M;
        int i18 = 0;
        int i19 = 10;
        int i20 = 4;
        while (true) {
            int i21 = i20 - 1;
            long j10 = iArr[i4 + i20] & M;
            long j11 = j10 * j10;
            int i22 = i19 - 1;
            iArr2[i10 + i22] = (i18 << 31) | ((int) (j11 >>> 33));
            i19 = i22 - 1;
            iArr2[i10 + i19] = (int) (j11 >>> 1);
            i18 = (int) j11;
            if (i21 <= 0) {
                long j12 = j4 * j4;
                long j13 = ((i18 << 31) & M) | (j12 >>> 33);
                iArr2[i10 + 0] = (int) j12;
                long j14 = iArr[i4 + 1] & M;
                long j15 = iArr2[i11] & M;
                long j16 = j13 + (j14 * j4);
                int i23 = (int) j16;
                iArr2[i10 + 1] = (i23 << 1) | (((int) (j12 >>> 32)) & 1);
                int i24 = i23 >>> 31;
                long j17 = j15 + (j16 >>> 32);
                long j18 = iArr[i4 + 2] & M;
                long j19 = iArr2[i12] & M;
                long j20 = iArr2[i13] & M;
                long j21 = j17 + (j18 * j4);
                int i25 = (int) j21;
                iArr2[i10 + 2] = (i25 << 1) | i24;
                int i26 = i25 >>> 31;
                long j22 = j19 + (j21 >>> 32) + (j18 * j14);
                long j23 = j20 + (j22 >>> 32);
                long j24 = j22 & M;
                long j25 = iArr[i4 + 3] & M;
                long j26 = (iArr2[i14] & M) + (j23 >>> 32);
                long j27 = j23 & M;
                long j28 = (iArr2[i15] & M) + (j26 >>> 32);
                long j29 = j26 & M;
                long j30 = j24 + (j25 * j4);
                int i27 = (int) j30;
                iArr2[i10 + 3] = (i27 << 1) | i26;
                long j31 = j27 + (j30 >>> 32) + (j25 * j14);
                long j32 = j29 + (j31 >>> 32) + (j25 * j18);
                long j33 = j31 & M;
                long j34 = j28 + (j32 >>> 32);
                long j35 = j32 & M;
                long j36 = iArr[i4 + 4] & M;
                long j37 = (iArr2[i16] & M) + (j34 >>> 32);
                long j38 = j34 & M;
                long j39 = j37 & M;
                long j40 = j33 + (j4 * j36);
                int i28 = (int) j40;
                iArr2[i10 + 4] = (i28 << 1) | (i27 >>> 31);
                long j41 = j35 + (j40 >>> 32) + (j36 * j14);
                long j42 = j38 + (j41 >>> 32) + (j36 * j18);
                long j43 = j39 + (j42 >>> 32) + (j36 * j25);
                long j44 = (iArr2[i17] & M) + (j37 >>> 32) + (j43 >>> 32);
                int i29 = (int) j41;
                iArr2[i10 + 5] = (i28 >>> 31) | (i29 << 1);
                int i30 = (int) j42;
                iArr2[i10 + 6] = (i29 >>> 31) | (i30 << 1);
                int i31 = (int) j43;
                iArr2[i10 + 7] = (i30 >>> 31) | (i31 << 1);
                int i32 = i31 >>> 31;
                int i33 = (int) j44;
                iArr2[i10 + 8] = i32 | (i33 << 1);
                int i34 = i33 >>> 31;
                int i35 = i10 + 9;
                iArr2[i35] = i34 | ((iArr2[i35] + ((int) (j44 >>> 32))) << 1);
                return;
            }
            i20 = i21;
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j4 = iArr[0] & M;
        int i4 = 10;
        int i10 = 4;
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            long j10 = iArr[i10] & M;
            long j11 = j10 * j10;
            int i13 = i4 - 1;
            iArr2[i13] = (i11 << 31) | ((int) (j11 >>> 33));
            i4 = i13 - 1;
            iArr2[i4] = (int) (j11 >>> 1);
            int i14 = (int) j11;
            if (i12 <= 0) {
                long j12 = j4 * j4;
                long j13 = ((i14 << 31) & M) | (j12 >>> 33);
                iArr2[0] = (int) j12;
                long j14 = iArr[1] & M;
                long j15 = iArr2[2] & M;
                long j16 = j13 + (j14 * j4);
                int i15 = (int) j16;
                iArr2[1] = (i15 << 1) | (((int) (j12 >>> 32)) & 1);
                long j17 = j15 + (j16 >>> 32);
                long j18 = iArr[2] & M;
                long j19 = iArr2[3] & M;
                long j20 = iArr2[4] & M;
                long j21 = j17 + (j18 * j4);
                int i16 = (int) j21;
                iArr2[2] = (i16 << 1) | (i15 >>> 31);
                long j22 = j19 + (j21 >>> 32) + (j18 * j14);
                long j23 = j20 + (j22 >>> 32);
                long j24 = j22 & M;
                long j25 = iArr[3] & M;
                long j26 = (iArr2[5] & M) + (j23 >>> 32);
                long j27 = j23 & M;
                long j28 = (iArr2[6] & M) + (j26 >>> 32);
                long j29 = j26 & M;
                long j30 = j24 + (j25 * j4);
                int i17 = (int) j30;
                iArr2[3] = (i17 << 1) | (i16 >>> 31);
                int i18 = i17 >>> 31;
                long j31 = j27 + (j30 >>> 32) + (j25 * j14);
                long j32 = j29 + (j31 >>> 32) + (j25 * j18);
                long j33 = j31 & M;
                long j34 = j28 + (j32 >>> 32);
                long j35 = j32 & M;
                long j36 = iArr[4] & M;
                long j37 = (iArr2[7] & M) + (j34 >>> 32);
                long j38 = j34 & M;
                long j39 = M & j37;
                long j40 = j33 + (j36 * j4);
                int i19 = (int) j40;
                iArr2[4] = i18 | (i19 << 1);
                long j41 = j35 + (j40 >>> 32) + (j14 * j36);
                long j42 = j38 + (j41 >>> 32) + (j36 * j18);
                long j43 = j39 + (j42 >>> 32) + (j36 * j25);
                long j44 = (iArr2[8] & M) + (j37 >>> 32) + (j43 >>> 32);
                int i20 = (int) j41;
                iArr2[5] = (i19 >>> 31) | (i20 << 1);
                int i21 = (int) j42;
                iArr2[6] = (i21 << 1) | (i20 >>> 31);
                int i22 = i21 >>> 31;
                int i23 = (int) j43;
                iArr2[7] = i22 | (i23 << 1);
                int i24 = i23 >>> 31;
                int i25 = (int) j44;
                iArr2[8] = i24 | (i25 << 1);
                iArr2[9] = (i25 >>> 31) | ((iArr2[9] + ((int) (j44 >>> 32))) << 1);
                return;
            }
            i10 = i12;
            i11 = i14;
        }
    }

    public static int sub(int[] iArr, int i4, int[] iArr2, int i10, int[] iArr3, int i11) {
        long j4 = ((iArr[i4 + 0] & M) - (iArr2[i10 + 0] & M)) + 0;
        iArr3[i11 + 0] = (int) j4;
        long j10 = (j4 >> 32) + ((iArr[i4 + 1] & M) - (iArr2[i10 + 1] & M));
        iArr3[i11 + 1] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr[i4 + 2] & M) - (iArr2[i10 + 2] & M));
        iArr3[i11 + 2] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr[i4 + 3] & M) - (iArr2[i10 + 3] & M));
        iArr3[i11 + 3] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr[i4 + 4] & M) - (iArr2[i10 + 4] & M));
        iArr3[i11 + 4] = (int) j13;
        return (int) (j13 >> 32);
    }

    public static int sub(int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = ((iArr[0] & M) - (iArr2[0] & M)) + 0;
        iArr3[0] = (int) j4;
        long j10 = (j4 >> 32) + ((iArr[1] & M) - (iArr2[1] & M));
        iArr3[1] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr[2] & M) - (iArr2[2] & M));
        iArr3[2] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr[3] & M) - (iArr2[3] & M));
        iArr3[3] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr[4] & M) - (iArr2[4] & M));
        iArr3[4] = (int) j13;
        return (int) (j13 >> 32);
    }

    public static int subBothFrom(int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = (((iArr3[0] & M) - (iArr[0] & M)) - (iArr2[0] & M)) + 0;
        iArr3[0] = (int) j4;
        long j10 = (j4 >> 32) + (((iArr3[1] & M) - (iArr[1] & M)) - (iArr2[1] & M));
        iArr3[1] = (int) j10;
        long j11 = (j10 >> 32) + (((iArr3[2] & M) - (iArr[2] & M)) - (iArr2[2] & M));
        iArr3[2] = (int) j11;
        long j12 = (j11 >> 32) + (((iArr3[3] & M) - (iArr[3] & M)) - (iArr2[3] & M));
        iArr3[3] = (int) j12;
        long j13 = (j12 >> 32) + (((iArr3[4] & M) - (iArr[4] & M)) - (iArr2[4] & M));
        iArr3[4] = (int) j13;
        return (int) (j13 >> 32);
    }

    public static int subFrom(int[] iArr, int i4, int[] iArr2, int i10) {
        int i11 = i10 + 0;
        long j4 = ((iArr2[i11] & M) - (iArr[i4 + 0] & M)) + 0;
        iArr2[i11] = (int) j4;
        int i12 = i10 + 1;
        long j10 = (j4 >> 32) + ((iArr2[i12] & M) - (iArr[i4 + 1] & M));
        iArr2[i12] = (int) j10;
        int i13 = i10 + 2;
        long j11 = (j10 >> 32) + ((iArr2[i13] & M) - (iArr[i4 + 2] & M));
        iArr2[i13] = (int) j11;
        int i14 = i10 + 3;
        long j12 = (j11 >> 32) + ((iArr2[i14] & M) - (iArr[i4 + 3] & M));
        iArr2[i14] = (int) j12;
        int i15 = i10 + 4;
        long j13 = (j12 >> 32) + ((iArr2[i15] & M) - (iArr[i4 + 4] & M));
        iArr2[i15] = (int) j13;
        return (int) (j13 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2) {
        long j4 = ((iArr2[0] & M) - (iArr[0] & M)) + 0;
        iArr2[0] = (int) j4;
        long j10 = (j4 >> 32) + ((iArr2[1] & M) - (iArr[1] & M));
        iArr2[1] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr2[2] & M) - (iArr[2] & M));
        iArr2[2] = (int) j11;
        long j12 = (j11 >> 32) + ((iArr2[3] & M) - (iArr[3] & M));
        iArr2[3] = (int) j12;
        long j13 = (j12 >> 32) + ((iArr2[4] & M) - (M & iArr[4]));
        iArr2[4] = (int) j13;
        return (int) (j13 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[20];
        for (int i4 = 0; i4 < 5; i4++) {
            int i10 = iArr[i4];
            if (i10 != 0) {
                Pack.intToBigEndian(i10, bArr, (4 - i4) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
    }
}
