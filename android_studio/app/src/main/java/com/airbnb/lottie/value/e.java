package com.airbnb.lottie.value;

import android.graphics.PointF;
import android.view.animation.Interpolator;

/* compiled from: LottieInterpolatedPointValue.java */
/* loaded from: classes.dex */
public class e extends f<PointF> {

    /* renamed from: g  reason: collision with root package name */
    private final PointF f5670g;

    public e(PointF pointF, PointF pointF2) {
        super(pointF, pointF2);
        this.f5670g = new PointF();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.value.f
    /* renamed from: f */
    public PointF e(PointF pointF, PointF pointF2, float f10) {
        this.f5670g.set(com.airbnb.lottie.utils.g.j(pointF.x, pointF2.x, f10), com.airbnb.lottie.utils.g.j(pointF.y, pointF2.y, f10));
        return this.f5670g;
    }

    public e(PointF pointF, PointF pointF2, Interpolator interpolator) {
        super(pointF, pointF2, interpolator);
        this.f5670g = new PointF();
    }
}
