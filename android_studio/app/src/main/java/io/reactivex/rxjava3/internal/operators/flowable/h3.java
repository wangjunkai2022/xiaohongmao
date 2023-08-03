package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableRetryBiPredicate.java */
/* loaded from: classes4.dex */
public final class h3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.d<? super Integer, ? super Throwable> f77295c;

    /* compiled from: FlowableRetryBiPredicate.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77296g = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77297a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f77298b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f77299c;

        /* renamed from: d  reason: collision with root package name */
        final q7.d<? super Integer, ? super Throwable> f77300d;

        /* renamed from: e  reason: collision with root package name */
        int f77301e;

        /* renamed from: f  reason: collision with root package name */
        long f77302f;

        a(org.reactivestreams.d<? super T> actual, q7.d<? super Integer, ? super Throwable> predicate, SubscriptionArbiter sa, org.reactivestreams.c<? extends T> source) {
            this.f77297a = actual;
            this.f77298b = sa;
            this.f77299c = source;
            this.f77300d = predicate;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f77298b.isCancelled()) {
                    long j4 = this.f77302f;
                    if (j4 != 0) {
                        this.f77302f = 0L;
                        this.f77298b.produced(j4);
                    }
                    this.f77299c.i(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77297a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            try {
                q7.d<? super Integer, ? super Throwable> dVar = this.f77300d;
                int i4 = this.f77301e + 1;
                this.f77301e = i4;
                if (!dVar.a(Integer.valueOf(i4), t9)) {
                    this.f77297a.onError(t9);
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77297a.onError(new CompositeException(t9, th));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77302f++;
            this.f77297a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            this.f77298b.setSubscription(s9);
        }
    }

    public h3(io.reactivex.rxjava3.core.m<T> source, q7.d<? super Integer, ? super Throwable> predicate) {
        super(source);
        this.f77295c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        s9.onSubscribe(subscriptionArbiter);
        new a(s9, this.f77295c, subscriptionArbiter, this.f76811b).a();
    }
}
