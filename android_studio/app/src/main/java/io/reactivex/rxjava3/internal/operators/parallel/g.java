package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.internal.operators.flowable.g1;

/* compiled from: ParallelFlatMapIterable.java */
/* loaded from: classes4.dex */
public final class g<T, R> extends io.reactivex.rxjava3.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f80557a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends Iterable<? extends R>> f80558b;

    /* renamed from: c  reason: collision with root package name */
    final int f80559c;

    public g(io.reactivex.rxjava3.parallel.a<T> source, q7.o<? super T, ? extends Iterable<? extends R>> mapper, int prefetch) {
        this.f80557a = source;
        this.f80558b = mapper;
        this.f80559c = prefetch;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80557a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super R>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                dVarArr[i4] = g1.g9(subscribers[i4], this.f80558b, this.f80559c);
            }
            this.f80557a.X(dVarArr);
        }
    }
}
