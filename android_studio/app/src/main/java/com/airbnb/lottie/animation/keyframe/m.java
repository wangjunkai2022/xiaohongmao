package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import java.util.Collections;

/* compiled from: SplitDimensionPathKeyframeAnimation.java */
/* loaded from: classes.dex */
public class m extends a<PointF, PointF> {

    /* renamed from: l  reason: collision with root package name */
    private final PointF f4227l;

    /* renamed from: m  reason: collision with root package name */
    private final a<Float, Float> f4228m;

    /* renamed from: n  reason: collision with root package name */
    private final a<Float, Float> f4229n;

    public m(a<Float, Float> aVar, a<Float, Float> aVar2) {
        super(Collections.emptyList());
        this.f4227l = new PointF();
        this.f4228m = aVar;
        this.f4229n = aVar2;
        l(f());
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public void l(float f10) {
        this.f4228m.l(f10);
        this.f4229n.l(f10);
        this.f4227l.set(this.f4228m.h().floatValue(), this.f4229n.h().floatValue());
        for (int i4 = 0; i4 < this.f4202a.size(); i4++) {
            this.f4202a.get(i4).a();
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    /* renamed from: n */
    public PointF h() {
        return i(null, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* renamed from: o */
    public PointF i(com.airbnb.lottie.value.a<PointF> aVar, float f10) {
        return this.f4227l;
    }
}
