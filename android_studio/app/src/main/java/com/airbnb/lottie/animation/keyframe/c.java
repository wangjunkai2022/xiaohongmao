package com.airbnb.lottie.animation.keyframe;

import java.util.List;

/* compiled from: FloatKeyframeAnimation.java */
/* loaded from: classes.dex */
public class c extends f<Float> {
    public c(List<com.airbnb.lottie.value.a<Float>> list) {
        super(list);
    }

    public float n() {
        return o(b(), d());
    }

    float o(com.airbnb.lottie.value.a<Float> aVar, float f10) {
        Float f11;
        if (aVar.f5650b != null && aVar.f5651c != null) {
            com.airbnb.lottie.value.j<A> jVar = this.f4206e;
            if (jVar != 0 && (f11 = (Float) jVar.b(aVar.f5653e, aVar.f5654f.floatValue(), aVar.f5650b, aVar.f5651c, f10, e(), f())) != null) {
                return f11.floatValue();
            }
            return com.airbnb.lottie.utils.g.j(aVar.f(), aVar.c(), f10);
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* renamed from: p */
    public Float i(com.airbnb.lottie.value.a<Float> aVar, float f10) {
        return Float.valueOf(o(aVar, f10));
    }
}
