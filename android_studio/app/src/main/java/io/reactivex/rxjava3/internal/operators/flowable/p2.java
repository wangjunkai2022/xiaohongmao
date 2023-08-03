package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableOnBackpressureError.java */
/* loaded from: classes4.dex */
public final class p2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableOnBackpressureError.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f77736d = -3176480756392482682L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77737a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f77738b;

        /* renamed from: c  reason: collision with root package name */
        boolean f77739c;

        a(org.reactivestreams.d<? super T> downstream) {
            this.f77737a = downstream;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77738b.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77739c) {
                return;
            }
            this.f77739c = true;
            this.f77737a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77739c) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77739c = true;
            this.f77737a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77739c) {
                return;
            }
            if (get() != 0) {
                this.f77737a.onNext(t9);
                io.reactivex.rxjava3.internal.util.b.e(this, 1L);
                return;
            }
            onError(new MissingBackpressureException("could not emit value due to lack of requests"));
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77738b, s9)) {
                this.f77738b = s9;
                this.f77737a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this, n9);
            }
        }
    }

    public p2(io.reactivex.rxjava3.core.m<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9));
    }
}
