package com.google.common.base;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Verify.java */
@h3.b
/* loaded from: classes2.dex */
public final class n0 {
    private n0() {
    }

    public static void a(boolean z9) {
        if (!z9) {
            throw new VerifyException();
        }
    }

    public static void b(boolean z9, @NullableDecl String str, char c10) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Character.valueOf(c10)));
        }
    }

    public static void c(boolean z9, @NullableDecl String str, char c10, char c11) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Character.valueOf(c10), Character.valueOf(c11)));
        }
    }

    public static void d(boolean z9, @NullableDecl String str, char c10, int i4) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Character.valueOf(c10), Integer.valueOf(i4)));
        }
    }

    public static void e(boolean z9, @NullableDecl String str, char c10, long j4) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Character.valueOf(c10), Long.valueOf(j4)));
        }
    }

    public static void f(boolean z9, @NullableDecl String str, char c10, @NullableDecl Object obj) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Character.valueOf(c10), obj));
        }
    }

    public static void g(boolean z9, @NullableDecl String str, int i4) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Integer.valueOf(i4)));
        }
    }

    public static void h(boolean z9, @NullableDecl String str, int i4, char c10) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Integer.valueOf(i4), Character.valueOf(c10)));
        }
    }

    public static void i(boolean z9, @NullableDecl String str, int i4, int i10) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Integer.valueOf(i4), Integer.valueOf(i10)));
        }
    }

    public static void j(boolean z9, @NullableDecl String str, int i4, long j4) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Integer.valueOf(i4), Long.valueOf(j4)));
        }
    }

    public static void k(boolean z9, @NullableDecl String str, int i4, @NullableDecl Object obj) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Integer.valueOf(i4), obj));
        }
    }

    public static void l(boolean z9, @NullableDecl String str, long j4) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Long.valueOf(j4)));
        }
    }

    public static void m(boolean z9, @NullableDecl String str, long j4, char c10) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Long.valueOf(j4), Character.valueOf(c10)));
        }
    }

    public static void n(boolean z9, @NullableDecl String str, long j4, int i4) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Long.valueOf(j4), Integer.valueOf(i4)));
        }
    }

    public static void o(boolean z9, @NullableDecl String str, long j4, long j10) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Long.valueOf(j4), Long.valueOf(j10)));
        }
    }

    public static void p(boolean z9, @NullableDecl String str, long j4, @NullableDecl Object obj) {
        if (!z9) {
            throw new VerifyException(h0.e(str, Long.valueOf(j4), obj));
        }
    }

    public static void q(boolean z9, @NullableDecl String str, @NullableDecl Object obj) {
        if (!z9) {
            throw new VerifyException(h0.e(str, obj));
        }
    }

    public static void r(boolean z9, @NullableDecl String str, @NullableDecl Object obj, char c10) {
        if (!z9) {
            throw new VerifyException(h0.e(str, obj, Character.valueOf(c10)));
        }
    }

    public static void s(boolean z9, @NullableDecl String str, @NullableDecl Object obj, int i4) {
        if (!z9) {
            throw new VerifyException(h0.e(str, obj, Integer.valueOf(i4)));
        }
    }

    public static void t(boolean z9, @NullableDecl String str, @NullableDecl Object obj, long j4) {
        if (!z9) {
            throw new VerifyException(h0.e(str, obj, Long.valueOf(j4)));
        }
    }

    public static void u(boolean z9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2) {
        if (!z9) {
            throw new VerifyException(h0.e(str, obj, obj2));
        }
    }

    public static void v(boolean z9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2, @NullableDecl Object obj3) {
        if (!z9) {
            throw new VerifyException(h0.e(str, obj, obj2, obj3));
        }
    }

    public static void w(boolean z9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2, @NullableDecl Object obj3, @NullableDecl Object obj4) {
        if (!z9) {
            throw new VerifyException(h0.e(str, obj, obj2, obj3, obj4));
        }
    }

    public static void x(boolean z9, @NullableDecl String str, @NullableDecl Object... objArr) {
        if (!z9) {
            throw new VerifyException(h0.e(str, objArr));
        }
    }

    @CanIgnoreReturnValue
    public static <T> T y(@NullableDecl T t9) {
        return (T) z(t9, "expected a non-null reference", new Object[0]);
    }

    @CanIgnoreReturnValue
    public static <T> T z(@NullableDecl T t9, @NullableDecl String str, @NullableDecl Object... objArr) {
        x(t9 != null, str, objArr);
        return t9;
    }
}
