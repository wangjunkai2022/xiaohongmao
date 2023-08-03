package com.bumptech.glide.load.engine.bitmap_recycle;

/* compiled from: ArrayPool.java */
/* loaded from: classes.dex */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final int f8622a = 65536;

    void a(int i4);

    void b();

    <T> T c(int i4, Class<T> cls);

    <T> T d(int i4, Class<T> cls);

    @Deprecated
    <T> void e(T t9, Class<T> cls);

    <T> void put(T t9);
}
