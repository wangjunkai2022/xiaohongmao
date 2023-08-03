package com.airbnb.lottie.value;

import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

/* compiled from: LottieInterpolatedValue.java */
/* loaded from: classes.dex */
abstract class f<T> extends j<T> {

    /* renamed from: d  reason: collision with root package name */
    private final T f5671d;

    /* renamed from: e  reason: collision with root package name */
    private final T f5672e;

    /* renamed from: f  reason: collision with root package name */
    private final Interpolator f5673f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(T t9, T t10) {
        this(t9, t10, new LinearInterpolator());
    }

    @Override // com.airbnb.lottie.value.j
    public T a(b<T> bVar) {
        return e(this.f5671d, this.f5672e, this.f5673f.getInterpolation(bVar.e()));
    }

    abstract T e(T t9, T t10, float f10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(T t9, T t10, Interpolator interpolator) {
        this.f5671d = t9;
        this.f5672e = t10;
        this.f5673f = interpolator;
    }
}
