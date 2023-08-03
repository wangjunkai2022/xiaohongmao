package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;

/* compiled from: FlowableNever.java */
/* loaded from: classes4.dex */
public final class k2 extends io.reactivex.rxjava3.core.m<Object> {

    /* renamed from: b  reason: collision with root package name */
    public static final io.reactivex.rxjava3.core.m<Object> f77427b = new k2();

    private k2() {
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super Object> s9) {
        s9.onSubscribe(EmptySubscription.INSTANCE);
    }
}
