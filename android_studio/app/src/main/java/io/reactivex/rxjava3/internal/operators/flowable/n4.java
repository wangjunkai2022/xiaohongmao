package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: FlowableTimeInterval.java */
/* loaded from: classes4.dex */
public final class n4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, io.reactivex.rxjava3.schedulers.d<T>> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77638c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f77639d;

    /* compiled from: FlowableTimeInterval.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.rxjava3.schedulers.d<T>> f77640a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f77641b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f77642c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f77643d;

        /* renamed from: e  reason: collision with root package name */
        long f77644e;

        a(org.reactivestreams.d<? super io.reactivex.rxjava3.schedulers.d<T>> actual, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f77640a = actual;
            this.f77642c = scheduler;
            this.f77641b = unit;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77643d.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77640a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77640a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long e4 = this.f77642c.e(this.f77641b);
            long j4 = this.f77644e;
            this.f77644e = e4;
            this.f77640a.onNext(new io.reactivex.rxjava3.schedulers.d(t9, e4 - j4, this.f77641b));
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77643d, s9)) {
                this.f77644e = this.f77642c.e(this.f77641b);
                this.f77643d = s9;
                this.f77640a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77643d.request(n9);
        }
    }

    public n4(io.reactivex.rxjava3.core.m<T> source, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f77638c = scheduler;
        this.f77639d = unit;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super io.reactivex.rxjava3.schedulers.d<T>> s9) {
        this.f76811b.G6(new a(s9, this.f77639d, this.f77638c));
    }
}
