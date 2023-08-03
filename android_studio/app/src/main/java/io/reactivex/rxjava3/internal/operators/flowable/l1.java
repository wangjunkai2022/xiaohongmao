package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: FlowableFromFuture.java */
/* loaded from: classes4.dex */
public final class l1<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final Future<? extends T> f77449b;

    /* renamed from: c  reason: collision with root package name */
    final long f77450c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f77451d;

    public l1(Future<? extends T> future, long timeout, TimeUnit unit) {
        this.f77449b = future;
        this.f77450c = timeout;
        this.f77451d = unit;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(s9);
        s9.onSubscribe(deferredScalarSubscription);
        try {
            TimeUnit timeUnit = this.f77451d;
            T t9 = timeUnit != null ? this.f77449b.get(this.f77450c, timeUnit) : this.f77449b.get();
            if (t9 == null) {
                s9.onError(io.reactivex.rxjava3.internal.util.g.b("The future returned a null value."));
            } else {
                deferredScalarSubscription.complete(t9);
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (deferredScalarSubscription.isCancelled()) {
                return;
            }
            s9.onError(th);
        }
    }
}
