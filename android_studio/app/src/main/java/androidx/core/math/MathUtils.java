package androidx.core.math;

/* loaded from: classes.dex */
public class MathUtils {
    private MathUtils() {
    }

    public static int addExact(int i4, int i10) {
        int i11 = i4 + i10;
        if (((i4 ^ i11) & (i10 ^ i11)) >= 0) {
            return i11;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static double clamp(double d4, double d10, double d11) {
        return d4 < d10 ? d10 : d4 > d11 ? d11 : d4;
    }

    public static float clamp(float f10, float f11, float f12) {
        return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
    }

    public static int clamp(int i4, int i10, int i11) {
        return i4 < i10 ? i10 : i4 > i11 ? i11 : i4;
    }

    public static long clamp(long j4, long j10, long j11) {
        return j4 < j10 ? j10 : j4 > j11 ? j11 : j4;
    }

    public static int decrementExact(int i4) {
        if (i4 != Integer.MIN_VALUE) {
            return i4 - 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int incrementExact(int i4) {
        if (i4 != Integer.MAX_VALUE) {
            return i4 + 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int multiplyExact(int i4, int i10) {
        long j4 = i4 * i10;
        int i11 = (int) j4;
        if (i11 == j4) {
            return i11;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int negateExact(int i4) {
        if (i4 != Integer.MIN_VALUE) {
            return -i4;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int subtractExact(int i4, int i10) {
        int i11 = i4 - i10;
        if (((i4 ^ i11) & (i10 ^ i4)) >= 0) {
            return i11;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int toIntExact(long j4) {
        int i4 = (int) j4;
        if (i4 == j4) {
            return i4;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long addExact(long j4, long j10) {
        long j11 = j4 + j10;
        if (((j4 ^ j11) & (j10 ^ j11)) >= 0) {
            return j11;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long decrementExact(long j4) {
        if (j4 != Long.MIN_VALUE) {
            return j4 - 1;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long incrementExact(long j4) {
        if (j4 != Long.MAX_VALUE) {
            return j4 + 1;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long multiplyExact(long j4, long j10) {
        long j11 = j4 * j10;
        if (((Math.abs(j4) | Math.abs(j10)) >>> 31) == 0 || ((j10 == 0 || j11 / j10 == j4) && !(j4 == Long.MIN_VALUE && j10 == -1))) {
            return j11;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long negateExact(long j4) {
        if (j4 != Long.MIN_VALUE) {
            return -j4;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long subtractExact(long j4, long j10) {
        long j11 = j4 - j10;
        if (((j4 ^ j11) & (j10 ^ j4)) >= 0) {
            return j11;
        }
        throw new ArithmeticException("long overflow");
    }
}
