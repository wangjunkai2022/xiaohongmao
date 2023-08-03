package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.operators.observable.ObservableScalarXMap;

/* compiled from: ObservableJust.java */
/* loaded from: classes4.dex */
public final class v1<T> extends io.reactivex.rxjava3.core.g0<T> implements io.reactivex.rxjava3.internal.fuseable.o<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f80248a;

    public v1(final T value) {
        this.f80248a = value;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(observer, this.f80248a);
        observer.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.o, q7.s
    public T get() {
        return this.f80248a;
    }
}
