package com.airbnb.lottie.animation.keyframe;

import java.util.List;

/* compiled from: IntegerKeyframeAnimation.java */
/* loaded from: classes.dex */
public class e extends f<Integer> {
    public e(List<com.airbnb.lottie.value.a<Integer>> list) {
        super(list);
    }

    public int n() {
        return o(b(), d());
    }

    int o(com.airbnb.lottie.value.a<Integer> aVar, float f10) {
        Integer num;
        if (aVar.f5650b != null && aVar.f5651c != null) {
            com.airbnb.lottie.value.j<A> jVar = this.f4206e;
            if (jVar != 0 && (num = (Integer) jVar.b(aVar.f5653e, aVar.f5654f.floatValue(), aVar.f5650b, aVar.f5651c, f10, e(), f())) != null) {
                return num.intValue();
            }
            return com.airbnb.lottie.utils.g.k(aVar.g(), aVar.d(), f10);
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* renamed from: p */
    public Integer i(com.airbnb.lottie.value.a<Integer> aVar, float f10) {
        return Integer.valueOf(o(aVar, f10));
    }
}
