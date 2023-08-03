package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableRepeatUntil.java */
/* loaded from: classes3.dex */
public final class b3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.e f71620c;

    /* compiled from: FlowableRepeatUntil.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f71621f = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71622a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f71623b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f71624c;

        /* renamed from: d  reason: collision with root package name */
        final n7.e f71625d;

        /* renamed from: e  reason: collision with root package name */
        long f71626e;

        a(org.reactivestreams.d<? super T> dVar, n7.e eVar, SubscriptionArbiter subscriptionArbiter, org.reactivestreams.c<? extends T> cVar) {
            this.f71622a = dVar;
            this.f71623b = subscriptionArbiter;
            this.f71624c = cVar;
            this.f71625d = eVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f71623b.isCancelled()) {
                    long j4 = this.f71626e;
                    if (j4 != 0) {
                        this.f71626e = 0L;
                        this.f71623b.produced(j4);
                    }
                    this.f71624c.i(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            try {
                if (this.f71625d.a()) {
                    this.f71622a.onComplete();
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71622a.onError(th);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71622a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f71626e++;
            this.f71622a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            this.f71623b.setSubscription(eVar);
        }
    }

    public b3(io.reactivex.j<T> jVar, n7.e eVar) {
        super(jVar);
        this.f71620c = eVar;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        dVar.onSubscribe(subscriptionArbiter);
        new a(dVar, this.f71620c, subscriptionArbiter, this.f71538b).a();
    }
}
