package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.operators.flowable.f3;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import java.util.Objects;

/* compiled from: FlowableRetryWhen.java */
/* loaded from: classes4.dex */
public final class j3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super io.reactivex.rxjava3.core.m<Throwable>, ? extends org.reactivestreams.c<?>> f77408c;

    /* compiled from: FlowableRetryWhen.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends f3.c<T, Throwable> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f77409o = -2680129890138081029L;

        a(org.reactivestreams.d<? super T> actual, io.reactivex.rxjava3.processors.c<Throwable> processor, org.reactivestreams.e receiver) {
            super(actual, processor, receiver);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77155l.cancel();
            this.f77153j.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            e(t9);
        }
    }

    public j3(io.reactivex.rxjava3.core.m<T> source, q7.o<? super io.reactivex.rxjava3.core.m<Throwable>, ? extends org.reactivestreams.c<?>> handler) {
        super(source);
        this.f77408c = handler;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        io.reactivex.rxjava3.subscribers.e eVar = new io.reactivex.rxjava3.subscribers.e(s9);
        io.reactivex.rxjava3.processors.c<T> k92 = io.reactivex.rxjava3.processors.h.n9(8).k9();
        try {
            org.reactivestreams.c<?> apply = this.f77408c.apply(k92);
            Objects.requireNonNull(apply, "handler returned a null Publisher");
            org.reactivestreams.c<?> cVar = apply;
            f3.b bVar = new f3.b(this.f76811b);
            a aVar = new a(eVar, k92, bVar);
            bVar.f77151d = aVar;
            s9.onSubscribe(aVar);
            cVar.i(bVar);
            bVar.onNext(0);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
