package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.internal.operators.flowable.z0;

/* compiled from: ParallelFlatMap.java */
/* loaded from: classes4.dex */
public final class f<T, R> extends io.reactivex.rxjava3.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f80552a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f80553b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f80554c;

    /* renamed from: d  reason: collision with root package name */
    final int f80555d;

    /* renamed from: e  reason: collision with root package name */
    final int f80556e;

    public f(io.reactivex.rxjava3.parallel.a<T> source, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean delayError, int maxConcurrency, int prefetch) {
        this.f80552a = source;
        this.f80553b = mapper;
        this.f80554c = delayError;
        this.f80555d = maxConcurrency;
        this.f80556e = prefetch;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80552a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super R>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                dVarArr[i4] = z0.g9(subscribers[i4], this.f80553b, this.f80554c, this.f80555d, this.f80556e);
            }
            this.f80552a.X(dVarArr);
        }
    }
}
