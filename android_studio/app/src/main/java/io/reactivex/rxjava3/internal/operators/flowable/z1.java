package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.ScalarSubscription;

/* compiled from: FlowableJust.java */
/* loaded from: classes4.dex */
public final class z1<T> extends io.reactivex.rxjava3.core.m<T> implements io.reactivex.rxjava3.internal.fuseable.o<T> {

    /* renamed from: b  reason: collision with root package name */
    private final T f78388b;

    public z1(final T value) {
        this.f78388b = value;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        s9.onSubscribe(new ScalarSubscription(s9, this.f78388b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.o, q7.s
    public T get() {
        return this.f78388b;
    }
}
