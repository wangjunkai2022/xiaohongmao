package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: FlowableTimeInterval.java */
/* loaded from: classes3.dex */
public final class k4<T> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.schedulers.d<T>> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f72167c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f72168d;

    /* compiled from: FlowableTimeInterval.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.schedulers.d<T>> f72169a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f72170b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.h0 f72171c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f72172d;

        /* renamed from: e  reason: collision with root package name */
        long f72173e;

        a(org.reactivestreams.d<? super io.reactivex.schedulers.d<T>> dVar, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f72169a = dVar;
            this.f72171c = h0Var;
            this.f72170b = timeUnit;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72172d.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72169a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72169a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long e4 = this.f72171c.e(this.f72170b);
            long j4 = this.f72173e;
            this.f72173e = e4;
            this.f72169a.onNext(new io.reactivex.schedulers.d(t9, e4 - j4, this.f72170b));
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72172d, eVar)) {
                this.f72173e = this.f72171c.e(this.f72170b);
                this.f72172d = eVar;
                this.f72169a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72172d.request(j4);
        }
    }

    public k4(io.reactivex.j<T> jVar, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(jVar);
        this.f72167c = h0Var;
        this.f72168d = timeUnit;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super io.reactivex.schedulers.d<T>> dVar) {
        this.f71538b.j6(new a(dVar, this.f72168d, this.f72167c));
    }
}
