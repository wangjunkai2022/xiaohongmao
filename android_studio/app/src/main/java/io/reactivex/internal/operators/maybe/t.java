package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: MaybeEmpty.java */
/* loaded from: classes3.dex */
public final class t extends io.reactivex.q<Object> implements o7.m<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final t f73472a = new t();

    @Override // o7.m, java.util.concurrent.Callable
    public Object call() {
        return null;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super Object> tVar) {
        EmptyDisposable.complete(tVar);
    }
}
