package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableTake.java */
/* loaded from: classes4.dex */
public final class d4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77034c;

    /* compiled from: FlowableTake.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f77035d = 2288246011222124525L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77036a;

        /* renamed from: b  reason: collision with root package name */
        long f77037b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77038c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super T> actual, long remaining) {
            this.f77036a = actual;
            this.f77037b = remaining;
            lazySet(remaining);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77038c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77037b > 0) {
                this.f77037b = 0L;
                this.f77036a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77037b > 0) {
                this.f77037b = 0L;
                this.f77036a.onError(t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = this.f77037b;
            if (j4 > 0) {
                long j10 = j4 - 1;
                this.f77037b = j10;
                this.f77036a.onNext(t9);
                if (j10 == 0) {
                    this.f77038c.cancel();
                    this.f77036a.onComplete();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77038c, s9)) {
                if (this.f77037b == 0) {
                    s9.cancel();
                    EmptySubscription.complete(this.f77036a);
                    return;
                }
                this.f77038c = s9;
                this.f77036a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            long j4;
            long min;
            if (SubscriptionHelper.validate(n9)) {
                do {
                    j4 = get();
                    if (j4 == 0) {
                        return;
                    }
                    min = Math.min(j4, n9);
                } while (!compareAndSet(j4, j4 - min));
                this.f77038c.request(min);
            }
        }
    }

    public d4(io.reactivex.rxjava3.core.m<T> source, long n9) {
        super(source);
        this.f77034c = n9;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77034c));
    }
}
