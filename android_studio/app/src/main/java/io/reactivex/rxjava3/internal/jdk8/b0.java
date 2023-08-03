package io.reactivex.rxjava3.internal.jdk8;

import java.util.stream.Stream;

/* compiled from: ParallelFlatMapStream.java */
/* loaded from: classes4.dex */
public final class b0<T, R> extends io.reactivex.rxjava3.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f76255a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends Stream<? extends R>> f76256b;

    /* renamed from: c  reason: collision with root package name */
    final int f76257c;

    public b0(io.reactivex.rxjava3.parallel.a<T> source, q7.o<? super T, ? extends Stream<? extends R>> mapper, int prefetch) {
        this.f76255a = source;
        this.f76256b = mapper;
        this.f76257c = prefetch;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f76255a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super R>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                dVarArr[i4] = f.g9(subscribers[i4], this.f76256b, this.f76257c);
            }
            this.f76255a.X(dVarArr);
        }
    }
}
