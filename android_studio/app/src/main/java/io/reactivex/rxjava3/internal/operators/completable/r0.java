package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.operators.observable.f1;

/* compiled from: CompletableToObservable.java */
/* loaded from: classes4.dex */
public final class r0<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76714a;

    public r0(io.reactivex.rxjava3.core.g source) {
        this.f76714a = source;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f76714a.d(new f1.a(observer));
    }
}
