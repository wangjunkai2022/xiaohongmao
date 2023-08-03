package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableRepeat.java */
/* loaded from: classes3.dex */
public final class a3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f71566c;

    /* compiled from: FlowableRepeat.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f71567f = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71568a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f71569b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f71570c;

        /* renamed from: d  reason: collision with root package name */
        long f71571d;

        /* renamed from: e  reason: collision with root package name */
        long f71572e;

        a(org.reactivestreams.d<? super T> dVar, long j4, SubscriptionArbiter subscriptionArbiter, org.reactivestreams.c<? extends T> cVar) {
            this.f71568a = dVar;
            this.f71569b = subscriptionArbiter;
            this.f71570c = cVar;
            this.f71571d = j4;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f71569b.isCancelled()) {
                    long j4 = this.f71572e;
                    if (j4 != 0) {
                        this.f71572e = 0L;
                        this.f71569b.produced(j4);
                    }
                    this.f71570c.i(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            long j4 = this.f71571d;
            if (j4 != Long.MAX_VALUE) {
                this.f71571d = j4 - 1;
            }
            if (j4 != 0) {
                a();
            } else {
                this.f71568a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71568a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f71572e++;
            this.f71568a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            this.f71569b.setSubscription(eVar);
        }
    }

    public a3(io.reactivex.j<T> jVar, long j4) {
        super(jVar);
        this.f71566c = j4;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        dVar.onSubscribe(subscriptionArbiter);
        long j4 = this.f71566c;
        new a(dVar, j4 != Long.MAX_VALUE ? j4 - 1 : Long.MAX_VALUE, subscriptionArbiter, this.f71538b).a();
    }
}
