package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.operators.flowable.c1;

/* compiled from: FlowableFlatMapMaybePublisher.java */
/* loaded from: classes4.dex */
public final class d1<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f77020b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f77021c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f77022d;

    /* renamed from: e  reason: collision with root package name */
    final int f77023e;

    public d1(org.reactivestreams.c<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> mapper, boolean delayError, int maxConcurrency) {
        this.f77020b = source;
        this.f77021c = mapper;
        this.f77022d = delayError;
        this.f77023e = maxConcurrency;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f77020b.i(new c1.a(s9, this.f77021c, this.f77022d, this.f77023e));
    }
}
