package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableRetryPredicate.java */
/* loaded from: classes4.dex */
public final class i3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.r<? super Throwable> f77354c;

    /* renamed from: d  reason: collision with root package name */
    final long f77355d;

    /* compiled from: FlowableRetryPredicate.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77356g = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77357a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f77358b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f77359c;

        /* renamed from: d  reason: collision with root package name */
        final q7.r<? super Throwable> f77360d;

        /* renamed from: e  reason: collision with root package name */
        long f77361e;

        /* renamed from: f  reason: collision with root package name */
        long f77362f;

        a(org.reactivestreams.d<? super T> actual, long count, q7.r<? super Throwable> predicate, SubscriptionArbiter sa, org.reactivestreams.c<? extends T> source) {
            this.f77357a = actual;
            this.f77358b = sa;
            this.f77359c = source;
            this.f77360d = predicate;
            this.f77361e = count;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f77358b.isCancelled()) {
                    long j4 = this.f77362f;
                    if (j4 != 0) {
                        this.f77362f = 0L;
                        this.f77358b.produced(j4);
                    }
                    this.f77359c.i(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77357a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            long j4 = this.f77361e;
            if (j4 != Long.MAX_VALUE) {
                this.f77361e = j4 - 1;
            }
            if (j4 == 0) {
                this.f77357a.onError(t9);
                return;
            }
            try {
                if (!this.f77360d.test(t9)) {
                    this.f77357a.onError(t9);
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77357a.onError(new CompositeException(t9, th));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77362f++;
            this.f77357a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            this.f77358b.setSubscription(s9);
        }
    }

    public i3(io.reactivex.rxjava3.core.m<T> source, long count, q7.r<? super Throwable> predicate) {
        super(source);
        this.f77354c = predicate;
        this.f77355d = count;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        s9.onSubscribe(subscriptionArbiter);
        new a(s9, this.f77355d, this.f77354c, subscriptionArbiter, this.f76811b).a();
    }
}
