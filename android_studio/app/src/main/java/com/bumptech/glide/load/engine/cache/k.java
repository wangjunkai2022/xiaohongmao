package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.cache.j;
import com.bumptech.glide.load.engine.u;

/* compiled from: MemoryCacheAdapter.java */
/* loaded from: classes.dex */
public class k implements j {

    /* renamed from: a  reason: collision with root package name */
    private j.a f8721a;

    @Override // com.bumptech.glide.load.engine.cache.j
    public void a(int i4) {
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    public void b() {
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    public void c(float f10) {
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    @Nullable
    public u<?> d(@NonNull com.bumptech.glide.load.c cVar, @Nullable u<?> uVar) {
        if (uVar != null) {
            this.f8721a.a(uVar);
            return null;
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    @Nullable
    public u<?> e(@NonNull com.bumptech.glide.load.c cVar) {
        return null;
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    public void f(@NonNull j.a aVar) {
        this.f8721a = aVar;
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    public long getCurrentSize() {
        return 0L;
    }

    @Override // com.bumptech.glide.load.engine.cache.j
    public long getMaxSize() {
        return 0L;
    }
}
