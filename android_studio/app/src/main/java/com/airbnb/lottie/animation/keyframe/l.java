package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import java.util.List;

/* compiled from: ShapeKeyframeAnimation.java */
/* loaded from: classes.dex */
public class l extends a<com.airbnb.lottie.model.content.h, Path> {

    /* renamed from: l  reason: collision with root package name */
    private final com.airbnb.lottie.model.content.h f4225l;

    /* renamed from: m  reason: collision with root package name */
    private final Path f4226m;

    public l(List<com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.h>> list) {
        super(list);
        this.f4225l = new com.airbnb.lottie.model.content.h();
        this.f4226m = new Path();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    /* renamed from: n */
    public Path i(com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.h> aVar, float f10) {
        this.f4225l.c(aVar.f5650b, aVar.f5651c, f10);
        com.airbnb.lottie.utils.g.h(this.f4225l, this.f4226m);
        return this.f4226m;
    }
}
