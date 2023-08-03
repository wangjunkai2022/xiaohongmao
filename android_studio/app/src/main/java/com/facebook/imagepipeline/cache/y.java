package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: NoOpImageCacheStatsTracker.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class y implements q {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private static y f12165a;

    private y() {
    }

    public static synchronized y o() {
        y yVar;
        synchronized (y.class) {
            if (f12165a == null) {
                f12165a = new y();
            }
            yVar = f12165a;
        }
        return yVar;
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void a(u<?, ?> encodedMemoryCache) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void b(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void c(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void d(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void e(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void f(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void g(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void h(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void i(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void j(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void k(u<?, ?> bitmapMemoryCache) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void l(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void m(com.facebook.cache.common.c cacheKey) {
    }

    @Override // com.facebook.imagepipeline.cache.q
    public void n(com.facebook.cache.common.c cacheKey) {
    }
}
