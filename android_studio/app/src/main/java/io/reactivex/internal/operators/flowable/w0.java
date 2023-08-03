package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;

/* compiled from: FlowableEmpty.java */
/* loaded from: classes3.dex */
public final class w0 extends io.reactivex.j<Object> implements o7.m<Object> {

    /* renamed from: b  reason: collision with root package name */
    public static final io.reactivex.j<Object> f72928b = new w0();

    private w0() {
    }

    @Override // o7.m, java.util.concurrent.Callable
    public Object call() {
        return null;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super Object> dVar) {
        EmptySubscription.complete(dVar);
    }
}
