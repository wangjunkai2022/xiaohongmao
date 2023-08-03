package com.airbnb.lottie.animation.keyframe;

import java.util.List;

/* compiled from: ScaleKeyframeAnimation.java */
/* loaded from: classes.dex */
public class k extends f<com.airbnb.lottie.value.k> {

    /* renamed from: l  reason: collision with root package name */
    private final com.airbnb.lottie.value.k f4224l;

    public k(List<com.airbnb.lottie.value.a<com.airbnb.lottie.value.k>> list) {
        super(list);
        this.f4224l = new com.airbnb.lottie.value.k();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    /* renamed from: n */
    public com.airbnb.lottie.value.k i(com.airbnb.lottie.value.a<com.airbnb.lottie.value.k> aVar, float f10) {
        com.airbnb.lottie.value.k kVar;
        com.airbnb.lottie.value.k kVar2;
        com.airbnb.lottie.value.k kVar3 = aVar.f5650b;
        if (kVar3 != null && (kVar = aVar.f5651c) != null) {
            com.airbnb.lottie.value.k kVar4 = kVar3;
            com.airbnb.lottie.value.k kVar5 = kVar;
            com.airbnb.lottie.value.j<A> jVar = this.f4206e;
            if (jVar == 0 || (kVar2 = (com.airbnb.lottie.value.k) jVar.b(aVar.f5653e, aVar.f5654f.floatValue(), kVar4, kVar5, f10, e(), f())) == null) {
                this.f4224l.d(com.airbnb.lottie.utils.g.j(kVar4.b(), kVar5.b(), f10), com.airbnb.lottie.utils.g.j(kVar4.c(), kVar5.c(), f10));
                return this.f4224l;
            }
            return kVar2;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
