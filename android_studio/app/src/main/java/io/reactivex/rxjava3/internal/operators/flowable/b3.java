package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.flowable.a3;
import java.util.Objects;

/* compiled from: FlowableReduceWithSingle.java */
/* loaded from: classes4.dex */
public final class b3<T, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f76899a;

    /* renamed from: b  reason: collision with root package name */
    final q7.s<R> f76900b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<R, ? super T, R> f76901c;

    public b3(org.reactivestreams.c<T> source, q7.s<R> seedSupplier, q7.c<R, ? super T, R> reducer) {
        this.f76899a = source;
        this.f76900b = seedSupplier;
        this.f76901c = reducer;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super R> observer) {
        try {
            R r9 = this.f76900b.get();
            Objects.requireNonNull(r9, "The seedSupplier returned a null value");
            this.f76899a.i(new a3.a(observer, this.f76901c, r9));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
