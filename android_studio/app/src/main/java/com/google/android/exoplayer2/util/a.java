package com.google.android.exoplayer2.util;

import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;

/* compiled from: Assertions.java */
/* loaded from: classes2.dex */
public final class a {
    private a() {
    }

    @Pure
    public static void a(boolean z9) {
        if (!z9) {
            throw new IllegalArgumentException();
        }
    }

    @Pure
    public static void b(boolean z9, Object obj) {
        if (!z9) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @Pure
    public static int c(int i4, int i10, int i11) {
        if (i4 < i10 || i4 >= i11) {
            throw new IndexOutOfBoundsException();
        }
        return i4;
    }

    @Pure
    public static void d() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Not in applications main thread");
        }
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static String e(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        return str;
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static String f(@Nullable String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T g(@Nullable T t9) {
        Objects.requireNonNull(t9);
        return t9;
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T h(@Nullable T t9, Object obj) {
        if (t9 != null) {
            return t9;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @Pure
    public static void i(boolean z9) {
        if (!z9) {
            throw new IllegalStateException();
        }
    }

    @Pure
    public static void j(boolean z9, Object obj) {
        if (!z9) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T k(@Nullable T t9) {
        if (t9 != null) {
            return t9;
        }
        throw new IllegalStateException();
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T l(@Nullable T t9, Object obj) {
        if (t9 != null) {
            return t9;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
