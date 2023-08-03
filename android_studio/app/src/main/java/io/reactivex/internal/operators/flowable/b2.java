package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.z1;

/* compiled from: FlowableMapPublisher.java */
/* loaded from: classes3.dex */
public final class b2<T, U> extends io.reactivex.j<U> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f71618b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends U> f71619c;

    public b2(org.reactivestreams.c<T> cVar, n7.o<? super T, ? extends U> oVar) {
        this.f71618b = cVar;
        this.f71619c = oVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super U> dVar) {
        this.f71618b.i(new z1.b(dVar, this.f71619c));
    }
}
