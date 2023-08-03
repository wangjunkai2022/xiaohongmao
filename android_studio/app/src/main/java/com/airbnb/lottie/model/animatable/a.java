package com.airbnb.lottie.model.animatable;

import java.util.List;

/* compiled from: AnimatableColorValue.java */
/* loaded from: classes.dex */
public class a extends n<Integer, Integer> {
    public a(List<com.airbnb.lottie.value.a<Integer>> list) {
        super((List) list);
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<Integer, Integer> a() {
        return new com.airbnb.lottie.animation.keyframe.b(this.f4426a);
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
