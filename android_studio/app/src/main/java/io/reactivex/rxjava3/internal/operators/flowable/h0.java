package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import java.util.Objects;

/* compiled from: FlowableDefer.java */
/* loaded from: classes4.dex */
public final class h0<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.s<? extends org.reactivestreams.c<? extends T>> f77282b;

    public h0(q7.s<? extends org.reactivestreams.c<? extends T>> supplier) {
        this.f77282b = supplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        try {
            org.reactivestreams.c<? extends T> cVar = this.f77282b.get();
            Objects.requireNonNull(cVar, "The publisher supplied is null");
            cVar.i(s9);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
