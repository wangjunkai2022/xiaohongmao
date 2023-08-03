package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: CompletableEmpty.java */
/* loaded from: classes4.dex */
public final class n extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.rxjava3.core.a f76682a = new n();

    private n() {
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(io.reactivex.rxjava3.core.d observer) {
        EmptyDisposable.complete(observer);
    }
}
