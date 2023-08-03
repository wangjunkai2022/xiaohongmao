package com.facebook.imagepipeline.producers;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: PostprocessedBitmapMemoryCacheProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class n0 implements q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13141d = "PostprocessedBitmapMemoryCacheProducer";
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    static final String f13142e = "cached_value_found";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f13143a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f13144b;

    /* renamed from: c  reason: collision with root package name */
    private final q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f13145c;

    /* compiled from: PostprocessedBitmapMemoryCacheProducer.java */
    /* loaded from: classes.dex */
    public static class a extends p<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: i  reason: collision with root package name */
        private final com.facebook.cache.common.c f13146i;

        /* renamed from: j  reason: collision with root package name */
        private final boolean f13147j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f13148k;

        /* renamed from: l  reason: collision with root package name */
        private final boolean f13149l;

        public a(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final com.facebook.cache.common.c cacheKey, final boolean isRepeatedProcessor, final com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, boolean isBitmapCacheEnabledForWrite) {
            super(consumer);
            this.f13146i = cacheKey;
            this.f13147j = isRepeatedProcessor;
            this.f13148k = memoryCache;
            this.f13149l = isBitmapCacheEnabledForWrite;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> newResult, int status) {
            if (newResult == null) {
                if (b.f(status)) {
                    r().c(null, status);
                }
            } else if (!b.g(status) || this.f13147j) {
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> c10 = this.f13149l ? this.f13148k.c(this.f13146i, newResult) : null;
                try {
                    r().d(1.0f);
                    l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> r9 = r();
                    if (c10 != null) {
                        newResult = c10;
                    }
                    r9.c(newResult, status);
                } finally {
                    com.facebook.common.references.a.k(c10);
                }
            }
        }
    }

    public n0(com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        this.f13143a = memoryCache;
        this.f13144b = cacheKeyFactory;
        this.f13145c = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 producerContext) {
        u0 k10 = producerContext.k();
        ImageRequest c10 = producerContext.c();
        Object d4 = producerContext.d();
        com.facebook.imagepipeline.request.d m9 = c10.m();
        if (m9 != null && m9.a() != null) {
            k10.d(producerContext, c());
            com.facebook.cache.common.c c11 = this.f13144b.c(c10, d4);
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = producerContext.c().z(1) ? this.f13143a.get(c11) : null;
            if (aVar != null) {
                k10.j(producerContext, c(), k10.f(producerContext, c()) ? ImmutableMap.of("cached_value_found", "true") : null);
                k10.b(producerContext, f13141d, true);
                producerContext.h("memory_bitmap", "postprocessed");
                consumer.d(1.0f);
                consumer.c(aVar, 1);
                aVar.close();
                return;
            }
            a aVar2 = new a(consumer, c11, m9 instanceof com.facebook.imagepipeline.request.e, this.f13143a, producerContext.c().z(2));
            k10.j(producerContext, c(), k10.f(producerContext, c()) ? ImmutableMap.of("cached_value_found", "false") : null);
            this.f13145c.b(aVar2, producerContext);
            return;
        }
        this.f13145c.b(consumer, producerContext);
    }

    protected String c() {
        return f13141d;
    }
}
