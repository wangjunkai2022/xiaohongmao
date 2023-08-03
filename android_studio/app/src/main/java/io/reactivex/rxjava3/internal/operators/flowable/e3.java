package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableRepeatUntil.java */
/* loaded from: classes4.dex */
public final class e3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.e f77105c;

    /* compiled from: FlowableRepeatUntil.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f77106f = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77107a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f77108b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f77109c;

        /* renamed from: d  reason: collision with root package name */
        final q7.e f77110d;

        /* renamed from: e  reason: collision with root package name */
        long f77111e;

        a(org.reactivestreams.d<? super T> actual, q7.e until, SubscriptionArbiter sa, org.reactivestreams.c<? extends T> source) {
            this.f77107a = actual;
            this.f77108b = sa;
            this.f77109c = source;
            this.f77110d = until;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f77108b.isCancelled()) {
                    long j4 = this.f77111e;
                    if (j4 != 0) {
                        this.f77111e = 0L;
                        this.f77108b.produced(j4);
                    }
                    this.f77109c.i(this);
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
                if (this.f77110d.a()) {
                    this.f77107a.onComplete();
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77107a.onError(th);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77107a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77111e++;
            this.f77107a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            this.f77108b.setSubscription(s9);
        }
    }

    public e3(io.reactivex.rxjava3.core.m<T> source, q7.e until) {
        super(source);
        this.f77105c = until;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        s9.onSubscribe(subscriptionArbiter);
        new a(s9, this.f77105c, subscriptionArbiter, this.f76811b).a();
    }
}
