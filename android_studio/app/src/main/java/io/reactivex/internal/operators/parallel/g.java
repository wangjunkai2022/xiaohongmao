package io.reactivex.internal.operators.parallel;

/* compiled from: ParallelFromArray.java */
/* loaded from: classes3.dex */
public final class g<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T>[] f75180a;

    public g(org.reactivestreams.c<T>[] cVarArr) {
        this.f75180a = cVarArr;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75180a.length;
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super T>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            for (int i4 = 0; i4 < length; i4++) {
                this.f75180a[i4].i(dVarArr[i4]);
            }
        }
    }
}
