package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: EncodedMemoryCacheFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class p {

    /* compiled from: EncodedMemoryCacheFactory.java */
    /* loaded from: classes.dex */
    static class a implements w<com.facebook.cache.common.c> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q f12138a;

        a(final q val$imageCacheStatsTracker) {
            this.f12138a = val$imageCacheStatsTracker;
        }

        @Override // com.facebook.imagepipeline.cache.w
        /* renamed from: d */
        public void a(com.facebook.cache.common.c cacheKey) {
            this.f12138a.j(cacheKey);
        }

        @Override // com.facebook.imagepipeline.cache.w
        /* renamed from: e */
        public void b(com.facebook.cache.common.c cacheKey) {
            this.f12138a.g(cacheKey);
        }

        @Override // com.facebook.imagepipeline.cache.w
        /* renamed from: f */
        public void c(com.facebook.cache.common.c cacheKey) {
            this.f12138a.e(cacheKey);
        }
    }

    public static r<com.facebook.cache.common.c, PooledByteBuffer> a(final u<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, final q imageCacheStatsTracker) {
        imageCacheStatsTracker.a(encodedMemoryCache);
        return new r<>(encodedMemoryCache, new a(imageCacheStatsTracker));
    }
}
