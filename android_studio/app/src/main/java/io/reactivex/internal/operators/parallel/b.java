package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.operators.flowable.w;
import io.reactivex.internal.util.ErrorMode;

/* compiled from: ParallelConcatMap.java */
/* loaded from: classes3.dex */
public final class b<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f75140a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f75141b;

    /* renamed from: c  reason: collision with root package name */
    final int f75142c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f75143d;

    public b(io.reactivex.parallel.a<T> aVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, ErrorMode errorMode) {
        this.f75140a = aVar;
        this.f75141b = (n7.o) io.reactivex.internal.functions.b.g(oVar, "mapper");
        this.f75142c = i4;
        this.f75143d = (ErrorMode) io.reactivex.internal.functions.b.g(errorMode, "errorMode");
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75140a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super R>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<? super T>[] dVarArr2 = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                dVarArr2[i4] = w.M8(dVarArr[i4], this.f75141b, this.f75142c, this.f75143d);
            }
            this.f75140a.Q(dVarArr2);
        }
    }
}
