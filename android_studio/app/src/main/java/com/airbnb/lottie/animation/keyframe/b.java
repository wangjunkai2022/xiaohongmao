package com.airbnb.lottie.animation.keyframe;

import java.util.List;

/* compiled from: ColorKeyframeAnimation.java */
/* loaded from: classes.dex */
public class b extends f<Integer> {
    public b(List<com.airbnb.lottie.value.a<Integer>> list) {
        super(list);
    }

    public int n() {
        return o(b(), d());
    }

    public int o(com.airbnb.lottie.value.a<Integer> aVar, float f10) {
        Integer num;
        Integer num2 = aVar.f5650b;
        if (num2 != null && aVar.f5651c != null) {
            int intValue = num2.intValue();
            int intValue2 = aVar.f5651c.intValue();
            com.airbnb.lottie.value.j<A> jVar = this.f4206e;
            if (jVar != 0 && (num = (Integer) jVar.b(aVar.f5653e, aVar.f5654f.floatValue(), Integer.valueOf(intValue), Integer.valueOf(intValue2), f10, e(), f())) != null) {
                return num.intValue();
            }
            return com.airbnb.lottie.utils.b.c(com.airbnb.lottie.utils.g.b(f10, 0.0f, 1.0f), intValue, intValue2);
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
