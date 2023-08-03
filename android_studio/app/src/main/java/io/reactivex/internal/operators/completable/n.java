package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: CompletableEmpty.java */
/* loaded from: classes3.dex */
public final class n extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.a f71430a = new n();

    private n() {
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        EmptyDisposable.complete(dVar);
    }
}
