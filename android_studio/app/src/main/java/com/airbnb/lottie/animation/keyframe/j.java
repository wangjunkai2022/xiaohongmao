package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import java.util.List;

/* compiled from: PointKeyframeAnimation.java */
/* loaded from: classes.dex */
public class j extends f<PointF> {

    /* renamed from: l  reason: collision with root package name */
    private final PointF f4223l;

    public j(List<com.airbnb.lottie.value.a<PointF>> list) {
        super(list);
        this.f4223l = new PointF();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    /* renamed from: n */
    public PointF i(com.airbnb.lottie.value.a<PointF> aVar, float f10) {
        PointF pointF;
        PointF pointF2;
        PointF pointF3 = aVar.f5650b;
        if (pointF3 != null && (pointF = aVar.f5651c) != null) {
            PointF pointF4 = pointF3;
            PointF pointF5 = pointF;
            com.airbnb.lottie.value.j<A> jVar = this.f4206e;
            if (jVar == 0 || (pointF2 = (PointF) jVar.b(aVar.f5653e, aVar.f5654f.floatValue(), pointF4, pointF5, f10, e(), f())) == null) {
                PointF pointF6 = this.f4223l;
                float f11 = pointF4.x;
                float f12 = pointF4.y;
                pointF6.set(f11 + ((pointF5.x - f11) * f10), f12 + (f10 * (pointF5.y - f12)));
                return this.f4223l;
            }
            return pointF2;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
