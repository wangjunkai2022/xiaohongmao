package com.google.android.datatransport.runtime.dagger.internal;

/* compiled from: InstanceFactory.java */
/* loaded from: classes2.dex */
public final class j<T> implements g<T>, k2.e<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final j<Object> f20420b = new j<>(null);

    /* renamed from: a  reason: collision with root package name */
    private final T f20421a;

    private j(T t9) {
        this.f20421a = t9;
    }

    public static <T> g<T> a(T t9) {
        return new j(p.c(t9, "instance cannot be null"));
    }

    public static <T> g<T> b(T t9) {
        if (t9 == null) {
            return c();
        }
        return new j(t9);
    }

    private static <T> j<T> c() {
        return (j<T>) f20420b;
    }

    @Override // u7.c
    public T get() {
        return this.f20421a;
    }
}
