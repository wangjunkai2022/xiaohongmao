package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import java.util.List;

/* compiled from: AnimatableSplitDimensionPathValue.java */
/* loaded from: classes.dex */
public class i implements m<PointF, PointF> {

    /* renamed from: a  reason: collision with root package name */
    private final b f4411a;

    /* renamed from: b  reason: collision with root package name */
    private final b f4412b;

    public i(b bVar, b bVar2) {
        this.f4411a = bVar;
        this.f4412b = bVar2;
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a() {
        return new com.airbnb.lottie.animation.keyframe.m(this.f4411a.a(), this.f4412b.a());
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public List<com.airbnb.lottie.value.a<PointF>> b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public boolean isStatic() {
        return this.f4411a.isStatic() && this.f4412b.isStatic();
    }
}
