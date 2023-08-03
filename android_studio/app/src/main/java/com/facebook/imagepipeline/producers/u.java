package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: EncodedProbeProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class u implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: g  reason: collision with root package name */
    public static final String f13243g = "EncodedProbeProducer";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13244a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13245b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f13246c;

    /* renamed from: d  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13247d;

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> f13248e;

    /* renamed from: f  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> f13249f;

    /* compiled from: EncodedProbeProducer.java */
    /* loaded from: classes.dex */
    private static class a extends p<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final s0 f13250i;

        /* renamed from: j  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f13251j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f13252k;

        /* renamed from: l  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.g f13253l;

        /* renamed from: m  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> f13254m;

        /* renamed from: n  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> f13255n;

        public a(l<com.facebook.imagepipeline.image.e> consumer, s0 producerContext, com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> encodedMemoryCacheHistory, com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> diskCacheHistory) {
            super(consumer);
            this.f13250i = producerContext;
            this.f13251j = defaultBufferedDiskCache;
            this.f13252k = smallImageBufferedDiskCache;
            this.f13253l = cacheKeyFactory;
            this.f13254m = encodedMemoryCacheHistory;
            this.f13255n = diskCacheHistory;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            boolean e4;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("EncodedProbeProducer#onNewResultImpl");
                }
                if (!b.g(status) && newResult != null && !b.n(status, 10) && newResult.y() != com.facebook.imageformat.c.f11810c) {
                    ImageRequest c10 = this.f13250i.c();
                    com.facebook.cache.common.c d4 = this.f13253l.d(c10, this.f13250i.d());
                    this.f13254m.a(d4);
                    if ("memory_encoded".equals(this.f13250i.r("origin"))) {
                        if (!this.f13255n.b(d4)) {
                            (c10.f() == ImageRequest.CacheChoice.SMALL ? this.f13252k : this.f13251j).i(d4);
                            this.f13255n.a(d4);
                        }
                    } else if ("disk".equals(this.f13250i.r("origin"))) {
                        this.f13255n.a(d4);
                    }
                    r().c(newResult, status);
                    if (e4) {
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

    public u(com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, com.facebook.imagepipeline.cache.e encodedMemoryCacheHistory, com.facebook.imagepipeline.cache.e diskCacheHistory, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f13244a = defaultBufferedDiskCache;
        this.f13245b = smallImageBufferedDiskCache;
        this.f13246c = cacheKeyFactory;
        this.f13248e = encodedMemoryCacheHistory;
        this.f13249f = diskCacheHistory;
        this.f13247d = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("EncodedProbeProducer#produceResults");
            }
            u0 k10 = producerContext.k();
            k10.d(producerContext, c());
            a aVar = new a(consumer, producerContext, this.f13244a, this.f13245b, this.f13246c, this.f13248e, this.f13249f);
            k10.j(producerContext, f13243g, null);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("mInputProducer.produceResult");
            }
            this.f13247d.b(aVar, producerContext);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected String c() {
        return f13243g;
    }
}
