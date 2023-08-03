package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableLimit.java */
/* loaded from: classes3.dex */
public final class y1<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f73035c;

    /* compiled from: FlowableLimit.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f73036d = 2288246011222124525L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f73037a;

        /* renamed from: b  reason: collision with root package name */
        long f73038b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f73039c;

        a(org.reactivestreams.d<? super T> dVar, long j4) {
            this.f73037a = dVar;
            this.f73038b = j4;
            lazySet(j4);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f73039c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f73038b > 0) {
                this.f73038b = 0L;
                this.f73037a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f73038b > 0) {
                this.f73038b = 0L;
                this.f73037a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = this.f73038b;
            if (j4 > 0) {
                long j10 = j4 - 1;
                this.f73038b = j10;
                this.f73037a.onNext(t9);
                if (j10 == 0) {
                    this.f73039c.cancel();
                    this.f73037a.onComplete();
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73039c, eVar)) {
                if (this.f73038b == 0) {
                    eVar.cancel();
                    EmptySubscription.complete(this.f73037a);
                    return;
                }
                this.f73039c = eVar;
                this.f73037a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            long j10;
            long j11;
            if (SubscriptionHelper.validate(j4)) {
                do {
                    j10 = get();
                    if (j10 == 0) {
                        return;
                    }
                    j11 = j10 <= j4 ? j10 : j4;
                } while (!compareAndSet(j10, j10 - j11));
                this.f73039c.request(j11);
            }
        }
    }

    public y1(io.reactivex.j<T> jVar, long j4) {
        super(jVar);
        this.f73035c = j4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f73035c));
    }
}
