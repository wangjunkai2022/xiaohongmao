package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.operators.flowable.t0;

/* compiled from: FlowableElementAtMaybePublisher.java */
/* loaded from: classes4.dex */
public final class u0<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f78004a;

    /* renamed from: b  reason: collision with root package name */
    final long f78005b;

    public u0(org.reactivestreams.c<T> source, long index) {
        this.f78004a = source;
        this.f78005b = index;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78004a.i(new t0.a(observer, this.f78005b));
    }
}
