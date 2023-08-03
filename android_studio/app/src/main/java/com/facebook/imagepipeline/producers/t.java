package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: EncodedMemoryCacheProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class t implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13234d = "EncodedMemoryCacheProducer";

    /* renamed from: e  reason: collision with root package name */
    public static final String f13235e = "cached_value_found";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, PooledByteBuffer> f13236a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f13237b;

    /* renamed from: c  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13238c;

    /* compiled from: EncodedMemoryCacheProducer.java */
    /* loaded from: classes.dex */
    private static class a extends p<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, PooledByteBuffer> f13239i;

        /* renamed from: j  reason: collision with root package name */
        private final com.facebook.cache.common.c f13240j;

        /* renamed from: k  reason: collision with root package name */
        private final boolean f13241k;

        /* renamed from: l  reason: collision with root package name */
        private final boolean f13242l;

        public a(l<com.facebook.imagepipeline.image.e> consumer, com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, PooledByteBuffer> memoryCache, com.facebook.cache.common.c requestedCacheKey, boolean isEncodedCacheEnabledForWrite, boolean encodedCacheEnabled) {
            super(consumer);
            this.f13239i = memoryCache;
            this.f13240j = requestedCacheKey;
            this.f13241k = isEncodedCacheEnabledForWrite;
            this.f13242l = encodedCacheEnabled;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            boolean e4;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("EncodedMemoryCacheProducer#onNewResultImpl");
                }
                if (!b.g(status) && newResult != null && !b.n(status, 10) && newResult.y() != com.facebook.imageformat.c.f11810c) {
                    com.facebook.common.references.a<PooledByteBuffer> i4 = newResult.i();
                    if (i4 != null) {
                        com.facebook.common.references.a<PooledByteBuffer> aVar = null;
                        if (this.f13242l && this.f13241k) {
                            aVar = this.f13239i.c(this.f13240j, i4);
                        }
                        com.facebook.common.references.a.k(i4);
                        if (aVar != null) {
                            com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(aVar);
                            eVar.h(newResult);
                            com.facebook.common.references.a.k(aVar);
                            r().d(1.0f);
                            r().c(eVar, status);
                            com.facebook.imagepipeline.image.e.d(eVar);
                            if (e4) {
                                return;
                            }
                            return;
                        }
                    }
                    r().c(newResult, status);
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                        return;
                    }
                    return;
                }
                r().c(newResult, status);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            } finally {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        }
    }

    public t(com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, PooledByteBuffer> memoryCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f13236a = memoryCache;
        this.f13237b = cacheKeyFactory;
        this.f13238c = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("EncodedMemoryCacheProducer#produceResults");
            }
            u0 k10 = producerContext.k();
            k10.d(producerContext, f13234d);
            com.facebook.cache.common.c d4 = this.f13237b.d(producerContext.c(), producerContext.d());
            com.facebook.common.references.a<PooledByteBuffer> aVar = producerContext.c().z(4) ? this.f13236a.get(d4) : null;
            if (aVar != null) {
                com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(aVar);
                try {
                    k10.j(producerContext, f13234d, k10.f(producerContext, f13234d) ? ImmutableMap.of("cached_value_found", "true") : null);
                    k10.b(producerContext, f13234d, true);
                    producerContext.j("memory_encoded");
                    consumer.d(1.0f);
                    consumer.c(eVar, 1);
                    com.facebook.common.references.a.k(aVar);
                } finally {
                    com.facebook.imagepipeline.image.e.d(eVar);
                }
            } else if (producerContext.s().getValue() >= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue()) {
                k10.j(producerContext, f13234d, k10.f(producerContext, f13234d) ? ImmutableMap.of("cached_value_found", "false") : null);
                k10.b(producerContext, f13234d, false);
                producerContext.h("memory_encoded", "nil-result");
                consumer.c(null, 1);
                com.facebook.common.references.a.k(aVar);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            } else {
                a aVar2 = new a(consumer, this.f13236a, d4, producerContext.c().z(8), producerContext.g().G().r());
                k10.j(producerContext, f13234d, k10.f(producerContext, f13234d) ? ImmutableMap.of("cached_value_found", "false") : null);
                this.f13238c.b(aVar2, producerContext);
                com.facebook.common.references.a.k(aVar);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }
}
