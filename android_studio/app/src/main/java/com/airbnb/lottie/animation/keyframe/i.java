package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* compiled from: PathKeyframeAnimation.java */
/* loaded from: classes.dex */
public class i extends f<PointF> {

    /* renamed from: l  reason: collision with root package name */
    private final PointF f4219l;

    /* renamed from: m  reason: collision with root package name */
    private final float[] f4220m;

    /* renamed from: n  reason: collision with root package name */
    private h f4221n;

    /* renamed from: o  reason: collision with root package name */
    private PathMeasure f4222o;

    public i(List<? extends com.airbnb.lottie.value.a<PointF>> list) {
        super(list);
        this.f4219l = new PointF();
        this.f4220m = new float[2];
        this.f4222o = new PathMeasure();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* renamed from: n */
    public PointF i(com.airbnb.lottie.value.a<PointF> aVar, float f10) {
        PointF pointF;
        h hVar = (h) aVar;
        Path j4 = hVar.j();
        if (j4 == null) {
            return aVar.f5650b;
        }
        com.airbnb.lottie.value.j<A> jVar = this.f4206e;
        if (jVar == 0 || (pointF = (PointF) jVar.b(hVar.f5653e, hVar.f5654f.floatValue(), hVar.f5650b, hVar.f5651c, e(), f10, f())) == null) {
            if (this.f4221n != hVar) {
                this.f4222o.setPath(j4, false);
                this.f4221n = hVar;
            }
            PathMeasure pathMeasure = this.f4222o;
            pathMeasure.getPosTan(f10 * pathMeasure.getLength(), this.f4220m, null);
            PointF pointF2 = this.f4219l;
            float[] fArr = this.f4220m;
            pointF2.set(fArr[0], fArr[1]);
            return this.f4219l;
        }
        return pointF;
    }
}
