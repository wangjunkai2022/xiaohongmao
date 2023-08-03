package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: EncodedCacheKeyMultiplexProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class s extends j0<Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel>, com.facebook.imagepipeline.image.e> {

    /* renamed from: g  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f13223g;

    public s(com.facebook.imagepipeline.cache.g cacheKeyFactory, boolean keepCancelledFetchAsLowPriority, q0 inputProducer) {
        super(inputProducer, "EncodedCacheKeyMultiplexProducer", s0.a.f13233o0, keepCancelledFetchAsLowPriority);
        this.f13223g = cacheKeyFactory;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    @r7.h
    /* renamed from: l */
    public com.facebook.imagepipeline.image.e g(@r7.h com.facebook.imagepipeline.image.e encodedImage) {
        return com.facebook.imagepipeline.image.e.b(encodedImage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.j0
    /* renamed from: m */
    public Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel> j(s0 producerContext) {
        return Pair.create(this.f13223g.d(producerContext.c(), producerContext.d()), producerContext.s());
    }
}
