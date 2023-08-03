package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableRepeat.java */
/* loaded from: classes4.dex */
public final class d3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77027c;

    /* compiled from: FlowableRepeat.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f77028f = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77029a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f77030b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f77031c;

        /* renamed from: d  reason: collision with root package name */
        long f77032d;

        /* renamed from: e  reason: collision with root package name */
        long f77033e;

        a(org.reactivestreams.d<? super T> actual, long count, SubscriptionArbiter sa, org.reactivestreams.c<? extends T> source) {
            this.f77029a = actual;
            this.f77030b = sa;
            this.f77031c = source;
            this.f77032d = count;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f77030b.isCancelled()) {
                    long j4 = this.f77033e;
                    if (j4 != 0) {
                        this.f77033e = 0L;
                        this.f77030b.produced(j4);
                    }
                    this.f77031c.i(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            long j4 = this.f77032d;
            if (j4 != Long.MAX_VALUE) {
                this.f77032d = j4 - 1;
            }
            if (j4 != 0) {
                a();
            } else {
                this.f77029a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77029a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77033e++;
            this.f77029a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            this.f77030b.setSubscription(s9);
        }
    }

    public d3(io.reactivex.rxjava3.core.m<T> source, long count) {
        super(source);
        this.f77027c = count;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        s9.onSubscribe(subscriptionArbiter);
        long j4 = this.f77027c;
        new a(s9, j4 != Long.MAX_VALUE ? j4 - 1 : Long.MAX_VALUE, subscriptionArbiter, this.f76811b).a();
    }
}
