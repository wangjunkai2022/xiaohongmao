package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: FlowableFromFuture.java */
/* loaded from: classes3.dex */
public final class i1<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Future<? extends T> f72028b;

    /* renamed from: c  reason: collision with root package name */
    final long f72029c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f72030d;

    public i1(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        this.f72028b = future;
        this.f72029c = j4;
        this.f72030d = timeUnit;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(dVar);
        dVar.onSubscribe(deferredScalarSubscription);
        try {
            TimeUnit timeUnit = this.f72030d;
            T t9 = timeUnit != null ? this.f72028b.get(this.f72029c, timeUnit) : this.f72028b.get();
            if (t9 == null) {
                dVar.onError(new NullPointerException("The future returned null"));
            } else {
                deferredScalarSubscription.complete(t9);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (deferredScalarSubscription.isCancelled()) {
                return;
            }
            dVar.onError(th);
        }
    }
}
