package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;

/* compiled from: MemoryCache.java */
/* loaded from: classes.dex */
public interface j {

    /* compiled from: MemoryCache.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(@NonNull u<?> uVar);
    }

    void a(int i4);

    void b();

    void c(float f10);

    @Nullable
    u<?> d(@NonNull com.bumptech.glide.load.c cVar, @Nullable u<?> uVar);

    @Nullable
    u<?> e(@NonNull com.bumptech.glide.load.c cVar);

    void f(@NonNull a aVar);

    long getCurrentSize();

    long getMaxSize();
}
