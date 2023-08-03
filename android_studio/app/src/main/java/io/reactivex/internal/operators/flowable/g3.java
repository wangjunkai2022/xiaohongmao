package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.c3;
import io.reactivex.internal.subscriptions.EmptySubscription;

/* compiled from: FlowableRetryWhen.java */
/* loaded from: classes3.dex */
public final class g3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super io.reactivex.j<Throwable>, ? extends org.reactivestreams.c<?>> f71945c;

    /* compiled from: FlowableRetryWhen.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends c3.c<T, Throwable> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f71946o = -2680129890138081029L;

        a(org.reactivestreams.d<? super T> dVar, io.reactivex.processors.c<Throwable> cVar, org.reactivestreams.e eVar) {
            super(dVar, cVar, eVar);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71672l.cancel();
            this.f71670j.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            e(th);
        }
    }

    public g3(io.reactivex.j<T> jVar, n7.o<? super io.reactivex.j<Throwable>, ? extends org.reactivestreams.c<?>> oVar) {
        super(jVar);
        this.f71945c = oVar;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(dVar);
        io.reactivex.processors.c<T> Q8 = io.reactivex.processors.h.T8(8).Q8();
        try {
            org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f71945c.apply(Q8), "handler returned a null Publisher");
            c3.b bVar = new c3.b(this.f71538b);
            a aVar = new a(eVar, Q8, bVar);
            bVar.f71668d = aVar;
            dVar.onSubscribe(aVar);
            cVar.i(bVar);
            bVar.onNext(0);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }
}
