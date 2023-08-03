package io.reactivex.rxjava3.internal.operators.parallel;

/* compiled from: ParallelFromArray.java */
/* loaded from: classes4.dex */
public final class h<T> extends io.reactivex.rxjava3.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T>[] f80560a;

    public h(org.reactivestreams.c<T>[] sources) {
        this.f80560a = sources;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80560a.length;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super T>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            for (int i4 = 0; i4 < length; i4++) {
                this.f80560a[i4].i(subscribers[i4]);
            }
        }
    }
}
