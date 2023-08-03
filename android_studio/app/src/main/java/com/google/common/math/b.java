package com.google.common.math;

import com.google.common.base.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Iterator;

/* compiled from: DoubleMath.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final double f34540a = -2.147483648E9d;

    /* renamed from: b  reason: collision with root package name */
    private static final double f34541b = 2.147483647E9d;

    /* renamed from: c  reason: collision with root package name */
    private static final double f34542c = -9.223372036854776E18d;

    /* renamed from: d  reason: collision with root package name */
    private static final double f34543d = 9.223372036854776E18d;
    @h3.d

    /* renamed from: f  reason: collision with root package name */
    static final int f34545f = 170;

    /* renamed from: e  reason: collision with root package name */
    private static final double f34544e = Math.log(2.0d);
    @h3.d

    /* renamed from: g  reason: collision with root package name */
    static final double[] f34546g = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DoubleMath.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34547a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f34547a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34547a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34547a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34547a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34547a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34547a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34547a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34547a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private b() {
    }

    @CanIgnoreReturnValue
    @h3.c
    private static double a(double d4) {
        a0.d(c.d(d4));
        return d4;
    }

    public static double b(int i4) {
        g.e("n", i4);
        if (i4 > f34545f) {
            return Double.POSITIVE_INFINITY;
        }
        double d4 = 1.0d;
        int i10 = i4 & (-16);
        while (true) {
            i10++;
            if (i10 > i4) {
                return d4 * f34546g[i4 >> 4];
            }
            d4 *= i10;
        }
    }

    public static int c(double d4, double d10, double d11) {
        if (d(d4, d10, d11)) {
            return 0;
        }
        if (d4 < d10) {
            return -1;
        }
        if (d4 > d10) {
            return 1;
        }
        return com.google.common.primitives.a.d(Double.isNaN(d4), Double.isNaN(d10));
    }

    public static boolean d(double d4, double d10, double d11) {
        g.d("tolerance", d11);
        return Math.copySign(d4 - d10, 1.0d) <= d11 || d4 == d10 || (Double.isNaN(d4) && Double.isNaN(d10));
    }

    @h3.c
    public static boolean e(double d4) {
        return c.d(d4) && (d4 == f34544e || 52 - Long.numberOfTrailingZeros(c.c(d4)) <= Math.getExponent(d4));
    }

    @h3.c
    public static boolean f(double d4) {
        if (d4 <= f34544e || !c.d(d4)) {
            return false;
        }
        long c10 = c.c(d4);
        return (c10 & (c10 - 1)) == 0;
    }

    public static double g(double d4) {
        return Math.log(d4) / f34544e;
    }

    @h3.c
    public static int h(double d4, RoundingMode roundingMode) {
        boolean f10;
        a0.e(d4 > f34544e && c.d(d4), "x must be positive and finite");
        int exponent = Math.getExponent(d4);
        if (!c.e(d4)) {
            return h(d4 * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (a.f34547a[roundingMode.ordinal()]) {
            case 1:
                g.k(f(d4));
                break;
            case 2:
                break;
            case 3:
                r0 = !f(d4);
                break;
            case 4:
                r0 = exponent < 0;
                f10 = f(d4);
                r0 &= !f10;
                break;
            case 5:
                r0 = exponent >= 0;
                f10 = f(d4);
                r0 &= !f10;
                break;
            case 6:
            case 7:
            case 8:
                double g4 = c.g(d4);
                if (g4 * g4 > 2.0d) {
                    r0 = true;
                    break;
                }
                break;
            default:
                throw new AssertionError();
        }
        return r0 ? exponent + 1 : exponent;
    }

    @h3.c
    @Deprecated
    public static double i(Iterable<? extends Number> iterable) {
        return j(iterable.iterator());
    }

    @h3.c
    @Deprecated
    public static double j(Iterator<? extends Number> it) {
        a0.e(it.hasNext(), "Cannot take mean of 0 values");
        double a10 = a(it.next().doubleValue());
        long j4 = 1;
        while (it.hasNext()) {
            j4++;
            a10 += (a(it.next().doubleValue()) - a10) / j4;
        }
        return a10;
    }

    @h3.c
    @Deprecated
    public static double k(double... dArr) {
        a0.e(dArr.length > 0, "Cannot take mean of 0 values");
        double a10 = a(dArr[0]);
        long j4 = 1;
        for (int i4 = 1; i4 < dArr.length; i4++) {
            a(dArr[i4]);
            j4++;
            a10 += (dArr[i4] - a10) / j4;
        }
        return a10;
    }

    @Deprecated
    public static double l(int... iArr) {
        a0.e(iArr.length > 0, "Cannot take mean of 0 values");
        long j4 = 0;
        for (int i4 : iArr) {
            j4 += i4;
        }
        return j4 / iArr.length;
    }

    @Deprecated
    public static double m(long... jArr) {
        a0.e(jArr.length > 0, "Cannot take mean of 0 values");
        double d4 = jArr[0];
        long j4 = 1;
        for (int i4 = 1; i4 < jArr.length; i4++) {
            j4++;
            d4 += (jArr[i4] - d4) / j4;
        }
        return d4;
    }

    @h3.c
    static double n(double d4, RoundingMode roundingMode) {
        if (c.d(d4)) {
            switch (a.f34547a[roundingMode.ordinal()]) {
                case 1:
                    g.k(e(d4));
                    return d4;
                case 2:
                    return (d4 >= f34544e || e(d4)) ? d4 : ((long) d4) - 1;
                case 3:
                    return (d4 <= f34544e || e(d4)) ? d4 : ((long) d4) + 1;
                case 4:
                    return d4;
                case 5:
                    if (e(d4)) {
                        return d4;
                    }
                    return ((long) d4) + (d4 > f34544e ? 1 : -1);
                case 6:
                    return Math.rint(d4);
                case 7:
                    double rint = Math.rint(d4);
                    return Math.abs(d4 - rint) == 0.5d ? d4 + Math.copySign(0.5d, d4) : rint;
                case 8:
                    double rint2 = Math.rint(d4);
                    return Math.abs(d4 - rint2) == 0.5d ? d4 : rint2;
                default:
                    throw new AssertionError();
            }
        }
        throw new ArithmeticException("input is infinite or NaN");
    }

    @h3.c
    public static BigInteger o(double d4, RoundingMode roundingMode) {
        double n9 = n(d4, roundingMode);
        if ((n9 < f34543d) & (f34542c - n9 < 1.0d)) {
            return BigInteger.valueOf((long) n9);
        }
        BigInteger shiftLeft = BigInteger.valueOf(c.c(n9)).shiftLeft(Math.getExponent(n9) - 52);
        return n9 < f34544e ? shiftLeft.negate() : shiftLeft;
    }

    @h3.c
    public static int p(double d4, RoundingMode roundingMode) {
        double n9 = n(d4, roundingMode);
        g.a((n9 < 2.147483648E9d) & (n9 > -2.147483649E9d), d4, roundingMode);
        return (int) n9;
    }

    @h3.c
    public static long q(double d4, RoundingMode roundingMode) {
        double n9 = n(d4, roundingMode);
        g.a((f34542c - n9 < 1.0d) & (n9 < f34543d), d4, roundingMode);
        return (long) n9;
    }
}
