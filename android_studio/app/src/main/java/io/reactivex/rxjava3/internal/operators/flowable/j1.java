package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import java.util.Objects;
import java.util.concurrent.Callable;

/* compiled from: FlowableFromCallable.java */
/* loaded from: classes4.dex */
public final class j1<T> extends io.reactivex.rxjava3.core.m<T> implements q7.s<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends T> f77387b;

    public j1(Callable<? extends T> callable) {
        this.f77387b = callable;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(s9);
        s9.onSubscribe(deferredScalarSubscription);
        try {
            T call = this.f77387b.call();
            Objects.requireNonNull(call, "The callable returned a null value");
            deferredScalarSubscription.complete(call);
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
        T call = this.f77387b.call();
        Objects.requireNonNull(call, "The callable returned a null value");
        return call;
    }
}
