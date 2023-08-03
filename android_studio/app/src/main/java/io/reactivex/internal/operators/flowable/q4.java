package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: FlowableUnsubscribeOn.java */
/* loaded from: classes3.dex */
public final class q4<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f72538c;

    /* compiled from: FlowableUnsubscribeOn.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicBoolean implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f72539d = 1015244841293359600L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72540a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f72541b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72542c;

        /* compiled from: FlowableUnsubscribeOn.java */
        /* renamed from: io.reactivex.internal.operators.flowable.q4$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class RunnableC0560a implements Runnable {
            RunnableC0560a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f72542c.cancel();
            }
        }

        a(org.reactivestreams.d<? super T> dVar, io.reactivex.h0 h0Var) {
            this.f72540a = dVar;
            this.f72541b = h0Var;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (compareAndSet(false, true)) {
                this.f72541b.f(new RunnableC0560a());
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (get()) {
                return;
            }
            this.f72540a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (get()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f72540a.onError(th);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (get()) {
                return;
            }
            this.f72540a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72542c, eVar)) {
                this.f72542c = eVar;
                this.f72540a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72542c.request(j4);
        }
    }

    public q4(io.reactivex.j<T> jVar, io.reactivex.h0 h0Var) {
        super(jVar);
        this.f72538c = h0Var;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72538c));
    }
}
