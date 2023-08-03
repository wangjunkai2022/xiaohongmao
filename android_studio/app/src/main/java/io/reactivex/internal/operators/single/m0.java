package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: SingleNever.java */
/* loaded from: classes4.dex */
public final class m0 extends io.reactivex.i0<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.i0<Object> f75440a = new m0();

    private m0() {
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Object> l0Var) {
        l0Var.onSubscribe(EmptyDisposable.NEVER);
    }
}
