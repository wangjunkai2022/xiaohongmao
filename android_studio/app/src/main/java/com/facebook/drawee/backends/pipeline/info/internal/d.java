package com.facebook.drawee.backends.pipeline.info.internal;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import x0.l;

/* compiled from: ImagePerfRequestListener.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d extends q1.b {

    /* renamed from: a  reason: collision with root package name */
    private final s0.c f11310a;

    /* renamed from: b  reason: collision with root package name */
    private final l f11311b;

    public d(s0.c monotonicClock, l imagePerfState) {
        this.f11310a = monotonicClock;
        this.f11311b = imagePerfState;
    }

    @Override // q1.b, q1.f
    public void a(ImageRequest request, Object callerContext, String requestId, boolean isPrefetch) {
        this.f11311b.y(this.f11310a.now());
        this.f11311b.w(request);
        this.f11311b.g(callerContext);
        this.f11311b.D(requestId);
        this.f11311b.C(isPrefetch);
    }

    @Override // q1.b, q1.f
    public void c(ImageRequest request, String requestId, boolean isPrefetch) {
        this.f11311b.x(this.f11310a.now());
        this.f11311b.w(request);
        this.f11311b.D(requestId);
        this.f11311b.C(isPrefetch);
    }

    @Override // q1.b, q1.f
    public void i(ImageRequest request, String requestId, Throwable throwable, boolean isPrefetch) {
        this.f11311b.x(this.f11310a.now());
        this.f11311b.w(request);
        this.f11311b.D(requestId);
        this.f11311b.C(isPrefetch);
    }

    @Override // q1.b, q1.f
    public void k(String requestId) {
        this.f11311b.x(this.f11310a.now());
        this.f11311b.D(requestId);
    }
}
