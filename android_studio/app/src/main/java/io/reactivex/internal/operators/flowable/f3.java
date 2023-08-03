package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableRetryPredicate.java */
/* loaded from: classes3.dex */
public final class f3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.r<? super Throwable> f71898c;

    /* renamed from: d  reason: collision with root package name */
    final long f71899d;

    /* compiled from: FlowableRetryPredicate.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f71900g = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71901a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f71902b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f71903c;

        /* renamed from: d  reason: collision with root package name */
        final n7.r<? super Throwable> f71904d;

        /* renamed from: e  reason: collision with root package name */
        long f71905e;

        /* renamed from: f  reason: collision with root package name */
        long f71906f;

        a(org.reactivestreams.d<? super T> dVar, long j4, n7.r<? super Throwable> rVar, SubscriptionArbiter subscriptionArbiter, org.reactivestreams.c<? extends T> cVar) {
            this.f71901a = dVar;
            this.f71902b = subscriptionArbiter;
            this.f71903c = cVar;
            this.f71904d = rVar;
            this.f71905e = j4;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f71902b.isCancelled()) {
                    long j4 = this.f71906f;
                    if (j4 != 0) {
                        this.f71906f = 0L;
                        this.f71902b.produced(j4);
                    }
                    this.f71903c.i(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71901a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            long j4 = this.f71905e;
            if (j4 != Long.MAX_VALUE) {
                this.f71905e = j4 - 1;
            }
            if (j4 == 0) {
                this.f71901a.onError(th);
                return;
            }
            try {
                if (!this.f71904d.test(th)) {
                    this.f71901a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f71901a.onError(new CompositeException(th, th2));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f71906f++;
            this.f71901a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            this.f71902b.setSubscription(eVar);
        }
    }

    public f3(io.reactivex.j<T> jVar, long j4, n7.r<? super Throwable> rVar) {
        super(jVar);
        this.f71898c = rVar;
        this.f71899d = j4;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        dVar.onSubscribe(subscriptionArbiter);
        new a(dVar, this.f71899d, this.f71898c, subscriptionArbiter, this.f71538b).a();
    }
}
