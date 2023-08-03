package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.observable.m2;
import java.util.concurrent.Callable;

/* compiled from: ObservableReduceWithSingle.java */
/* loaded from: classes3.dex */
public final class n2<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74510a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<R> f74511b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<R, ? super T, R> f74512c;

    public n2(io.reactivex.e0<T> e0Var, Callable<R> callable, n7.c<R, ? super T, R> cVar) {
        this.f74510a = e0Var;
        this.f74511b = callable;
        this.f74512c = cVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super R> l0Var) {
        try {
            this.f74510a.subscribe(new m2.a(l0Var, this.f74512c, io.reactivex.internal.functions.b.g(this.f74511b.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }
}
