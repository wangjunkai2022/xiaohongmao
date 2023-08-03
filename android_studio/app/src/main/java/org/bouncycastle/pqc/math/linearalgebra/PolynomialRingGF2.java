package org.bouncycastle.pqc.math.linearalgebra;

import java.io.PrintStream;

/* loaded from: classes5.dex */
public final class PolynomialRingGF2 {
    private PolynomialRingGF2() {
    }

    public static int add(int i4, int i10) {
        return i4 ^ i10;
    }

    public static int degree(int i4) {
        int i10 = -1;
        while (i4 != 0) {
            i10++;
            i4 >>>= 1;
        }
        return i10;
    }

    public static int degree(long j4) {
        int i4 = 0;
        while (j4 != 0) {
            i4++;
            j4 >>>= 1;
        }
        return i4 - 1;
    }

    public static int gcd(int i4, int i10) {
        while (true) {
            int i11 = i10;
            int i12 = i4;
            i4 = i11;
            if (i4 == 0) {
                return i12;
            }
            i10 = remainder(i12, i4);
        }
    }

    public static int getIrreduciblePolynomial(int i4) {
        PrintStream printStream;
        String str;
        if (i4 < 0) {
            printStream = System.err;
            str = "The Degree is negative";
        } else if (i4 <= 31) {
            if (i4 == 0) {
                return 1;
            }
            int i10 = 1 << (i4 + 1);
            for (int i11 = (1 << i4) + 1; i11 < i10; i11 += 2) {
                if (isIrreducible(i11)) {
                    return i11;
                }
            }
            return 0;
        } else {
            printStream = System.err;
            str = "The Degree is more then 31";
        }
        printStream.println(str);
        return 0;
    }

    public static boolean isIrreducible(int i4) {
        if (i4 == 0) {
            return false;
        }
        int degree = degree(i4) >>> 1;
        int i10 = 2;
        for (int i11 = 0; i11 < degree; i11++) {
            i10 = modMultiply(i10, i10, i4);
            if (gcd(i10 ^ 2, i4) != 1) {
                return false;
            }
        }
        return true;
    }

    public static int modMultiply(int i4, int i10, int i11) {
        int remainder = remainder(i4, i11);
        int remainder2 = remainder(i10, i11);
        int i12 = 0;
        if (remainder2 != 0) {
            int degree = 1 << degree(i11);
            while (remainder != 0) {
                if (((byte) (remainder & 1)) == 1) {
                    i12 ^= remainder2;
                }
                remainder >>>= 1;
                remainder2 <<= 1;
                if (remainder2 >= degree) {
                    remainder2 ^= i11;
                }
            }
        }
        return i12;
    }

    public static long multiply(int i4, int i10) {
        long j4 = 0;
        if (i10 != 0) {
            long j10 = i10 & 4294967295L;
            while (i4 != 0) {
                if (((byte) (i4 & 1)) == 1) {
                    j4 ^= j10;
                }
                i4 >>>= 1;
                j10 <<= 1;
            }
        }
        return j4;
    }

    public static int remainder(int i4, int i10) {
        if (i10 == 0) {
            System.err.println("Error: to be divided by 0");
            return 0;
        }
        while (degree(i4) >= degree(i10)) {
            i4 ^= i10 << (degree(i4) - degree(i10));
        }
        return i4;
    }

    public static int rest(long j4, int i4) {
        if (i4 == 0) {
            System.err.println("Error: to be divided by 0");
            return 0;
        }
        long j10 = i4 & 4294967295L;
        while ((j4 >>> 32) != 0) {
            j4 ^= j10 << (degree(j4) - degree(j10));
        }
        int i10 = (int) (j4 & (-1));
        while (degree(i10) >= degree(i4)) {
            i10 ^= i4 << (degree(i10) - degree(i4));
        }
        return i10;
    }
}
