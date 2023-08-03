package com.google.common.math;

import com.google.common.base.a0;
import io.sentry.protocol.y;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BigIntegerMath.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class a {
    @h3.d

    /* renamed from: a  reason: collision with root package name */
    static final int f34535a = 256;
    @h3.d

    /* renamed from: b  reason: collision with root package name */
    static final BigInteger f34536b = new BigInteger("16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a", 16);

    /* renamed from: c  reason: collision with root package name */
    private static final double f34537c = Math.log(10.0d);

    /* renamed from: d  reason: collision with root package name */
    private static final double f34538d = Math.log(2.0d);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BigIntegerMath.java */
    /* renamed from: com.google.common.math.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C0256a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34539a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f34539a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34539a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34539a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34539a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34539a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34539a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34539a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34539a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private a() {
    }

    public static BigInteger a(int i4, int i10) {
        int i11;
        g.e("n", i4);
        g.e("k", i10);
        int i12 = 1;
        a0.m(i10 <= i4, "k (%s) > n (%s)", i10, i4);
        if (i10 > (i4 >> 1)) {
            i10 = i4 - i10;
        }
        int[] iArr = f.f34579h;
        if (i10 < iArr.length && i4 <= iArr[i10]) {
            return BigInteger.valueOf(f.a(i4, i10));
        }
        BigInteger bigInteger = BigInteger.ONE;
        long j4 = i4;
        long j10 = 1;
        int q9 = f.q(j4, RoundingMode.CEILING);
        while (true) {
            int i13 = q9;
            while (i12 < i10) {
                i11 = i4 - i12;
                i12++;
                i13 += q9;
                if (i13 >= 63) {
                    break;
                }
                j4 *= i11;
                j10 *= i12;
            }
            return bigInteger.multiply(BigInteger.valueOf(j4)).divide(BigInteger.valueOf(j10));
            bigInteger = bigInteger.multiply(BigInteger.valueOf(j4)).divide(BigInteger.valueOf(j10));
            j4 = i11;
            j10 = i12;
        }
    }

    @h3.a
    public static BigInteger b(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(k(bigInteger, RoundingMode.CEILING));
    }

    @h3.c
    public static BigInteger c(BigInteger bigInteger, BigInteger bigInteger2, RoundingMode roundingMode) {
        return new BigDecimal(bigInteger).divide(new BigDecimal(bigInteger2), 0, roundingMode).toBigIntegerExact();
    }

    public static BigInteger d(int i4) {
        g.e("n", i4);
        long[] jArr = f.f34578g;
        if (i4 < jArr.length) {
            return BigInteger.valueOf(jArr[i4]);
        }
        ArrayList arrayList = new ArrayList(d.g(d.p(i4, RoundingMode.CEILING) * i4, 64, RoundingMode.CEILING));
        int length = jArr.length;
        long j4 = jArr[length - 1];
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j4);
        long j10 = j4 >> numberOfTrailingZeros;
        int q9 = f.q(j10, RoundingMode.FLOOR) + 1;
        long j11 = length;
        int q10 = f.q(j11, RoundingMode.FLOOR) + 1;
        int i10 = 1 << (q10 - 1);
        while (j11 <= i4) {
            if ((i10 & j11) != 0) {
                i10 <<= 1;
                q10++;
            }
            int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j11);
            long j12 = j11 >> numberOfTrailingZeros2;
            numberOfTrailingZeros += numberOfTrailingZeros2;
            if ((q10 - numberOfTrailingZeros2) + q9 >= 64) {
                arrayList.add(BigInteger.valueOf(j10));
                j10 = 1;
            }
            j10 *= j12;
            q9 = f.q(j10, RoundingMode.FLOOR) + 1;
            j11++;
        }
        if (j10 > 1) {
            arrayList.add(BigInteger.valueOf(j10));
        }
        return h(arrayList).shiftLeft(numberOfTrailingZeros);
    }

    @h3.c
    static boolean e(BigInteger bigInteger) {
        return bigInteger.bitLength() <= 63;
    }

    @h3.a
    public static BigInteger f(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(k(bigInteger, RoundingMode.FLOOR));
    }

    public static boolean g(BigInteger bigInteger) {
        a0.E(bigInteger);
        return bigInteger.signum() > 0 && bigInteger.getLowestSetBit() == bigInteger.bitLength() - 1;
    }

    static BigInteger h(List<BigInteger> list) {
        return i(list, 0, list.size());
    }

    static BigInteger i(List<BigInteger> list, int i4, int i10) {
        int i11 = i10 - i4;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        int i12 = (i10 + i4) >>> 1;
                        return i(list, i4, i12).multiply(i(list, i12, i10));
                    }
                    return list.get(i4).multiply(list.get(i4 + 1)).multiply(list.get(i4 + 2));
                }
                return list.get(i4).multiply(list.get(i4 + 1));
            }
            return list.get(i4);
        }
        return BigInteger.ONE;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @h3.c
    public static int j(BigInteger bigInteger, RoundingMode roundingMode) {
        int i4;
        g.j(y.b.f83919g, bigInteger);
        if (e(bigInteger)) {
            return f.o(bigInteger.longValue(), roundingMode);
        }
        int k10 = (int) ((k(bigInteger, RoundingMode.FLOOR) * f34538d) / f34537c);
        BigInteger pow = BigInteger.TEN.pow(k10);
        int compareTo = pow.compareTo(bigInteger);
        if (compareTo > 0) {
            do {
                k10--;
                pow = pow.divide(BigInteger.TEN);
                i4 = pow.compareTo(bigInteger);
            } while (i4 > 0);
        } else {
            BigInteger multiply = BigInteger.TEN.multiply(pow);
            int i10 = compareTo;
            int compareTo2 = multiply.compareTo(bigInteger);
            while (compareTo2 <= 0) {
                k10++;
                BigInteger multiply2 = BigInteger.TEN.multiply(multiply);
                int compareTo3 = multiply2.compareTo(bigInteger);
                BigInteger bigInteger2 = multiply;
                multiply = multiply2;
                pow = bigInteger2;
                i10 = compareTo2;
                compareTo2 = compareTo3;
            }
            i4 = i10;
        }
        switch (C0256a.f34539a[roundingMode.ordinal()]) {
            case 1:
                g.k(i4 == 0);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return pow.equals(bigInteger) ? k10 : k10 + 1;
            case 6:
            case 7:
            case 8:
                return bigInteger.pow(2).compareTo(pow.pow(2).multiply(BigInteger.TEN)) <= 0 ? k10 : k10 + 1;
            default:
                throw new AssertionError();
        }
        return k10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int k(BigInteger bigInteger, RoundingMode roundingMode) {
        g.j(y.b.f83919g, (BigInteger) a0.E(bigInteger));
        int bitLength = bigInteger.bitLength() - 1;
        switch (C0256a.f34539a[roundingMode.ordinal()]) {
            case 1:
                g.k(g(bigInteger));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return g(bigInteger) ? bitLength : bitLength + 1;
            case 6:
            case 7:
            case 8:
                return bitLength < 256 ? bigInteger.compareTo(f34536b.shiftRight(256 - bitLength)) <= 0 ? bitLength : bitLength + 1 : bigInteger.pow(2).bitLength() + (-1) < (bitLength * 2) + 1 ? bitLength : bitLength + 1;
            default:
                throw new AssertionError();
        }
        return bitLength;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @h3.c
    public static BigInteger l(BigInteger bigInteger, RoundingMode roundingMode) {
        g.g(y.b.f83919g, bigInteger);
        if (e(bigInteger)) {
            return BigInteger.valueOf(f.A(bigInteger.longValue(), roundingMode));
        }
        BigInteger n9 = n(bigInteger);
        switch (C0256a.f34539a[roundingMode.ordinal()]) {
            case 1:
                g.k(n9.pow(2).equals(bigInteger));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                int intValue = n9.intValue();
                return intValue * intValue == bigInteger.intValue() && n9.pow(2).equals(bigInteger) ? n9 : n9.add(BigInteger.ONE);
            case 6:
            case 7:
            case 8:
                return n9.pow(2).add(n9).compareTo(bigInteger) >= 0 ? n9 : n9.add(BigInteger.ONE);
            default:
                throw new AssertionError();
        }
        return n9;
    }

    @h3.c
    private static BigInteger m(BigInteger bigInteger) {
        return b.o(Math.sqrt(c.a(bigInteger)), RoundingMode.HALF_EVEN);
    }

    @h3.c
    private static BigInteger n(BigInteger bigInteger) {
        BigInteger shiftLeft;
        int k10 = k(bigInteger, RoundingMode.FLOOR);
        if (k10 < 1023) {
            shiftLeft = m(bigInteger);
        } else {
            int i4 = (k10 - 52) & (-2);
            shiftLeft = m(bigInteger.shiftRight(i4)).shiftLeft(i4 >> 1);
        }
        BigInteger shiftRight = shiftLeft.add(bigInteger.divide(shiftLeft)).shiftRight(1);
        if (shiftLeft.equals(shiftRight)) {
            return shiftLeft;
        }
        while (true) {
            BigInteger shiftRight2 = shiftRight.add(bigInteger.divide(shiftRight)).shiftRight(1);
            if (shiftRight2.compareTo(shiftRight) >= 0) {
                return shiftRight;
            }
            shiftRight = shiftRight2;
        }
    }
}
