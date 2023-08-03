package com.google.common.base;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Preconditions.java */
@h3.b
/* loaded from: classes2.dex */
public final class a0 {
    private a0() {
    }

    public static void A(boolean z9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2, @NullableDecl Object obj3, @NullableDecl Object obj4) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, obj, obj2, obj3, obj4));
        }
    }

    public static void A0(boolean z9, @NullableDecl String str, @NullableDecl Object obj, long j4) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, obj, Long.valueOf(j4)));
        }
    }

    public static void B(boolean z9, @NullableDecl String str, @NullableDecl Object... objArr) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, objArr));
        }
    }

    public static void B0(boolean z9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, obj, obj2));
        }
    }

    @CanIgnoreReturnValue
    public static int C(int i4, int i10) {
        return D(i4, i10, "index");
    }

    public static void C0(boolean z9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2, @NullableDecl Object obj3) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, obj, obj2, obj3));
        }
    }

    @CanIgnoreReturnValue
    public static int D(int i4, int i10, @NullableDecl String str) {
        if (i4 < 0 || i4 >= i10) {
            throw new IndexOutOfBoundsException(a(i4, i10, str));
        }
        return i4;
    }

    public static void D0(boolean z9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2, @NullableDecl Object obj3, @NullableDecl Object obj4) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, obj, obj2, obj3, obj4));
        }
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T E(@NonNullDecl T t9) {
        Objects.requireNonNull(t9);
        return t9;
    }

    public static void E0(boolean z9, @NullableDecl String str, @NullableDecl Object... objArr) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, objArr));
        }
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T F(@NonNullDecl T t9, @NullableDecl Object obj) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T G(@NonNullDecl T t9, @NullableDecl String str, char c10) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Character.valueOf(c10)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T H(@NonNullDecl T t9, @NullableDecl String str, char c10, char c11) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Character.valueOf(c10), Character.valueOf(c11)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T I(@NonNullDecl T t9, @NullableDecl String str, char c10, int i4) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Character.valueOf(c10), Integer.valueOf(i4)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T J(@NonNullDecl T t9, @NullableDecl String str, char c10, long j4) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Character.valueOf(c10), Long.valueOf(j4)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T K(@NonNullDecl T t9, @NullableDecl String str, char c10, @NullableDecl Object obj) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Character.valueOf(c10), obj));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T L(@NonNullDecl T t9, @NullableDecl String str, int i4) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Integer.valueOf(i4)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T M(@NonNullDecl T t9, @NullableDecl String str, int i4, char c10) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Integer.valueOf(i4), Character.valueOf(c10)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T N(@NonNullDecl T t9, @NullableDecl String str, int i4, int i10) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Integer.valueOf(i4), Integer.valueOf(i10)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T O(@NonNullDecl T t9, @NullableDecl String str, int i4, long j4) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Integer.valueOf(i4), Long.valueOf(j4)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T P(@NonNullDecl T t9, @NullableDecl String str, int i4, @NullableDecl Object obj) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Integer.valueOf(i4), obj));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T Q(@NonNullDecl T t9, @NullableDecl String str, long j4) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Long.valueOf(j4)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T R(@NonNullDecl T t9, @NullableDecl String str, long j4, char c10) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Long.valueOf(j4), Character.valueOf(c10)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T S(@NonNullDecl T t9, @NullableDecl String str, long j4, int i4) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Long.valueOf(j4), Integer.valueOf(i4)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T T(@NonNullDecl T t9, @NullableDecl String str, long j4, long j10) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Long.valueOf(j4), Long.valueOf(j10)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T U(@NonNullDecl T t9, @NullableDecl String str, long j4, @NullableDecl Object obj) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, Long.valueOf(j4), obj));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T V(@NonNullDecl T t9, @NullableDecl String str, @NullableDecl Object obj) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, obj));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T W(@NonNullDecl T t9, @NullableDecl String str, @NullableDecl Object obj, char c10) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, obj, Character.valueOf(c10)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T X(@NonNullDecl T t9, @NullableDecl String str, @NullableDecl Object obj, int i4) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, obj, Integer.valueOf(i4)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T Y(@NonNullDecl T t9, @NullableDecl String str, @NullableDecl Object obj, long j4) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, obj, Long.valueOf(j4)));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T Z(@NonNullDecl T t9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, obj, obj2));
    }

    private static String a(int i4, int i10, @NullableDecl String str) {
        if (i4 < 0) {
            return h0.e("%s (%s) must not be negative", str, Integer.valueOf(i4));
        }
        if (i10 >= 0) {
            return h0.e("%s (%s) must be less than size (%s)", str, Integer.valueOf(i4), Integer.valueOf(i10));
        }
        throw new IllegalArgumentException("negative size: " + i10);
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T a0(@NonNullDecl T t9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2, @NullableDecl Object obj3) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, obj, obj2, obj3));
    }

    private static String b(int i4, int i10, @NullableDecl String str) {
        if (i4 < 0) {
            return h0.e("%s (%s) must not be negative", str, Integer.valueOf(i4));
        }
        if (i10 >= 0) {
            return h0.e("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i4), Integer.valueOf(i10));
        }
        throw new IllegalArgumentException("negative size: " + i10);
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T b0(@NonNullDecl T t9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2, @NullableDecl Object obj3, @NullableDecl Object obj4) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, obj, obj2, obj3, obj4));
    }

    private static String c(int i4, int i10, int i11) {
        if (i4 < 0 || i4 > i11) {
            return b(i4, i11, "start index");
        }
        return (i10 < 0 || i10 > i11) ? b(i10, i11, "end index") : h0.e("end index (%s) must not be less than start index (%s)", Integer.valueOf(i10), Integer.valueOf(i4));
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T c0(@NonNullDecl T t9, @NullableDecl String str, @NullableDecl Object... objArr) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(h0.e(str, objArr));
    }

    public static void d(boolean z9) {
        if (!z9) {
            throw new IllegalArgumentException();
        }
    }

    @CanIgnoreReturnValue
    public static int d0(int i4, int i10) {
        return e0(i4, i10, "index");
    }

    public static void e(boolean z9, @NullableDecl Object obj) {
        if (!z9) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @CanIgnoreReturnValue
    public static int e0(int i4, int i10, @NullableDecl String str) {
        if (i4 < 0 || i4 > i10) {
            throw new IndexOutOfBoundsException(b(i4, i10, str));
        }
        return i4;
    }

    public static void f(boolean z9, @NullableDecl String str, char c10) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Character.valueOf(c10)));
        }
    }

    public static void f0(int i4, int i10, int i11) {
        if (i4 < 0 || i10 < i4 || i10 > i11) {
            throw new IndexOutOfBoundsException(c(i4, i10, i11));
        }
    }

    public static void g(boolean z9, @NullableDecl String str, char c10, char c11) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Character.valueOf(c10), Character.valueOf(c11)));
        }
    }

    public static void g0(boolean z9) {
        if (!z9) {
            throw new IllegalStateException();
        }
    }

    public static void h(boolean z9, @NullableDecl String str, char c10, int i4) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Character.valueOf(c10), Integer.valueOf(i4)));
        }
    }

    public static void h0(boolean z9, @NullableDecl Object obj) {
        if (!z9) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void i(boolean z9, @NullableDecl String str, char c10, long j4) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Character.valueOf(c10), Long.valueOf(j4)));
        }
    }

    public static void i0(boolean z9, @NullableDecl String str, char c10) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Character.valueOf(c10)));
        }
    }

    public static void j(boolean z9, @NullableDecl String str, char c10, @NullableDecl Object obj) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Character.valueOf(c10), obj));
        }
    }

    public static void j0(boolean z9, @NullableDecl String str, char c10, char c11) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Character.valueOf(c10), Character.valueOf(c11)));
        }
    }

    public static void k(boolean z9, @NullableDecl String str, int i4) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Integer.valueOf(i4)));
        }
    }

    public static void k0(boolean z9, @NullableDecl String str, char c10, int i4) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Character.valueOf(c10), Integer.valueOf(i4)));
        }
    }

    public static void l(boolean z9, @NullableDecl String str, int i4, char c10) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Integer.valueOf(i4), Character.valueOf(c10)));
        }
    }

    public static void l0(boolean z9, @NullableDecl String str, char c10, long j4) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Character.valueOf(c10), Long.valueOf(j4)));
        }
    }

    public static void m(boolean z9, @NullableDecl String str, int i4, int i10) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Integer.valueOf(i4), Integer.valueOf(i10)));
        }
    }

    public static void m0(boolean z9, @NullableDecl String str, char c10, @NullableDecl Object obj) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Character.valueOf(c10), obj));
        }
    }

    public static void n(boolean z9, @NullableDecl String str, int i4, long j4) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Integer.valueOf(i4), Long.valueOf(j4)));
        }
    }

    public static void n0(boolean z9, @NullableDecl String str, int i4) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Integer.valueOf(i4)));
        }
    }

    public static void o(boolean z9, @NullableDecl String str, int i4, @NullableDecl Object obj) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Integer.valueOf(i4), obj));
        }
    }

    public static void o0(boolean z9, @NullableDecl String str, int i4, char c10) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Integer.valueOf(i4), Character.valueOf(c10)));
        }
    }

    public static void p(boolean z9, @NullableDecl String str, long j4) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Long.valueOf(j4)));
        }
    }

    public static void p0(boolean z9, @NullableDecl String str, int i4, int i10) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Integer.valueOf(i4), Integer.valueOf(i10)));
        }
    }

    public static void q(boolean z9, @NullableDecl String str, long j4, char c10) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Long.valueOf(j4), Character.valueOf(c10)));
        }
    }

    public static void q0(boolean z9, @NullableDecl String str, int i4, long j4) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Integer.valueOf(i4), Long.valueOf(j4)));
        }
    }

    public static void r(boolean z9, @NullableDecl String str, long j4, int i4) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Long.valueOf(j4), Integer.valueOf(i4)));
        }
    }

    public static void r0(boolean z9, @NullableDecl String str, int i4, @NullableDecl Object obj) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Integer.valueOf(i4), obj));
        }
    }

    public static void s(boolean z9, @NullableDecl String str, long j4, long j10) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Long.valueOf(j4), Long.valueOf(j10)));
        }
    }

    public static void s0(boolean z9, @NullableDecl String str, long j4) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Long.valueOf(j4)));
        }
    }

    public static void t(boolean z9, @NullableDecl String str, long j4, @NullableDecl Object obj) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, Long.valueOf(j4), obj));
        }
    }

    public static void t0(boolean z9, @NullableDecl String str, long j4, char c10) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Long.valueOf(j4), Character.valueOf(c10)));
        }
    }

    public static void u(boolean z9, @NullableDecl String str, @NullableDecl Object obj) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, obj));
        }
    }

    public static void u0(boolean z9, @NullableDecl String str, long j4, int i4) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Long.valueOf(j4), Integer.valueOf(i4)));
        }
    }

    public static void v(boolean z9, @NullableDecl String str, @NullableDecl Object obj, char c10) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, obj, Character.valueOf(c10)));
        }
    }

    public static void v0(boolean z9, @NullableDecl String str, long j4, long j10) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Long.valueOf(j4), Long.valueOf(j10)));
        }
    }

    public static void w(boolean z9, @NullableDecl String str, @NullableDecl Object obj, int i4) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, obj, Integer.valueOf(i4)));
        }
    }

    public static void w0(boolean z9, @NullableDecl String str, long j4, @NullableDecl Object obj) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, Long.valueOf(j4), obj));
        }
    }

    public static void x(boolean z9, @NullableDecl String str, @NullableDecl Object obj, long j4) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, obj, Long.valueOf(j4)));
        }
    }

    public static void x0(boolean z9, @NullableDecl String str, @NullableDecl Object obj) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, obj));
        }
    }

    public static void y(boolean z9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, obj, obj2));
        }
    }

    public static void y0(boolean z9, @NullableDecl String str, @NullableDecl Object obj, char c10) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, obj, Character.valueOf(c10)));
        }
    }

    public static void z(boolean z9, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2, @NullableDecl Object obj3) {
        if (!z9) {
            throw new IllegalArgumentException(h0.e(str, obj, obj2, obj3));
        }
    }

    public static void z0(boolean z9, @NullableDecl String str, @NullableDecl Object obj, int i4) {
        if (!z9) {
            throw new IllegalStateException(h0.e(str, obj, Integer.valueOf(i4)));
        }
    }
}
