package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.operators.flowable.d2;

/* compiled from: FlowableMapPublisher.java */
/* loaded from: classes4.dex */
public final class f2<T, U> extends io.reactivex.rxjava3.core.m<U> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f77143b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends U> f77144c;

    public f2(org.reactivestreams.c<T> source, q7.o<? super T, ? extends U> mapper) {
        this.f77143b = source;
        this.f77144c = mapper;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super U> s9) {
        this.f77143b.i(new d2.b(s9, this.f77144c));
    }
}
