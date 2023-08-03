package com.google.common.math;

import com.google.common.base.a0;
import java.math.BigInteger;

/* compiled from: DoubleUtils.java */
@h3.c
/* loaded from: classes2.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    static final long f34548a = 4503599627370495L;

    /* renamed from: b  reason: collision with root package name */
    static final long f34549b = 9218868437227405312L;

    /* renamed from: c  reason: collision with root package name */
    static final long f34550c = Long.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    static final int f34551d = 52;

    /* renamed from: e  reason: collision with root package name */
    static final int f34552e = 1023;

    /* renamed from: f  reason: collision with root package name */
    static final long f34553f = 4503599627370496L;
    @h3.d

    /* renamed from: g  reason: collision with root package name */
    static final long f34554g = 4607182418800017408L;

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double a(BigInteger bigInteger) {
        BigInteger abs = bigInteger.abs();
        boolean z9 = true;
        int bitLength = abs.bitLength() - 1;
        if (bitLength < 63) {
            return bigInteger.longValue();
        }
        if (bitLength > 1023) {
            return bigInteger.signum() * Double.POSITIVE_INFINITY;
        }
        int i4 = (bitLength - 52) - 1;
        long longValue = abs.shiftRight(i4).longValue();
        long j4 = (longValue >> 1) & f34548a;
        if ((longValue & 1) == 0 || ((j4 & 1) == 0 && abs.getLowestSetBit() >= i4)) {
            z9 = false;
        }
        if (z9) {
            j4++;
        }
        return Double.longBitsToDouble((((bitLength + 1023) << 52) + j4) | (bigInteger.signum() & Long.MIN_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double b(double d4) {
        a0.d(!Double.isNaN(d4));
        if (d4 > 0.0d) {
            return d4;
        }
        return 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long c(double d4) {
        a0.e(d(d4), "not a normal value");
        int exponent = Math.getExponent(d4);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d4) & f34548a;
        return exponent == -1023 ? doubleToRawLongBits << 1 : doubleToRawLongBits | f34553f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(double d4) {
        return Math.getExponent(d4) <= 1023;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(double d4) {
        return Math.getExponent(d4) >= -1022;
    }

    static double f(double d4) {
        return -Math.nextUp(-d4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double g(double d4) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d4) & f34548a) | f34554g);
    }
}
