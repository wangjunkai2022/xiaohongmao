package com.airbnb.lottie.value;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* compiled from: LottieValueCallback.java */
/* loaded from: classes.dex */
public class j<T> {

    /* renamed from: a  reason: collision with root package name */
    private final b<T> f5675a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private com.airbnb.lottie.animation.keyframe.a<?, ?> f5676b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    protected T f5677c;

    public j() {
        this.f5675a = new b<>();
        this.f5677c = null;
    }

    @Nullable
    public T a(b<T> bVar) {
        return this.f5677c;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final T b(float f10, float f11, T t9, T t10, float f12, float f13, float f14) {
        return a(this.f5675a.h(f10, f11, t9, t10, f12, f13, f14));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final void c(@Nullable com.airbnb.lottie.animation.keyframe.a<?, ?> aVar) {
        this.f5676b = aVar;
    }

    public final void d(@Nullable T t9) {
        this.f5677c = t9;
        com.airbnb.lottie.animation.keyframe.a<?, ?> aVar = this.f5676b;
        if (aVar != null) {
            aVar.j();
        }
    }

    public j(@Nullable T t9) {
        this.f5675a = new b<>();
        this.f5677c = t9;
    }
}
