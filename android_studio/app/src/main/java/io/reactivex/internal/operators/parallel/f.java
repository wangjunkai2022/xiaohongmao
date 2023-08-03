package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.operators.flowable.z0;

/* compiled from: ParallelFlatMap.java */
/* loaded from: classes3.dex */
public final class f<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f75175a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f75176b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f75177c;

    /* renamed from: d  reason: collision with root package name */
    final int f75178d;

    /* renamed from: e  reason: collision with root package name */
    final int f75179e;

    public f(io.reactivex.parallel.a<T> aVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, boolean z9, int i4, int i10) {
        this.f75175a = aVar;
        this.f75176b = oVar;
        this.f75177c = z9;
        this.f75178d = i4;
        this.f75179e = i10;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75175a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super R>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<? super T>[] dVarArr2 = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                dVarArr2[i4] = z0.M8(dVarArr[i4], this.f75176b, this.f75177c, this.f75178d, this.f75179e);
            }
            this.f75175a.Q(dVarArr2);
        }
    }
}
