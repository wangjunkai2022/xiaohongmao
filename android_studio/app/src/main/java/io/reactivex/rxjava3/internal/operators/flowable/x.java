package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.operators.flowable.w;
import io.reactivex.rxjava3.internal.util.ErrorMode;

/* compiled from: FlowableConcatMapEagerPublisher.java */
/* loaded from: classes4.dex */
public final class x<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f78210b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f78211c;

    /* renamed from: d  reason: collision with root package name */
    final int f78212d;

    /* renamed from: e  reason: collision with root package name */
    final int f78213e;

    /* renamed from: f  reason: collision with root package name */
    final ErrorMode f78214f;

    public x(org.reactivestreams.c<T> source, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int maxConcurrency, int prefetch, ErrorMode errorMode) {
        this.f78210b = source;
        this.f78211c = mapper;
        this.f78212d = maxConcurrency;
        this.f78213e = prefetch;
        this.f78214f = errorMode;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78210b.i(new w.a(s9, this.f78211c, this.f78212d, this.f78213e, this.f78214f));
    }
}
