package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;

/* compiled from: FlowableNever.java */
/* loaded from: classes3.dex */
public final class g2 extends io.reactivex.j<Object> {

    /* renamed from: b  reason: collision with root package name */
    public static final io.reactivex.j<Object> f71944b = new g2();

    private g2() {
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super Object> dVar) {
        dVar.onSubscribe(EmptySubscription.INSTANCE);
    }
}
