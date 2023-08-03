package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: CompletableNever.java */
/* loaded from: classes4.dex */
public final class g0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.rxjava3.core.a f76612a = new g0();

    private g0() {
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        observer.onSubscribe(EmptyDisposable.NEVER);
    }
}
