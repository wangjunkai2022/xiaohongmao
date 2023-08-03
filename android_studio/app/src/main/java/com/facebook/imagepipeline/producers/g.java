package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BitmapMemoryCacheKeyMultiplexProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class g extends j0<Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel>, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: g  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f12967g;

    public g(com.facebook.imagepipeline.cache.g cacheKeyFactory, q0 inputProducer) {
        super(inputProducer, "BitmapMemoryCacheKeyMultiplexProducer", s0.a.f13232n0);
        this.f12967g = cacheKeyFactory;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    @r7.h
    /* renamed from: l */
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> g(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> closeableImage) {
        return com.facebook.common.references.a.h(closeableImage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.j0
    /* renamed from: m */
    public Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel> j(s0 producerContext) {
        return Pair.create(this.f12967g.a(producerContext.c(), producerContext.d()), producerContext.s());
    }
}
