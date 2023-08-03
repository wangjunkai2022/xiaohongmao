package com.facebook.imagepipeline.producers;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BitmapProbeProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class j implements q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: h  reason: collision with root package name */
    public static final String f13015h = "BitmapProbeProducer";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, PooledByteBuffer> f13016a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13017b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13018c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f13019d;

    /* renamed from: e  reason: collision with root package name */
    private final q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f13020e;

    /* renamed from: f  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> f13021f;

    /* renamed from: g  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> f13022g;

    /* compiled from: BitmapProbeProducer.java */
    /* loaded from: classes.dex */
    private static class a extends p<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: i  reason: collision with root package name */
        private final s0 f13023i;

        /* renamed from: j  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, PooledByteBuffer> f13024j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f13025k;

        /* renamed from: l  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f13026l;

        /* renamed from: m  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.g f13027m;

        /* renamed from: n  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> f13028n;

        /* renamed from: o  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> f13029o;

        public a(l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, s0 producerContext, com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> encodedMemoryCacheHistory, com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> diskCacheHistory) {
            super(consumer);
            this.f13023i = producerContext;
            this.f13024j = encodedMemoryCache;
            this.f13025k = defaultBufferedDiskCache;
            this.f13026l = smallImageBufferedDiskCache;
            this.f13027m = cacheKeyFactory;
            this.f13028n = encodedMemoryCacheHistory;
            this.f13029o = diskCacheHistory;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> newResult, int status) {
            boolean e4;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("BitmapProbeProducer#onNewResultImpl");
                }
                if (!b.g(status) && newResult != null && !b.n(status, 8)) {
                    ImageRequest c10 = this.f13023i.c();
                    com.facebook.cache.common.c d4 = this.f13027m.d(c10, this.f13023i.d());
                    String str = (String) this.f13023i.r("origin");
                    if (str != null && str.equals("memory_bitmap")) {
                        if (this.f13023i.g().G().s() && !this.f13028n.b(d4)) {
                            this.f13024j.a(d4);
                            this.f13028n.a(d4);
                        }
                        if (this.f13023i.g().G().q() && !this.f13029o.b(d4)) {
                            (c10.f() == ImageRequest.CacheChoice.SMALL ? this.f13026l : this.f13025k).i(d4);
                            this.f13029o.a(d4);
                        }
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

    public j(com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> encodedMemoryCacheHistory, com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> diskCacheHistory, q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        this.f13016a = encodedMemoryCache;
        this.f13017b = defaultBufferedDiskCache;
        this.f13018c = smallImageBufferedDiskCache;
        this.f13019d = cacheKeyFactory;
        this.f13021f = encodedMemoryCacheHistory;
        this.f13022g = diskCacheHistory;
        this.f13020e = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 producerContext) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BitmapProbeProducer#produceResults");
            }
            u0 k10 = producerContext.k();
            k10.d(producerContext, c());
            a aVar = new a(consumer, producerContext, this.f13016a, this.f13017b, this.f13018c, this.f13019d, this.f13021f, this.f13022g);
            k10.j(producerContext, f13015h, null);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("mInputProducer.produceResult");
            }
            this.f13020e.b(aVar, producerContext);
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
        return f13015h;
    }
}
