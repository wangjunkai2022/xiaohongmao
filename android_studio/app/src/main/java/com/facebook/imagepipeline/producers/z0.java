package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: SettableProducerContext.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class z0 extends d {
    public z0(s0 context) {
        this(context.c(), context.getId(), context.i(), context.k(), context.d(), context.s(), context.q(), context.l(), context.getPriority(), context.g());
    }

    public void B(boolean isIntermediateResultExpected) {
        d.b(y(isIntermediateResultExpected));
    }

    public void C(boolean isPrefetch) {
        d.t(z(isPrefetch));
    }

    public void D(Priority priority) {
        d.u(A(priority));
    }

    public z0(ImageRequest overrideRequest, s0 context) {
        this(overrideRequest, context.getId(), context.i(), context.k(), context.d(), context.s(), context.q(), context.l(), context.getPriority(), context.g());
    }

    public z0(ImageRequest imageRequest, String id, u0 producerListener, Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevel, boolean isPrefetch, boolean isIntermediateResultExpected, Priority priority, com.facebook.imagepipeline.core.j imagePipelineConfig) {
        super(imageRequest, id, producerListener, callerContext, lowestPermittedRequestLevel, isPrefetch, isIntermediateResultExpected, priority, imagePipelineConfig);
    }

    public z0(ImageRequest imageRequest, String id, @r7.h String uiComponentId, u0 producerListener, Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevel, boolean isPrefetch, boolean isIntermediateResultExpected, Priority priority, com.facebook.imagepipeline.core.j imagePipelineConfig) {
        super(imageRequest, id, uiComponentId, producerListener, callerContext, lowestPermittedRequestLevel, isPrefetch, isIntermediateResultExpected, priority, imagePipelineConfig);
    }
}
