package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public abstract class Nat224 {
    private static final long M = 4294967295L;

    public static int add(int[] iArr, int i4, int[] iArr2, int i10, int[] iArr3, int i11) {
        long j4 = (iArr[i4 + 0] & M) + (iArr2[i10 + 0] & M) + 0;
        iArr3[i11 + 0] = (int) j4;
        long j10 = (j4 >>> 32) + (iArr[i4 + 1] & M) + (iArr2[i10 + 1] & M);
        iArr3[i11 + 1] = (int) j10;
        long j11 = (j10 >>> 32) + (iArr[i4 + 2] & M) + (iArr2[i10 + 2] & M);
        iArr3[i11 + 2] = (int) j11;
        long j12 = (j11 >>> 32) + (iArr[i4 + 3] & M) + (iArr2[i10 + 3] & M);
        iArr3[i11 + 3] = (int) j12;
        long j13 = (j12 >>> 32) + (iArr[i4 + 4] & M) + (iArr2[i10 + 4] & M);
        iArr3[i11 + 4] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[i4 + 5] & M) + (iArr2[i10 + 5] & M);
        iArr3[i11 + 5] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[i4 + 6] & M) + (iArr2[i10 + 6] & M);
        iArr3[i11 + 6] = (int) j15;
        return (int) (j15 >>> 32);
    }

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
        long j14 = (j13 >>> 32) + (iArr[5] & M) + (iArr2[5] & M);
        iArr3[5] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[6] & M) + (iArr2[6] & M);
        iArr3[6] = (int) j15;
        return (int) (j15 >>> 32);
    }

    public static int addBothTo(int[] iArr, int i4, int[] iArr2, int i10, int[] iArr3, int i11) {
        int i12 = i11 + 0;
        long j4 = (iArr[i4 + 0] & M) + (iArr2[i10 + 0] & M) + (iArr3[i12] & M) + 0;
        iArr3[i12] = (int) j4;
        int i13 = i11 + 1;
        long j10 = (j4 >>> 32) + (iArr[i4 + 1] & M) + (iArr2[i10 + 1] & M) + (iArr3[i13] & M);
        iArr3[i13] = (int) j10;
        int i14 = i11 + 2;
        long j11 = (j10 >>> 32) + (iArr[i4 + 2] & M) + (iArr2[i10 + 2] & M) + (iArr3[i14] & M);
        iArr3[i14] = (int) j11;
        int i15 = i11 + 3;
        long j12 = (j11 >>> 32) + (iArr[i4 + 3] & M) + (iArr2[i10 + 3] & M) + (iArr3[i15] & M);
        iArr3[i15] = (int) j12;
        int i16 = i11 + 4;
        long j13 = (j12 >>> 32) + (iArr[i4 + 4] & M) + (iArr2[i10 + 4] & M) + (iArr3[i16] & M);
        iArr3[i16] = (int) j13;
        int i17 = i11 + 5;
        long j14 = (j13 >>> 32) + (iArr[i4 + 5] & M) + (iArr2[i10 + 5] & M) + (iArr3[i17] & M);
        iArr3[i17] = (int) j14;
        int i18 = i11 + 6;
        long j15 = (j14 >>> 32) + (iArr[i4 + 6] & M) + (iArr2[i10 + 6] & M) + (iArr3[i18] & M);
        iArr3[i18] = (int) j15;
        return (int) (j15 >>> 32);
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
        long j14 = (j13 >>> 32) + (iArr[5] & M) + (iArr2[5] & M) + (iArr3[5] & M);
        iArr3[5] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[6] & M) + (iArr2[6] & M) + (iArr3[6] & M);
        iArr3[6] = (int) j15;
        return (int) (j15 >>> 32);
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
        long j13 = (j12 >>> 32) + (iArr[i4 + 4] & M) + (iArr2[i16] & M);
        iArr2[i16] = (int) j13;
        int i17 = i10 + 5;
        long j14 = (j13 >>> 32) + (iArr[i4 + 5] & M) + (iArr2[i17] & M);
        iArr2[i17] = (int) j14;
        int i18 = i10 + 6;
        long j15 = (j14 >>> 32) + (iArr[i4 + 6] & M) + (M & iArr2[i18]);
        iArr2[i18] = (int) j15;
        return (int) (j15 >>> 32);
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
        long j13 = (j12 >>> 32) + (iArr[4] & M) + (iArr2[4] & M);
        iArr2[4] = (int) j13;
        long j14 = (j13 >>> 32) + (iArr[5] & M) + (iArr2[5] & M);
        iArr2[5] = (int) j14;
        long j15 = (j14 >>> 32) + (iArr[6] & M) + (M & iArr2[6]);
        iArr2[6] = (int) j15;
        return (int) (j15 >>> 32);
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
        long j13 = (j12 >>> 32) + (iArr[i23] & M) + (iArr2[i24] & M);
        int i25 = (int) j13;
        iArr[i23] = i25;
        iArr2[i24] = i25;
        int i26 = i4 + 5;
        int i27 = i10 + 5;
        long j14 = (j13 >>> 32) + (iArr[i26] & M) + (iArr2[i27] & M);
        int i28 = (int) j14;
        iArr[i26] = i28;
        iArr2[i27] = i28;
        int i29 = i4 + 6;
        int i30 = i10 + 6;
        long j15 = (j14 >>> 32) + (iArr[i29] & M) + (M & iArr2[i30]);
        int i31 = (int) j15;
        iArr[i29] = i31;
        iArr2[i30] = i31;
        return (int) (j15 >>> 32);
    }

    public static void copy(int[] iArr, int i4, int[] iArr2, int i10) {
        iArr2[i10 + 0] = iArr[i4 + 0];
        iArr2[i10 + 1] = iArr[i4 + 1];
        iArr2[i10 + 2] = iArr[i4 + 2];
        iArr2[i10 + 3] = iArr[i4 + 3];
        iArr2[i10 + 4] = iArr[i4 + 4];
        iArr2[i10 + 5] = iArr[i4 + 5];
        iArr2[i10 + 6] = iArr[i4 + 6];
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
    }

    public static int[] create() {
        return new int[7];
    }

    public static int[] createExt() {
        return new int[14];
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
        for (int i4 = 6; i4 >= 0; i4--) {
            if (iArr[i4] != iArr2[i4]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 224) {
            throw new IllegalArgumentException();
        }
        int[] create = create();
        for (int i4 = 0; i4 < 7; i4++) {
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
            if (i11 < 0 || i11 >= 7) {
                return 0;
            }
            i10 = iArr[i11] >>> (i4 & 31);
        }
        return i10 & 1;
    }

    public static boolean gte(int[] iArr, int i4, int[] iArr2, int i10) {
        for (int i11 = 6; i11 >= 0; i11--) {
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
        for (int i4 = 6; i4 >= 0; i4--) {
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
        for (int i4 = 1; i4 < 7; i4++) {
            if (iArr[i4] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i4 = 0; i4 < 7; i4++) {
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
        long j14 = iArr2[i10 + 5] & M;
        long j15 = iArr2[i10 + 6] & M;
        long j16 = iArr[i4 + 0] & M;
        long j17 = (j16 * j4) + 0;
        iArr3[i11 + 0] = (int) j17;
        long j18 = (j17 >>> 32) + (j16 * j10);
        iArr3[i11 + 1] = (int) j18;
        long j19 = (j18 >>> 32) + (j16 * j11);
        iArr3[i11 + 2] = (int) j19;
        long j20 = (j19 >>> 32) + (j16 * j12);
        iArr3[i11 + 3] = (int) j20;
        long j21 = (j20 >>> 32) + (j16 * j13);
        iArr3[i11 + 4] = (int) j21;
        long j22 = (j21 >>> 32) + (j16 * j14);
        iArr3[i11 + 5] = (int) j22;
        long j23 = j15;
        long j24 = (j22 >>> 32) + (j16 * j23);
        iArr3[i11 + 6] = (int) j24;
        iArr3[i11 + 7] = (int) (j24 >>> 32);
        int i12 = 1;
        int i13 = i11;
        int i14 = 1;
        while (i14 < 7) {
            i13 += i12;
            long j25 = iArr[i4 + i14] & M;
            int i15 = i13 + 0;
            long j26 = (j25 * j4) + (iArr3[i15] & M) + 0;
            iArr3[i15] = (int) j26;
            int i16 = i13 + 1;
            long j27 = j23;
            long j28 = (j26 >>> 32) + (j25 * j10) + (iArr3[i16] & M);
            iArr3[i16] = (int) j28;
            int i17 = i13 + 2;
            long j29 = j11;
            long j30 = (j28 >>> 32) + (j25 * j11) + (iArr3[i17] & M);
            iArr3[i17] = (int) j30;
            int i18 = i13 + 3;
            long j31 = (j30 >>> 32) + (j25 * j12) + (iArr3[i18] & M);
            iArr3[i18] = (int) j31;
            int i19 = i13 + 4;
            long j32 = (j31 >>> 32) + (j25 * j13) + (iArr3[i19] & M);
            iArr3[i19] = (int) j32;
            int i20 = i13 + 5;
            long j33 = (j32 >>> 32) + (j25 * j14) + (iArr3[i20] & M);
            iArr3[i20] = (int) j33;
            int i21 = i13 + 6;
            long j34 = (j33 >>> 32) + (j25 * j27) + (iArr3[i21] & M);
            iArr3[i21] = (int) j34;
            iArr3[i13 + 7] = (int) (j34 >>> 32);
            i14++;
            j11 = j29;
            j23 = j27;
            j12 = j12;
            i12 = 1;
        }
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j4 = iArr2[0] & M;
        long j10 = iArr2[1] & M;
        long j11 = iArr2[2] & M;
        long j12 = iArr2[3] & M;
        long j13 = iArr2[4] & M;
        long j14 = iArr2[5] & M;
        long j15 = iArr2[6] & M;
        long j16 = iArr[0] & M;
        long j17 = (j16 * j4) + 0;
        iArr3[0] = (int) j17;
        long j18 = (j17 >>> 32) + (j16 * j10);
        iArr3[1] = (int) j18;
        long j19 = (j18 >>> 32) + (j16 * j11);
        iArr3[2] = (int) j19;
        long j20 = (j19 >>> 32) + (j16 * j12);
        iArr3[3] = (int) j20;
        long j21 = (j20 >>> 32) + (j16 * j13);
        iArr3[4] = (int) j21;
        long j22 = (j21 >>> 32) + (j16 * j14);
        iArr3[5] = (int) j22;
        long j23 = (j22 >>> 32) + (j16 * j15);
        iArr3[6] = (int) j23;
        int i4 = (int) (j23 >>> 32);
        iArr3[7] = i4;
        int i10 = 1;
        for (int i11 = 7; i10 < i11; i11 = 7) {
            long j24 = iArr[i10] & M;
            int i12 = i10 + 0;
            long j25 = (j24 * j4) + (iArr3[i12] & M) + 0;
            iArr3[i12] = (int) j25;
            int i13 = i10 + 1;
            long j26 = j10;
            long j27 = (j25 >>> 32) + (j24 * j10) + (iArr3[i13] & M);
            iArr3[i13] = (int) j27;
            int i14 = i10 + 2;
            long j28 = j14;
            long j29 = (j27 >>> 32) + (j24 * j11) + (iArr3[i14] & M);
            iArr3[i14] = (int) j29;
            int i15 = i10 + 3;
            long j30 = (j29 >>> 32) + (j24 * j12) + (iArr3[i15] & M);
            iArr3[i15] = (int) j30;
            int i16 = i10 + 4;
            long j31 = (j30 >>> 32) + (j24 * j13) + (iArr3[i16] & M);
            iArr3[i16] = (int) j31;
            int i17 = i10 + 5;
            long j32 = (j31 >>> 32) + (j24 * j28) + (iArr3[i17] & M);
            iArr3[i17] = (int) j32;
            int i18 = i10 + 6;
            long j33 = (j32 >>> 32) + (j24 * j15) + (iArr3[i18] & M);
            iArr3[i18] = (int) j33;
            iArr3[i10 + 7] = (int) (j33 >>> 32);
            i10 = i13;
            j4 = j4;
            j10 = j26;
            j14 = j28;
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
        long j20 = (j18 >>> 32) + (j4 * j19) + j17 + (iArr2[i11 + 4] & M);
        iArr3[i12 + 4] = (int) j20;
        long j21 = iArr[i10 + 5] & M;
        long j22 = (j20 >>> 32) + (j4 * j21) + j19 + (iArr2[i11 + 5] & M);
        iArr3[i12 + 5] = (int) j22;
        long j23 = iArr[i10 + 6] & M;
        long j24 = (j22 >>> 32) + (j4 * j23) + j21 + (M & iArr2[i11 + 6]);
        iArr3[i12 + 6] = (int) j24;
        return (j24 >>> 32) + j23;
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
        return Nat.incAt(7, iArr, i10, 4);
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
        return Nat.incAt(7, iArr, i11, 3);
    }

    public static int mulAddTo(int[] iArr, int i4, int[] iArr2, int i10, int[] iArr3, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        long j4 = iArr2[i10 + 0] & M;
        long j10 = iArr2[i10 + 1] & M;
        long j11 = iArr2[i10 + 2] & M;
        long j12 = iArr2[i10 + 3] & M;
        long j13 = iArr2[i10 + 4] & M;
        long j14 = iArr2[i10 + 5] & M;
        long j15 = iArr2[i10 + 6] & M;
        int i19 = i11;
        long j16 = 0;
        int i20 = 0;
        while (i20 < 7) {
            int i21 = i20;
            long j17 = iArr[i4 + i20] & M;
            long j18 = j4;
            long j19 = (j17 * j4) + (iArr3[i12] & M) + 0;
            long j20 = j15;
            iArr3[i19 + 0] = (int) j19;
            int i22 = i19 + 1;
            long j21 = (j19 >>> 32) + (j17 * j10) + (iArr3[i22] & M);
            iArr3[i22] = (int) j21;
            long j22 = (j21 >>> 32) + (j17 * j11) + (iArr3[i13] & M);
            iArr3[i19 + 2] = (int) j22;
            long j23 = (j22 >>> 32) + (j17 * j12) + (iArr3[i14] & M);
            iArr3[i19 + 3] = (int) j23;
            long j24 = (j23 >>> 32) + (j17 * j13) + (iArr3[i15] & M);
            iArr3[i19 + 4] = (int) j24;
            long j25 = (j24 >>> 32) + (j17 * j14) + (iArr3[i16] & M);
            iArr3[i19 + 5] = (int) j25;
            long j26 = (j25 >>> 32) + (j17 * j20) + (iArr3[i17] & M);
            iArr3[i19 + 6] = (int) j26;
            long j27 = (j26 >>> 32) + (iArr3[i18] & M) + j16;
            iArr3[i19 + 7] = (int) j27;
            j16 = j27 >>> 32;
            i20 = i21 + 1;
            i19 = i22;
            j15 = j20;
            j4 = j18;
            j10 = j10;
        }
        return (int) j16;
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        int i4;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        long j4 = iArr2[0] & M;
        long j10 = iArr2[1] & M;
        long j11 = iArr2[2] & M;
        long j12 = iArr2[3] & M;
        long j13 = iArr2[4] & M;
        long j14 = iArr2[5] & M;
        long j15 = iArr2[6] & M;
        long j16 = 0;
        int i16 = 0;
        while (i16 < 7) {
            long j17 = j15;
            long j18 = iArr[i16] & M;
            long j19 = j14;
            long j20 = (j18 * j4) + (iArr3[i4] & M) + 0;
            iArr3[i16 + 0] = (int) j20;
            int i17 = i16 + 1;
            long j21 = j10;
            long j22 = (j20 >>> 32) + (j18 * j10) + (iArr3[i17] & M);
            iArr3[i17] = (int) j22;
            long j23 = (j22 >>> 32) + (j18 * j11) + (iArr3[i10] & M);
            iArr3[i16 + 2] = (int) j23;
            long j24 = (j23 >>> 32) + (j18 * j12) + (iArr3[i11] & M);
            iArr3[i16 + 3] = (int) j24;
            long j25 = (j24 >>> 32) + (j18 * j13) + (iArr3[i12] & M);
            iArr3[i16 + 4] = (int) j25;
            long j26 = (j25 >>> 32) + (j18 * j19) + (iArr3[i13] & M);
            iArr3[i16 + 5] = (int) j26;
            long j27 = (j26 >>> 32) + (j18 * j17) + (iArr3[i14] & M);
            iArr3[i16 + 6] = (int) j27;
            long j28 = (j27 >>> 32) + (iArr3[i15] & M) + j16;
            iArr3[i16 + 7] = (int) j28;
            j16 = j28 >>> 32;
            i16 = i17;
            j15 = j17;
            j14 = j19;
            j10 = j21;
        }
        return (int) j16;
    }

    public static int mulByWord(int i4, int[] iArr) {
        long j4 = i4 & M;
        long j10 = ((iArr[0] & M) * j4) + 0;
        iArr[0] = (int) j10;
        long j11 = (j10 >>> 32) + ((iArr[1] & M) * j4);
        iArr[1] = (int) j11;
        long j12 = (j11 >>> 32) + ((iArr[2] & M) * j4);
        iArr[2] = (int) j12;
        long j13 = (j12 >>> 32) + ((iArr[3] & M) * j4);
        iArr[3] = (int) j13;
        long j14 = (j13 >>> 32) + ((iArr[4] & M) * j4);
        iArr[4] = (int) j14;
        long j15 = (j14 >>> 32) + ((iArr[5] & M) * j4);
        iArr[5] = (int) j15;
        long j16 = (j15 >>> 32) + (j4 * (M & iArr[6]));
        iArr[6] = (int) j16;
        return (int) (j16 >>> 32);
    }

    public static int mulByWordAddTo(int i4, int[] iArr, int[] iArr2) {
        long j4 = i4 & M;
        long j10 = ((iArr2[0] & M) * j4) + (iArr[0] & M) + 0;
        iArr2[0] = (int) j10;
        long j11 = (j10 >>> 32) + ((iArr2[1] & M) * j4) + (iArr[1] & M);
        iArr2[1] = (int) j11;
        long j12 = (j11 >>> 32) + ((iArr2[2] & M) * j4) + (iArr[2] & M);
        iArr2[2] = (int) j12;
        long j13 = (j12 >>> 32) + ((iArr2[3] & M) * j4) + (iArr[3] & M);
        iArr2[3] = (int) j13;
        long j14 = (j13 >>> 32) + ((iArr2[4] & M) * j4) + (iArr[4] & M);
        iArr2[4] = (int) j14;
        long j15 = (j14 >>> 32) + ((iArr2[5] & M) * j4) + (iArr[5] & M);
        iArr2[5] = (int) j15;
        long j16 = (j15 >>> 32) + (j4 * (iArr2[6] & M)) + (M & iArr[6]);
        iArr2[6] = (int) j16;
        return (int) (j16 >>> 32);
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
        } while (i11 < 7);
        return (int) j10;
    }

    public static int mulWordAddTo(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
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
        long j14 = (j13 >>> 32) + ((iArr[i10 + 4] & M) * j4) + (iArr2[i16] & M);
        iArr2[i16] = (int) j14;
        int i17 = i11 + 5;
        long j15 = (j14 >>> 32) + ((iArr[i10 + 5] & M) * j4) + (iArr2[i17] & M);
        iArr2[i17] = (int) j15;
        int i18 = i11 + 6;
        long j16 = (j15 >>> 32) + (j4 * (iArr[i10 + 6] & M)) + (iArr2[i18] & M);
        iArr2[i18] = (int) j16;
        return (int) (j16 >>> 32);
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
        return Nat.incAt(7, iArr, i10, 3);
    }

    public static void square(int[] iArr, int i4, int[] iArr2, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        long j4 = iArr[i4 + 0] & M;
        int i22 = 0;
        int i23 = 14;
        int i24 = 6;
        while (true) {
            int i25 = i24 - 1;
            long j10 = iArr[i4 + i24] & M;
            long j11 = j10 * j10;
            int i26 = i23 - 1;
            iArr2[i10 + i26] = (i22 << 31) | ((int) (j11 >>> 33));
            i23 = i26 - 1;
            iArr2[i10 + i23] = (int) (j11 >>> 1);
            i22 = (int) j11;
            if (i25 <= 0) {
                long j12 = j4 * j4;
                long j13 = ((i22 << 31) & M) | (j12 >>> 33);
                iArr2[i10 + 0] = (int) j12;
                long j14 = iArr[i4 + 1] & M;
                long j15 = iArr2[i11] & M;
                long j16 = j13 + (j14 * j4);
                int i27 = (int) j16;
                iArr2[i10 + 1] = (i27 << 1) | (((int) (j12 >>> 32)) & 1);
                int i28 = i27 >>> 31;
                long j17 = j15 + (j16 >>> 32);
                long j18 = iArr[i4 + 2] & M;
                long j19 = iArr2[i12] & M;
                long j20 = iArr2[i13] & M;
                long j21 = j17 + (j18 * j4);
                int i29 = (int) j21;
                iArr2[i10 + 2] = (i29 << 1) | i28;
                int i30 = i29 >>> 31;
                long j22 = j19 + (j21 >>> 32) + (j18 * j14);
                long j23 = j20 + (j22 >>> 32);
                long j24 = j22 & M;
                long j25 = iArr[i4 + 3] & M;
                long j26 = (iArr2[i14] & M) + (j23 >>> 32);
                long j27 = j23 & M;
                long j28 = (iArr2[i15] & M) + (j26 >>> 32);
                long j29 = j26 & M;
                long j30 = j24 + (j25 * j4);
                int i31 = (int) j30;
                iArr2[i10 + 3] = (i31 << 1) | i30;
                long j31 = j27 + (j30 >>> 32) + (j25 * j14);
                long j32 = j29 + (j31 >>> 32) + (j25 * j18);
                long j33 = j31 & M;
                long j34 = j28 + (j32 >>> 32);
                long j35 = j32 & M;
                long j36 = iArr[i4 + 4] & M;
                long j37 = (iArr2[i16] & M) + (j34 >>> 32);
                long j38 = j34 & M;
                long j39 = (iArr2[i17] & M) + (j37 >>> 32);
                long j40 = j37 & M;
                long j41 = j33 + (j36 * j4);
                int i32 = (int) j41;
                iArr2[i10 + 4] = (i31 >>> 31) | (i32 << 1);
                int i33 = i32 >>> 31;
                long j42 = j35 + (j41 >>> 32) + (j36 * j14);
                long j43 = j38 + (j42 >>> 32) + (j36 * j18);
                long j44 = j42 & M;
                long j45 = j40 + (j43 >>> 32) + (j36 * j25);
                long j46 = j43 & M;
                long j47 = j39 + (j45 >>> 32);
                long j48 = j45 & M;
                long j49 = iArr[i4 + 5] & M;
                long j50 = (iArr2[i18] & M) + (j47 >>> 32);
                long j51 = j47 & M;
                long j52 = j50 & M;
                long j53 = j44 + (j49 * j4);
                int i34 = (int) j53;
                iArr2[i10 + 5] = i33 | (i34 << 1);
                int i35 = i34 >>> 31;
                long j54 = j46 + (j53 >>> 32) + (j49 * j14);
                long j55 = j48 + (j54 >>> 32) + (j49 * j18);
                long j56 = j54 & M;
                long j57 = j51 + (j55 >>> 32) + (j49 * j25);
                long j58 = j55 & M;
                long j59 = j52 + (j57 >>> 32) + (j49 * j36);
                long j60 = j57 & M;
                long j61 = (iArr2[i19] & M) + (j50 >>> 32) + (j59 >>> 32);
                long j62 = j59 & M;
                long j63 = iArr[i4 + 6] & M;
                long j64 = (iArr2[i20] & M) + (j61 >>> 32);
                long j65 = j61 & M;
                long j66 = j64 & M;
                long j67 = j56 + (j4 * j63);
                int i36 = (int) j67;
                iArr2[i10 + 6] = (i36 << 1) | i35;
                long j68 = j58 + (j67 >>> 32) + (j63 * j14);
                long j69 = j60 + (j68 >>> 32) + (j63 * j18);
                long j70 = j62 + (j69 >>> 32) + (j63 * j25);
                long j71 = j65 + (j70 >>> 32) + (j63 * j36);
                long j72 = j66 + (j71 >>> 32) + (j63 * j49);
                long j73 = (iArr2[i21] & M) + (j64 >>> 32) + (j72 >>> 32);
                int i37 = (int) j68;
                iArr2[i10 + 7] = (i36 >>> 31) | (i37 << 1);
                int i38 = (int) j69;
                iArr2[i10 + 8] = (i37 >>> 31) | (i38 << 1);
                int i39 = (int) j70;
                iArr2[i10 + 9] = (i38 >>> 31) | (i39 << 1);
                int i40 = i39 >>> 31;
                int i41 = (int) j71;
                iArr2[i10 + 10] = i40 | (i41 << 1);
                int i42 = i41 >>> 31;
                int i43 = (int) j72;
                iArr2[i10 + 11] = i42 | (i43 << 1);
                int i44 = i43 >>> 31;
                int i45 = (int) j73;
                iArr2[i10 + 12] = i44 | (i45 << 1);
                int i46 = i45 >>> 31;
                int i47 = i10 + 13;
                iArr2[i47] = i46 | ((iArr2[i47] + ((int) (j73 >>> 32))) << 1);
                return;
            }
            i24 = i25;
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j4 = iArr[0] & M;
        int i4 = 14;
        int i10 = 6;
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
                int i16 = i15 >>> 31;
                long j17 = j15 + (j16 >>> 32);
                long j18 = iArr[2] & M;
                long j19 = iArr2[3] & M;
                long j20 = iArr2[4] & M;
                long j21 = j17 + (j18 * j4);
                int i17 = (int) j21;
                iArr2[2] = (i17 << 1) | i16;
                long j22 = j19 + (j21 >>> 32) + (j18 * j14);
                long j23 = j20 + (j22 >>> 32);
                long j24 = j22 & M;
                long j25 = iArr[3] & M;
                long j26 = (iArr2[5] & M) + (j23 >>> 32);
                long j27 = j23 & M;
                long j28 = (iArr2[6] & M) + (j26 >>> 32);
                long j29 = j26 & M;
                long j30 = j24 + (j25 * j4);
                int i18 = (int) j30;
                iArr2[3] = (i17 >>> 31) | (i18 << 1);
                int i19 = i18 >>> 31;
                long j31 = j27 + (j30 >>> 32) + (j25 * j14);
                long j32 = j29 + (j31 >>> 32) + (j25 * j18);
                long j33 = j31 & M;
                long j34 = j28 + (j32 >>> 32);
                long j35 = j32 & M;
                long j36 = iArr[4] & M;
                long j37 = (iArr2[7] & M) + (j34 >>> 32);
                long j38 = j34 & M;
                long j39 = (iArr2[8] & M) + (j37 >>> 32);
                long j40 = j37 & M;
                long j41 = j33 + (j36 * j4);
                int i20 = (int) j41;
                iArr2[4] = (i20 << 1) | i19;
                long j42 = j35 + (j41 >>> 32) + (j36 * j14);
                long j43 = j38 + (j42 >>> 32) + (j36 * j18);
                long j44 = j42 & M;
                long j45 = j40 + (j43 >>> 32) + (j36 * j25);
                long j46 = j43 & M;
                long j47 = j39 + (j45 >>> 32);
                long j48 = j45 & M;
                long j49 = iArr[5] & M;
                long j50 = (iArr2[9] & M) + (j47 >>> 32);
                long j51 = j47 & M;
                long j52 = (iArr2[10] & M) + (j50 >>> 32);
                long j53 = j50 & M;
                long j54 = j44 + (j49 * j4);
                int i21 = (int) j54;
                iArr2[5] = (i21 << 1) | (i20 >>> 31);
                long j55 = j46 + (j54 >>> 32) + (j49 * j14);
                long j56 = j48 + (j55 >>> 32) + (j49 * j18);
                long j57 = j55 & M;
                long j58 = j51 + (j56 >>> 32) + (j49 * j25);
                long j59 = j56 & M;
                long j60 = j53 + (j58 >>> 32) + (j49 * j36);
                long j61 = j58 & M;
                long j62 = j52 + (j60 >>> 32);
                long j63 = j60 & M;
                long j64 = iArr[6] & M;
                long j65 = (iArr2[11] & M) + (j62 >>> 32);
                long j66 = j62 & M;
                long j67 = M & j65;
                long j68 = j57 + (j4 * j64);
                int i22 = (int) j68;
                iArr2[6] = (i21 >>> 31) | (i22 << 1);
                int i23 = i22 >>> 31;
                long j69 = j59 + (j68 >>> 32) + (j64 * j14);
                long j70 = j61 + (j69 >>> 32) + (j64 * j18);
                long j71 = j63 + (j70 >>> 32) + (j64 * j25);
                long j72 = j66 + (j71 >>> 32) + (j64 * j36);
                long j73 = j67 + (j72 >>> 32) + (j64 * j49);
                long j74 = (iArr2[12] & M) + (j65 >>> 32) + (j73 >>> 32);
                int i24 = (int) j69;
                iArr2[7] = i23 | (i24 << 1);
                int i25 = (int) j70;
                iArr2[8] = (i24 >>> 31) | (i25 << 1);
                int i26 = (int) j71;
                iArr2[9] = (i25 >>> 31) | (i26 << 1);
                int i27 = i26 >>> 31;
                int i28 = (int) j72;
                iArr2[10] = i27 | (i28 << 1);
                int i29 = i28 >>> 31;
                int i30 = (int) j73;
                iArr2[11] = i29 | (i30 << 1);
                int i31 = i30 >>> 31;
                int i32 = (int) j74;
                iArr2[12] = i31 | (i32 << 1);
                iArr2[13] = (i32 >>> 31) | ((iArr2[13] + ((int) (j74 >>> 32))) << 1);
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
        long j14 = (j13 >> 32) + ((iArr[i4 + 5] & M) - (iArr2[i10 + 5] & M));
        iArr3[i11 + 5] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr[i4 + 6] & M) - (iArr2[i10 + 6] & M));
        iArr3[i11 + 6] = (int) j15;
        return (int) (j15 >> 32);
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
        long j14 = (j13 >> 32) + ((iArr[5] & M) - (iArr2[5] & M));
        iArr3[5] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr[6] & M) - (iArr2[6] & M));
        iArr3[6] = (int) j15;
        return (int) (j15 >> 32);
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
        long j14 = (j13 >> 32) + (((iArr3[5] & M) - (iArr[5] & M)) - (iArr2[5] & M));
        iArr3[5] = (int) j14;
        long j15 = (j14 >> 32) + (((iArr3[6] & M) - (iArr[6] & M)) - (iArr2[6] & M));
        iArr3[6] = (int) j15;
        return (int) (j15 >> 32);
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
        int i16 = i10 + 5;
        long j14 = (j13 >> 32) + ((iArr2[i16] & M) - (iArr[i4 + 5] & M));
        iArr2[i16] = (int) j14;
        int i17 = i10 + 6;
        long j15 = (j14 >> 32) + ((iArr2[i17] & M) - (iArr[i4 + 6] & M));
        iArr2[i17] = (int) j15;
        return (int) (j15 >> 32);
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
        long j13 = (j12 >> 32) + ((iArr2[4] & M) - (iArr[4] & M));
        iArr2[4] = (int) j13;
        long j14 = (j13 >> 32) + ((iArr2[5] & M) - (iArr[5] & M));
        iArr2[5] = (int) j14;
        long j15 = (j14 >> 32) + ((iArr2[6] & M) - (M & iArr[6]));
        iArr2[6] = (int) j15;
        return (int) (j15 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[28];
        for (int i4 = 0; i4 < 7; i4++) {
            int i10 = iArr[i4];
            if (i10 != 0) {
                Pack.intToBigEndian(i10, bArr, (6 - i4) << 2);
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
        iArr[5] = 0;
        iArr[6] = 0;
    }
}
