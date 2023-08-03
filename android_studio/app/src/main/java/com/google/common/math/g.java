package com.google.common.math;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.math.BigInteger;
import java.math.RoundingMode;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MathPreconditions.java */
@CanIgnoreReturnValue
@h3.b
/* loaded from: classes2.dex */
final class g {
    private g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z9, double d4, RoundingMode roundingMode) {
        if (z9) {
            return;
        }
        throw new ArithmeticException("rounded value is out of range for input " + d4 + " and rounding mode " + roundingMode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(boolean z9, String str, int i4, int i10) {
        if (z9) {
            return;
        }
        throw new ArithmeticException("overflow: " + str + "(" + i4 + ", " + i10 + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(boolean z9, String str, long j4, long j10) {
        if (z9) {
            return;
        }
        throw new ArithmeticException("overflow: " + str + "(" + j4 + ", " + j10 + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double d(@NullableDecl String str, double d4) {
        if (d4 >= 0.0d) {
            return d4;
        }
        throw new IllegalArgumentException(str + " (" + d4 + ") must be >= 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(@NullableDecl String str, int i4) {
        if (i4 >= 0) {
            return i4;
        }
        throw new IllegalArgumentException(str + " (" + i4 + ") must be >= 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long f(@NullableDecl String str, long j4) {
        if (j4 >= 0) {
            return j4;
        }
        throw new IllegalArgumentException(str + " (" + j4 + ") must be >= 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BigInteger g(@NullableDecl String str, BigInteger bigInteger) {
        if (bigInteger.signum() >= 0) {
            return bigInteger;
        }
        throw new IllegalArgumentException(str + " (" + bigInteger + ") must be >= 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(@NullableDecl String str, int i4) {
        if (i4 > 0) {
            return i4;
        }
        throw new IllegalArgumentException(str + " (" + i4 + ") must be > 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long i(@NullableDecl String str, long j4) {
        if (j4 > 0) {
            return j4;
        }
        throw new IllegalArgumentException(str + " (" + j4 + ") must be > 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BigInteger j(@NullableDecl String str, BigInteger bigInteger) {
        if (bigInteger.signum() > 0) {
            return bigInteger;
        }
        throw new IllegalArgumentException(str + " (" + bigInteger + ") must be > 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(boolean z9) {
        if (!z9) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }
}
