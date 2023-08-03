package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;

/* compiled from: FlowableEmpty.java */
/* loaded from: classes4.dex */
public final class w0 extends io.reactivex.rxjava3.core.m<Object> implements io.reactivex.rxjava3.internal.fuseable.o<Object> {

    /* renamed from: b  reason: collision with root package name */
    public static final io.reactivex.rxjava3.core.m<Object> f78168b = new w0();

    private w0() {
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super Object> s9) {
        EmptySubscription.complete(s9);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.o, q7.s
    public Object get() {
        return null;
    }
}
