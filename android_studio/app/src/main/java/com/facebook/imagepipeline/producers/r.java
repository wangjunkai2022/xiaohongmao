package com.facebook.imagepipeline.producers;

import androidx.annotation.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DiskCacheWriteProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class r implements q0<com.facebook.imagepipeline.image.e> {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    static final String f13204e = "DiskCacheWriteProducer";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13205a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13206b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f13207c;

    /* renamed from: d  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13208d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiskCacheWriteProducer.java */
    /* loaded from: classes.dex */
    public static class b extends p<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final s0 f13209i;

        /* renamed from: j  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f13210j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f13211k;

        /* renamed from: l  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.g f13212l;

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            this.f13209i.k().d(this.f13209i, r.f13204e);
            if (!com.facebook.imagepipeline.producers.b.g(status) && newResult != null && !com.facebook.imagepipeline.producers.b.n(status, 10) && newResult.y() != com.facebook.imageformat.c.f11810c) {
                ImageRequest c10 = this.f13209i.c();
                com.facebook.cache.common.c d4 = this.f13212l.d(c10, this.f13209i.d());
                if (c10.f() == ImageRequest.CacheChoice.SMALL) {
                    this.f13211k.u(d4, newResult);
                } else {
                    this.f13210j.u(d4, newResult);
                }
                this.f13209i.k().j(this.f13209i, r.f13204e, null);
                r().c(newResult, status);
                return;
            }
            this.f13209i.k().j(this.f13209i, r.f13204e, null);
            r().c(newResult, status);
        }

        private b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext, final com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, final com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, final com.facebook.imagepipeline.cache.g cacheKeyFactory) {
            super(consumer);
            this.f13209i = producerContext;
            this.f13210j = defaultBufferedDiskCache;
            this.f13211k = smallImageBufferedDiskCache;
            this.f13212l = cacheKeyFactory;
        }
    }

    public r(com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f13205a = defaultBufferedDiskCache;
        this.f13206b = smallImageBufferedDiskCache;
        this.f13207c = cacheKeyFactory;
        this.f13208d = inputProducer;
    }

    private void c(l<com.facebook.imagepipeline.image.e> consumerOfDiskCacheWriteProducer, s0 producerContext) {
        if (producerContext.s().getValue() >= ImageRequest.RequestLevel.DISK_CACHE.getValue()) {
            producerContext.h("disk", "nil-result_write");
            consumerOfDiskCacheWriteProducer.c(null, 1);
            return;
        }
        if (producerContext.c().z(32)) {
            consumerOfDiskCacheWriteProducer = new b(consumerOfDiskCacheWriteProducer, producerContext, this.f13205a, this.f13206b, this.f13207c);
        }
        this.f13208d.b(consumerOfDiskCacheWriteProducer, producerContext);
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext) {
        c(consumer, producerContext);
    }
}
