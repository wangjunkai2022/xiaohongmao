package io.reactivex.rxjava3.internal.operators.flowable;

/* compiled from: FlowableFromPublisher.java */
/* loaded from: classes4.dex */
public final class o1<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f77654b;

    public o1(org.reactivestreams.c<? extends T> publisher) {
        this.f77654b = publisher;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f77654b.i(s9);
    }
}
