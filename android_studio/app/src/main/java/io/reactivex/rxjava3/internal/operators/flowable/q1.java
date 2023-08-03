package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import java.util.Objects;

/* compiled from: FlowableFromSupplier.java */
/* loaded from: classes4.dex */
public final class q1<T> extends io.reactivex.rxjava3.core.m<T> implements q7.s<T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.s<? extends T> f77818b;

    public q1(q7.s<? extends T> supplier) {
        this.f77818b = supplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(s9);
        s9.onSubscribe(deferredScalarSubscription);
        try {
            T t9 = this.f77818b.get();
            Objects.requireNonNull(t9, "The supplier returned a null value");
            deferredScalarSubscription.complete(t9);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (deferredScalarSubscription.isCancelled()) {
                io.reactivex.rxjava3.plugins.a.Y(th);
            } else {
                s9.onError(th);
            }
        }
    }

    @Override // q7.s
    public T get() throws Throwable {
        T t9 = this.f77818b.get();
        Objects.requireNonNull(t9, "The supplier returned a null value");
        return t9;
    }
}
