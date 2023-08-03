package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: CompletableError.java */
/* loaded from: classes3.dex */
public final class o extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Throwable f71436a;

    public o(Throwable th) {
        this.f71436a = th;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        EmptyDisposable.error(this.f71436a, dVar);
    }
}
