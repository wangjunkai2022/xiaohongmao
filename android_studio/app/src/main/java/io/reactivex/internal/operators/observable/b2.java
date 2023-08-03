package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: ObservableNever.java */
/* loaded from: classes3.dex */
public final class b2 extends io.reactivex.z<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.z<Object> f73899a = new b2();

    private b2() {
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super Object> g0Var) {
        g0Var.onSubscribe(EmptyDisposable.NEVER);
    }
}
