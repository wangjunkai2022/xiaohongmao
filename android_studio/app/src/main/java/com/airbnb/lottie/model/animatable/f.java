package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import java.util.List;

/* compiled from: AnimatablePointValue.java */
/* loaded from: classes.dex */
public class f extends n<PointF, PointF> {
    public f(List<com.airbnb.lottie.value.a<PointF>> list) {
        super((List) list);
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a() {
        return new com.airbnb.lottie.animation.keyframe.j(this.f4426a);
    }

    @Override // com.airbnb.lottie.model.animatable.n, com.airbnb.lottie.model.animatable.m
    public /* bridge */ /* synthetic */ List b() {
        return super.b();
    }

    @Override // com.airbnb.lottie.model.animatable.n, com.airbnb.lottie.model.animatable.m
    public /* bridge */ /* synthetic */ boolean isStatic() {
        return super.isStatic();
    }

    @Override // com.airbnb.lottie.model.animatable.n
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
