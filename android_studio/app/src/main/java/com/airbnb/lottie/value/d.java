package com.airbnb.lottie.value;

import android.view.animation.Interpolator;

/* compiled from: LottieInterpolatedIntegerValue.java */
/* loaded from: classes.dex */
public class d extends f<Integer> {
    public d(Integer num, Integer num2) {
        super(num, num2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.value.f
    /* renamed from: f */
    public Integer e(Integer num, Integer num2, float f10) {
        return Integer.valueOf(com.airbnb.lottie.utils.g.k(num.intValue(), num2.intValue(), f10));
    }

    public d(Integer num, Integer num2, Interpolator interpolator) {
        super(num, num2, interpolator);
    }
}
