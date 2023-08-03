package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.operators.flowable.e1;

/* compiled from: FlowableFlatMapSinglePublisher.java */
/* loaded from: classes4.dex */
public final class f1<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f77139b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f77140c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f77141d;

    /* renamed from: e  reason: collision with root package name */
    final int f77142e;

    public f1(org.reactivestreams.c<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> mapper, boolean delayError, int maxConcurrency) {
        this.f77139b = source;
        this.f77140c = mapper;
        this.f77141d = delayError;
        this.f77142e = maxConcurrency;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f77139b.i(new e1.a(s9, this.f77140c, this.f77141d, this.f77142e));
    }
}
