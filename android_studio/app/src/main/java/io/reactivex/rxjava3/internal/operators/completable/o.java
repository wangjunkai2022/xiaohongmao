package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: CompletableError.java */
/* loaded from: classes4.dex */
public final class o extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final Throwable f76691a;

    public o(Throwable error) {
        this.f76691a = error;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        EmptyDisposable.error(this.f76691a, observer);
    }
}
