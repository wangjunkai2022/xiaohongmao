package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: SingleLift.java */
/* loaded from: classes4.dex */
public final class j0<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75420a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.n0<? extends R, ? super T> f75421b;

    public j0(io.reactivex.o0<T> o0Var, io.reactivex.n0<? extends R, ? super T> n0Var) {
        this.f75420a = o0Var;
        this.f75421b = n0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super R> l0Var) {
        try {
            this.f75420a.d((io.reactivex.l0) io.reactivex.internal.functions.b.g(this.f75421b.a(l0Var), "The onLift returned a null SingleObserver"));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }
}
