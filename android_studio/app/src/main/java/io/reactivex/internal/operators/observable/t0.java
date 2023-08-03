package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: ObservableEmpty.java */
/* loaded from: classes3.dex */
public final class t0 extends io.reactivex.z<Object> implements o7.m<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.z<Object> f74777a = new t0();

    private t0() {
    }

    @Override // o7.m, java.util.concurrent.Callable
    public Object call() {
        return null;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super Object> g0Var) {
        EmptyDisposable.complete(g0Var);
    }
}
