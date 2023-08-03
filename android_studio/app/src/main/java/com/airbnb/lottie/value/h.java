package com.airbnb.lottie.value;

/* compiled from: LottieRelativeIntegerValueCallback.java */
/* loaded from: classes.dex */
public class h extends j<Integer> {
    public Integer e(b<Integer> bVar) {
        T t9 = this.f5677c;
        if (t9 != 0) {
            return (Integer) t9;
        }
        throw new IllegalArgumentException("You must provide a static value in the constructor , call setValue, or override getValue.");
    }

    @Override // com.airbnb.lottie.value.j
    /* renamed from: f */
    public Integer a(b<Integer> bVar) {
        return Integer.valueOf(com.airbnb.lottie.utils.g.k(bVar.g().intValue(), bVar.b().intValue(), bVar.c()) + e(bVar).intValue());
    }
}
