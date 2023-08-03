package com.google.android.datatransport;

import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;

/* compiled from: Event.java */
@AutoValue
/* loaded from: classes2.dex */
public abstract class d<T> {
    public static <T> d<T> d(int i4, T t9) {
        return new a(Integer.valueOf(i4), t9, Priority.DEFAULT);
    }

    public static <T> d<T> e(T t9) {
        return new a(null, t9, Priority.DEFAULT);
    }

    public static <T> d<T> f(int i4, T t9) {
        return new a(Integer.valueOf(i4), t9, Priority.VERY_LOW);
    }

    public static <T> d<T> g(T t9) {
        return new a(null, t9, Priority.VERY_LOW);
    }

    public static <T> d<T> h(int i4, T t9) {
        return new a(Integer.valueOf(i4), t9, Priority.HIGHEST);
    }

    public static <T> d<T> i(T t9) {
        return new a(null, t9, Priority.HIGHEST);
    }

    @Nullable
    public abstract Integer a();

    public abstract T b();

    public abstract Priority c();
}
