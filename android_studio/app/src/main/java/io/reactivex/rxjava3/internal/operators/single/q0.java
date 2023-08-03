package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: SingleNever.java */
/* loaded from: classes4.dex */
public final class q0 extends io.reactivex.rxjava3.core.p0<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.rxjava3.core.p0<Object> f80898a = new q0();

    private q0() {
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super Object> observer) {
        observer.onSubscribe(EmptyDisposable.NEVER);
    }
}
