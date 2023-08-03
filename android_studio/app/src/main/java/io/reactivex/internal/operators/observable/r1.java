package io.reactivex.internal.operators.observable;

import io.reactivex.internal.operators.observable.ObservableScalarXMap;

/* compiled from: ObservableJust.java */
/* loaded from: classes3.dex */
public final class r1<T> extends io.reactivex.z<T> implements o7.m<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f74680a;

    public r1(T t9) {
        this.f74680a = t9;
    }

    @Override // o7.m, java.util.concurrent.Callable
    public T call() {
        return this.f74680a;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(g0Var, this.f74680a);
        g0Var.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }
}
