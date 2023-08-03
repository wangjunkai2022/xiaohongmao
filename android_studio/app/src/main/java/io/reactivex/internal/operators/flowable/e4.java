package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.a4;

/* compiled from: FlowableTakePublisher.java */
/* loaded from: classes3.dex */
public final class e4<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f71830b;

    /* renamed from: c  reason: collision with root package name */
    final long f71831c;

    public e4(org.reactivestreams.c<T> cVar, long j4) {
        this.f71830b = cVar;
        this.f71831c = j4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71830b.i(new a4.a(dVar, this.f71831c));
    }
}
