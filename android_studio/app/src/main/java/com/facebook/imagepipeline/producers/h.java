package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BitmapMemoryCacheProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class h implements q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f12975d = "BitmapMemoryCacheProducer";

    /* renamed from: e  reason: collision with root package name */
    public static final String f12976e = "cached_value_found";

    /* renamed from: f  reason: collision with root package name */
    private static final String f12977f = "pipe_bg";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12978a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f12979b;

    /* renamed from: c  reason: collision with root package name */
    private final q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12980c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapMemoryCacheProducer.java */
    /* loaded from: classes.dex */
    public class a extends p<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12981i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ boolean f12982j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l consumer, final com.facebook.cache.common.c val$isBitmapCacheEnabledForWrite, final boolean val$cacheKey) {
            super(consumer);
            this.f12981i = val$isBitmapCacheEnabledForWrite;
            this.f12982j = val$cacheKey;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> newResult, int status) {
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar;
            boolean e4;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("BitmapMemoryCacheProducer#onNewResultImpl");
                }
                boolean f10 = b.f(status);
                if (newResult == null) {
                    if (f10) {
                        r().c(null, status);
                    }
                    if (e4) {
                        return;
                    }
                    return;
                }
                if (!newResult.q().d() && !b.o(status, 8)) {
                    if (!f10 && (aVar = h.this.f12978a.get(this.f12981i)) != null) {
                        com.facebook.imagepipeline.image.j a10 = newResult.q().a();
                        com.facebook.imagepipeline.image.j a11 = aVar.q().a();
                        if (!a11.a() && a11.c() < a10.c()) {
                            com.facebook.common.references.a.k(aVar);
                        } else {
                            r().c(aVar, status);
                            com.facebook.common.references.a.k(aVar);
                            if (com.facebook.imagepipeline.systrace.b.e()) {
                                com.facebook.imagepipeline.systrace.b.c();
                                return;
                            }
                            return;
                        }
                    }
                    com.facebook.common.references.a<com.facebook.imagepipeline.image.c> c10 = this.f12982j ? h.this.f12978a.c(this.f12981i, newResult) : null;
                    if (f10) {
                        r().d(1.0f);
                    }
                    l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> r9 = r();
                    if (c10 != null) {
                        newResult = c10;
                    }
                    r9.c(newResult, status);
                    com.facebook.common.references.a.k(c10);
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

    public h(com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        this.f12978a = memoryCache;
        this.f12979b = cacheKeyFactory;
        this.f12980c = inputProducer;
    }

    private static void f(com.facebook.imagepipeline.image.f imageWithMeta, s0 producerContext) {
        producerContext.p(imageWithMeta.getExtras());
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 producerContext) {
        boolean e4;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BitmapMemoryCacheProducer#produceResults");
            }
            u0 k10 = producerContext.k();
            k10.d(producerContext, e());
            com.facebook.cache.common.c a10 = this.f12979b.a(producerContext.c(), producerContext.d());
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = producerContext.c().z(1) ? this.f12978a.get(a10) : null;
            if (aVar != null) {
                f(aVar.q(), producerContext);
                boolean a11 = aVar.q().a().a();
                if (a11) {
                    k10.j(producerContext, e(), k10.f(producerContext, e()) ? ImmutableMap.of("cached_value_found", "true") : null);
                    k10.b(producerContext, e(), true);
                    producerContext.h("memory_bitmap", d());
                    consumer.d(1.0f);
                }
                consumer.c(aVar, b.m(a11));
                aVar.close();
                if (a11) {
                    if (e4) {
                        return;
                    }
                    return;
                }
            }
            if (producerContext.s().getValue() >= ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE.getValue()) {
                k10.j(producerContext, e(), k10.f(producerContext, e()) ? ImmutableMap.of("cached_value_found", "false") : null);
                k10.b(producerContext, e(), false);
                producerContext.h("memory_bitmap", d());
                consumer.c(null, 1);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                    return;
                }
                return;
            }
            l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> g4 = g(consumer, a10, producerContext.c().z(2));
            k10.j(producerContext, e(), k10.f(producerContext, e()) ? ImmutableMap.of("cached_value_found", "false") : null);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("mInputProducer.produceResult");
            }
            this.f12980c.b(g4, producerContext);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected String d() {
        return f12977f;
    }

    protected String e() {
        return f12975d;
    }

    protected l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> g(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final com.facebook.cache.common.c cacheKey, final boolean isBitmapCacheEnabledForWrite) {
        return new a(consumer, cacheKey, isBitmapCacheEnabledForWrite);
    }
}
