package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;

/* compiled from: FlowableError.java */
/* loaded from: classes4.dex */
public final class x0<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.s<? extends Throwable> f78215b;

    public x0(q7.s<? extends Throwable> errorSupplier) {
        this.f78215b = errorSupplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        try {
            th = (Throwable) io.reactivex.rxjava3.internal.util.g.d(this.f78215b.get(), "Callable returned a null Throwable.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.rxjava3.exceptions.a.b(th);
        }
        EmptySubscription.error(th, s9);
    }
}
