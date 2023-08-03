package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: ObservableEmpty.java */
/* loaded from: classes4.dex */
public final class t0 extends io.reactivex.rxjava3.core.g0<Object> implements io.reactivex.rxjava3.internal.fuseable.o<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.rxjava3.core.g0<Object> f80117a = new t0();

    private t0() {
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super Object> o9) {
        EmptyDisposable.complete(o9);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.o, q7.s
    public Object get() {
        return null;
    }
}
