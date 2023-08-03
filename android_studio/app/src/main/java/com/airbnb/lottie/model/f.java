package com.airbnb.lottie.model;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;

/* compiled from: LottieCompositionCache.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static final f f4538b = new f();

    /* renamed from: a  reason: collision with root package name */
    private final LruCache<String, com.airbnb.lottie.f> f4539a = new LruCache<>(20);

    @VisibleForTesting
    f() {
    }

    public static f c() {
        return f4538b;
    }

    public void a() {
        this.f4539a.evictAll();
    }

    @Nullable
    public com.airbnb.lottie.f b(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return this.f4539a.get(str);
    }

    public void d(@Nullable String str, com.airbnb.lottie.f fVar) {
        if (str == null) {
            return;
        }
        this.f4539a.put(str, fVar);
    }

    public void e(int i4) {
        this.f4539a.resize(i4);
    }
}
