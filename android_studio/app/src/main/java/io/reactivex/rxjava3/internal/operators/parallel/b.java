package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.internal.operators.flowable.v;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;

/* compiled from: ParallelConcatMap.java */
/* loaded from: classes4.dex */
public final class b<T, R> extends io.reactivex.rxjava3.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f80517a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f80518b;

    /* renamed from: c  reason: collision with root package name */
    final int f80519c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f80520d;

    public b(io.reactivex.rxjava3.parallel.a<T> source, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch, ErrorMode errorMode) {
        this.f80517a = source;
        Objects.requireNonNull(mapper, "mapper");
        this.f80518b = mapper;
        this.f80519c = prefetch;
        Objects.requireNonNull(errorMode, "errorMode");
        this.f80520d = errorMode;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80517a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super R>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                dVarArr[i4] = v.g9(subscribers[i4], this.f80518b, this.f80519c, this.f80520d);
            }
            this.f80517a.X(dVarArr);
        }
    }
}
