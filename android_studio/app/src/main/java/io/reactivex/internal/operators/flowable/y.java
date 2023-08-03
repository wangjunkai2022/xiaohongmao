package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.x;
import io.reactivex.internal.util.ErrorMode;

/* compiled from: FlowableConcatMapEagerPublisher.java */
/* loaded from: classes3.dex */
public final class y<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f73027b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f73028c;

    /* renamed from: d  reason: collision with root package name */
    final int f73029d;

    /* renamed from: e  reason: collision with root package name */
    final int f73030e;

    /* renamed from: f  reason: collision with root package name */
    final ErrorMode f73031f;

    public y(org.reactivestreams.c<T> cVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, int i10, ErrorMode errorMode) {
        this.f73027b = cVar;
        this.f73028c = oVar;
        this.f73029d = i4;
        this.f73030e = i10;
        this.f73031f = errorMode;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f73027b.i(new x.a(dVar, this.f73028c, this.f73029d, this.f73030e, this.f73031f));
    }
}
