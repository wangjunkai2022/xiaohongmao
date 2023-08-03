package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import java.util.concurrent.Callable;

/* compiled from: FlowableDefer.java */
/* loaded from: classes3.dex */
public final class i0<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends org.reactivestreams.c<? extends T>> f72027b;

    public i0(Callable<? extends org.reactivestreams.c<? extends T>> callable) {
        this.f72027b = callable;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        try {
            ((org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72027b.call(), "The publisher supplied is null")).i(dVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }
}
