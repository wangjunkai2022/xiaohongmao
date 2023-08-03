package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: ObservableNever.java */
/* loaded from: classes4.dex */
public final class f2 extends io.reactivex.rxjava3.core.g0<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.rxjava3.core.g0<Object> f79416a = new f2();

    private f2() {
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super Object> o9) {
        o9.onSubscribe(EmptyDisposable.NEVER);
    }
}
