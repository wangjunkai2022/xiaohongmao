package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import java.util.concurrent.Callable;

/* compiled from: FlowableFromCallable.java */
/* loaded from: classes3.dex */
public final class h1<T> extends io.reactivex.j<T> implements Callable<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends T> f71980b;

    public h1(Callable<? extends T> callable) {
        this.f71980b = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return (T) io.reactivex.internal.functions.b.g(this.f71980b.call(), "The callable returned a null value");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(dVar);
        dVar.onSubscribe(deferredScalarSubscription);
        try {
            deferredScalarSubscription.complete(io.reactivex.internal.functions.b.g(this.f71980b.call(), "The callable returned a null value"));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (deferredScalarSubscription.isCancelled()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                dVar.onError(th);
            }
        }
    }
}
