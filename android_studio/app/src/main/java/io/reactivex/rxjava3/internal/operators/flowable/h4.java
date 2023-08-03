package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.operators.flowable.d4;

/* compiled from: FlowableTakePublisher.java */
/* loaded from: classes4.dex */
public final class h4<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f77303b;

    /* renamed from: c  reason: collision with root package name */
    final long f77304c;

    public h4(org.reactivestreams.c<T> source, long limit) {
        this.f77303b = source;
        this.f77304c = limit;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f77303b.i(new d4.a(s9, this.f77304c));
    }
}
