package com.airbnb.lottie.value;

import android.view.animation.Interpolator;

/* compiled from: LottieInterpolatedFloatValue.java */
/* loaded from: classes.dex */
public class c extends f<Float> {
    public c(Float f10, Float f11) {
        super(f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.value.f
    /* renamed from: f */
    public Float e(Float f10, Float f11, float f12) {
        return Float.valueOf(com.airbnb.lottie.utils.g.j(f10.floatValue(), f11.floatValue(), f12));
    }

    public c(Float f10, Float f11, Interpolator interpolator) {
        super(f10, f11, interpolator);
    }
}
