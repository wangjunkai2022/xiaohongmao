package com.airbnb.lottie.value;

import androidx.annotation.NonNull;

/* compiled from: LottieRelativeFloatValueCallback.java */
/* loaded from: classes.dex */
public class g extends j<Float> {
    public g() {
    }

    public Float e(b<Float> bVar) {
        T t9 = this.f5677c;
        if (t9 != 0) {
            return (Float) t9;
        }
        throw new IllegalArgumentException("You must provide a static value in the constructor , call setValue, or override getValue.");
    }

    @Override // com.airbnb.lottie.value.j
    /* renamed from: f */
    public Float a(b<Float> bVar) {
        return Float.valueOf(com.airbnb.lottie.utils.g.j(bVar.g().floatValue(), bVar.b().floatValue(), bVar.c()) + e(bVar).floatValue());
    }

    public g(@NonNull Float f10) {
        super(f10);
    }
}
