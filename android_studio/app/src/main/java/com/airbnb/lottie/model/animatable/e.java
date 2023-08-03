package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import java.util.Collections;
import java.util.List;

/* compiled from: AnimatablePathValue.java */
/* loaded from: classes.dex */
public class e implements m<PointF, PointF> {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.airbnb.lottie.value.a<PointF>> f4410a;

    public e() {
        this.f4410a = Collections.singletonList(new com.airbnb.lottie.value.a(new PointF(0.0f, 0.0f)));
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a() {
        if (this.f4410a.get(0).h()) {
            return new com.airbnb.lottie.animation.keyframe.j(this.f4410a);
        }
        return new com.airbnb.lottie.animation.keyframe.i(this.f4410a);
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public List<com.airbnb.lottie.value.a<PointF>> b() {
        return this.f4410a;
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public boolean isStatic() {
        return this.f4410a.size() == 1 && this.f4410a.get(0).h();
    }

    public e(List<com.airbnb.lottie.value.a<PointF>> list) {
        this.f4410a = list;
    }
}
