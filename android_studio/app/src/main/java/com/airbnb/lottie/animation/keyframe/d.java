package com.airbnb.lottie.animation.keyframe;

import java.util.List;

/* compiled from: GradientColorKeyframeAnimation.java */
/* loaded from: classes.dex */
public class d extends f<com.airbnb.lottie.model.content.c> {

    /* renamed from: l  reason: collision with root package name */
    private final com.airbnb.lottie.model.content.c f4213l;

    public d(List<com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.c>> list) {
        super(list);
        com.airbnb.lottie.model.content.c cVar = list.get(0).f5650b;
        int c10 = cVar != null ? cVar.c() : 0;
        this.f4213l = new com.airbnb.lottie.model.content.c(new float[c10], new int[c10]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* renamed from: n */
    public com.airbnb.lottie.model.content.c i(com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.c> aVar, float f10) {
        this.f4213l.d(aVar.f5650b, aVar.f5651c, f10);
        return this.f4213l;
    }
}
