package com.airbnb.lottie.animation.keyframe;

import androidx.annotation.Nullable;
import java.util.Collections;

/* compiled from: ValueCallbackKeyframeAnimation.java */
/* loaded from: classes.dex */
public class p<K, A> extends a<K, A> {

    /* renamed from: l  reason: collision with root package name */
    private final com.airbnb.lottie.value.b<A> f4244l;

    /* renamed from: m  reason: collision with root package name */
    private final A f4245m;

    public p(com.airbnb.lottie.value.j<A> jVar) {
        this(jVar, null);
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    float c() {
        return 1.0f;
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public A h() {
        com.airbnb.lottie.value.j<A> jVar = this.f4206e;
        A a10 = this.f4245m;
        return jVar.b(0.0f, 0.0f, a10, a10, f(), f(), f());
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    A i(com.airbnb.lottie.value.a<K> aVar, float f10) {
        return h();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public void j() {
        if (this.f4206e != null) {
            super.j();
        }
    }

    public p(com.airbnb.lottie.value.j<A> jVar, @Nullable A a10) {
        super(Collections.emptyList());
        this.f4244l = new com.airbnb.lottie.value.b<>();
        m(jVar);
        this.f4245m = a10;
    }
}
