package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: MaybeLift.java */
/* loaded from: classes3.dex */
public final class t0<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.v<? extends R, ? super T> f73473b;

    public t0(io.reactivex.w<T> wVar, io.reactivex.v<? extends R, ? super T> vVar) {
        super(wVar);
        this.f73473b = vVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super R> tVar) {
        try {
            this.f73172a.b((io.reactivex.t) io.reactivex.internal.functions.b.g(this.f73473b.a(tVar), "The operator returned a null MaybeObserver"));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, tVar);
        }
    }
}
