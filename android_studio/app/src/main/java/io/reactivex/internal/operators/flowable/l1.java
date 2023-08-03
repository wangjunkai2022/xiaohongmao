package io.reactivex.internal.operators.flowable;

/* compiled from: FlowableFromPublisher.java */
/* loaded from: classes3.dex */
public final class l1<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f72179b;

    public l1(org.reactivestreams.c<? extends T> cVar) {
        this.f72179b = cVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f72179b.i(dVar);
    }
}
