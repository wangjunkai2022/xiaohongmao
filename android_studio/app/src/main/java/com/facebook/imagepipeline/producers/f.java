package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BitmapMemoryCacheGetProducer.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class f extends h {

    /* renamed from: g  reason: collision with root package name */
    public static final String f12955g = "BitmapMemoryCacheGetProducer";

    /* renamed from: h  reason: collision with root package name */
    private static final String f12956h = "pipe_ui";

    public f(com.facebook.imagepipeline.cache.u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        super(memoryCache, cacheKeyFactory, inputProducer);
    }

    @Override // com.facebook.imagepipeline.producers.h
    protected String d() {
        return f12956h;
    }

    @Override // com.facebook.imagepipeline.producers.h
    protected String e() {
        return f12955g;
    }

    @Override // com.facebook.imagepipeline.producers.h
    protected l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> g(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final com.facebook.cache.common.c cacheKey, boolean isMemoryCacheEnabled) {
        return consumer;
    }
}
