package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.ScalarSubscription;

/* compiled from: FlowableJust.java */
/* loaded from: classes3.dex */
public final class u1<T> extends io.reactivex.j<T> implements o7.m<T> {

    /* renamed from: b  reason: collision with root package name */
    private final T f72799b;

    public u1(T t9) {
        this.f72799b = t9;
    }

    @Override // o7.m, java.util.concurrent.Callable
    public T call() {
        return this.f72799b;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        dVar.onSubscribe(new ScalarSubscription(dVar, this.f72799b));
    }
}
