package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.flowable.x2;
import java.util.concurrent.Callable;

/* compiled from: FlowableReduceWithSingle.java */
/* loaded from: classes3.dex */
public final class y2<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f73040a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<R> f73041b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<R, ? super T, R> f73042c;

    public y2(org.reactivestreams.c<T> cVar, Callable<R> callable, n7.c<R, ? super T, R> cVar2) {
        this.f73040a = cVar;
        this.f73041b = callable;
        this.f73042c = cVar2;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super R> l0Var) {
        try {
            this.f73040a.i(new x2.a(l0Var, this.f73042c, io.reactivex.internal.functions.b.g(this.f73041b.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }
}
