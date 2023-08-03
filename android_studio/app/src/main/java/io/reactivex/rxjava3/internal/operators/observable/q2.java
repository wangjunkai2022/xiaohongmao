package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.observable.p2;
import java.util.Objects;

/* compiled from: ObservableReduceWithSingle.java */
/* loaded from: classes4.dex */
public final class q2<T, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79991a;

    /* renamed from: b  reason: collision with root package name */
    final q7.s<R> f79992b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<R, ? super T, R> f79993c;

    public q2(io.reactivex.rxjava3.core.l0<T> source, q7.s<R> seedSupplier, q7.c<R, ? super T, R> reducer) {
        this.f79991a = source;
        this.f79992b = seedSupplier;
        this.f79993c = reducer;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super R> observer) {
        try {
            R r9 = this.f79992b.get();
            Objects.requireNonNull(r9, "The seedSupplier returned a null value");
            this.f79991a.a(new p2.a(observer, this.f79993c, r9));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
