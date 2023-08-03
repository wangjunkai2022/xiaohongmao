package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableRetryBiPredicate.java */
/* loaded from: classes3.dex */
public final class e3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.d<? super Integer, ? super Throwable> f71822c;

    /* compiled from: FlowableRetryBiPredicate.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f71823g = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71824a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f71825b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f71826c;

        /* renamed from: d  reason: collision with root package name */
        final n7.d<? super Integer, ? super Throwable> f71827d;

        /* renamed from: e  reason: collision with root package name */
        int f71828e;

        /* renamed from: f  reason: collision with root package name */
        long f71829f;

        a(org.reactivestreams.d<? super T> dVar, n7.d<? super Integer, ? super Throwable> dVar2, SubscriptionArbiter subscriptionArbiter, org.reactivestreams.c<? extends T> cVar) {
            this.f71824a = dVar;
            this.f71825b = subscriptionArbiter;
            this.f71826c = cVar;
            this.f71827d = dVar2;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f71825b.isCancelled()) {
                    long j4 = this.f71829f;
                    if (j4 != 0) {
                        this.f71829f = 0L;
                        this.f71825b.produced(j4);
                    }
                    this.f71826c.i(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71824a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            try {
                n7.d<? super Integer, ? super Throwable> dVar = this.f71827d;
                int i4 = this.f71828e + 1;
                this.f71828e = i4;
                if (!dVar.a(Integer.valueOf(i4), th)) {
                    this.f71824a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f71824a.onError(new CompositeException(th, th2));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f71829f++;
            this.f71824a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            this.f71825b.setSubscription(eVar);
        }
    }

    public e3(io.reactivex.j<T> jVar, n7.d<? super Integer, ? super Throwable> dVar) {
        super(jVar);
        this.f71822c = dVar;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        dVar.onSubscribe(subscriptionArbiter);
        new a(dVar, this.f71822c, subscriptionArbiter, this.f71538b).a();
    }
}
