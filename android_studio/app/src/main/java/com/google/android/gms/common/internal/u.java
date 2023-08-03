package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class u {
    private u() {
        throw new AssertionError("Uninstantiable");
    }

    @u2.a
    public static void a(boolean z9) {
        if (!z9) {
            throw new IllegalArgumentException();
        }
    }

    @u2.a
    public static void b(boolean z9, @NonNull Object obj) {
        if (!z9) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @u2.a
    public static void c(boolean z9, @NonNull String str, @NonNull Object... objArr) {
        if (!z9) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    @u2.a
    public static void d(@NonNull Handler handler) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            String name = myLooper != null ? myLooper.getThread().getName() : "null current looper";
            String name2 = handler.getLooper().getThread().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name2).length() + 36 + String.valueOf(name).length());
            sb.append("Must be called on ");
            sb.append(name2);
            sb.append(" thread, but got ");
            sb.append(name);
            sb.append(".");
            throw new IllegalStateException(sb.toString());
        }
    }

    @u2.a
    public static void e(@NonNull Handler handler, @NonNull String str) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException(str);
        }
    }

    @u2.a
    public static void f(@NonNull String str) {
        if (!y2.g0.a()) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    @u2.a
    @EnsuresNonNull({"#1"})
    public static String g(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    @NonNull
    @u2.a
    @EnsuresNonNull({"#1"})
    public static String h(@Nullable String str, @NonNull Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    @u2.a
    public static void i() {
        j("Must not be called on the main application thread");
    }

    @u2.a
    public static void j(@NonNull String str) {
        if (y2.g0.a()) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    @u2.a
    @EnsuresNonNull({"#1"})
    public static <T> T k(@Nullable T t9) {
        Objects.requireNonNull(t9, "null reference");
        return t9;
    }

    @NonNull
    @u2.a
    @EnsuresNonNull({"#1"})
    public static <T> T l(@NonNull T t9, @NonNull Object obj) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @u2.a
    public static int m(int i4) {
        if (i4 != 0) {
            return i4;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    @u2.a
    public static int n(int i4, @NonNull Object obj) {
        if (i4 != 0) {
            return i4;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @u2.a
    public static long o(long j4) {
        if (j4 != 0) {
            return j4;
        }
        throw new IllegalArgumentException("Given Long is zero");
    }

    @u2.a
    public static long p(long j4, @NonNull Object obj) {
        if (j4 != 0) {
            return j4;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @u2.a
    public static void q(boolean z9) {
        if (!z9) {
            throw new IllegalStateException();
        }
    }

    @u2.a
    public static void r(boolean z9, @NonNull Object obj) {
        if (!z9) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    @u2.a
    public static void s(boolean z9, @NonNull String str, @NonNull Object... objArr) {
        if (!z9) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }
}
