package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: InstrumentedMemoryCacheBitmapMemoryCacheFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class s {

    /* compiled from: InstrumentedMemoryCacheBitmapMemoryCacheFactory.java */
    /* loaded from: classes.dex */
    static class a implements w<com.facebook.cache.common.c> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q f12141a;

        a(final q val$imageCacheStatsTracker) {
            this.f12141a = val$imageCacheStatsTracker;
        }

        @Override // com.facebook.imagepipeline.cache.w
        /* renamed from: d */
        public void a(com.facebook.cache.common.c cacheKey) {
            this.f12141a.h(cacheKey);
        }

        @Override // com.facebook.imagepipeline.cache.w
        /* renamed from: e */
        public void b(com.facebook.cache.common.c cacheKey) {
            this.f12141a.b(cacheKey);
        }

        @Override // com.facebook.imagepipeline.cache.w
        /* renamed from: f */
        public void c(com.facebook.cache.common.c cacheKey) {
            this.f12141a.m(cacheKey);
        }
    }

    public static r<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> a(final u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache, final q imageCacheStatsTracker) {
        imageCacheStatsTracker.k(bitmapMemoryCache);
        return new r<>(bitmapMemoryCache, new a(imageCacheStatsTracker));
    }
}
