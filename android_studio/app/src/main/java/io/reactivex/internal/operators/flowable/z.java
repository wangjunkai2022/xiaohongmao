package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.ErrorMode;

/* compiled from: FlowableConcatMapPublisher.java */
/* loaded from: classes3.dex */
public final class z<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f73065b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f73066c;

    /* renamed from: d  reason: collision with root package name */
    final int f73067d;

    /* renamed from: e  reason: collision with root package name */
    final ErrorMode f73068e;

    public z(org.reactivestreams.c<T> cVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, ErrorMode errorMode) {
        this.f73065b = cVar;
        this.f73066c = oVar;
        this.f73067d = i4;
        this.f73068e = errorMode;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        if (j3.b(this.f73065b, dVar, this.f73066c)) {
            return;
        }
        this.f73065b.i(w.M8(dVar, this.f73066c, this.f73067d, this.f73068e));
    }
}
