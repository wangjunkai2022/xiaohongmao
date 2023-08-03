package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableThrottleFirstTimed.java */
/* loaded from: classes4.dex */
public final class l4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77489c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f77490d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77491e;

    /* compiled from: FlowableThrottleFirstTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, Runnable {

        /* renamed from: i  reason: collision with root package name */
        private static final long f77492i = -9102637559663639004L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77493a;

        /* renamed from: b  reason: collision with root package name */
        final long f77494b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f77495c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f77496d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f77497e;

        /* renamed from: f  reason: collision with root package name */
        final SequentialDisposable f77498f = new SequentialDisposable();

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f77499g;

        /* renamed from: h  reason: collision with root package name */
        boolean f77500h;

        a(org.reactivestreams.d<? super T> actual, long timeout, TimeUnit unit, o0.c worker) {
            this.f77493a = actual;
            this.f77494b = timeout;
            this.f77495c = unit;
            this.f77496d = worker;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77497e.cancel();
            this.f77496d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77500h) {
                return;
            }
            this.f77500h = true;
            this.f77493a.onComplete();
            this.f77496d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77500h) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77500h = true;
            this.f77493a.onError(t9);
            this.f77496d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77500h || this.f77499g) {
                return;
            }
            this.f77499g = true;
            if (get() != 0) {
                this.f77493a.onNext(t9);
                io.reactivex.rxjava3.internal.util.b.e(this, 1L);
                io.reactivex.rxjava3.disposables.f fVar = this.f77498f.get();
                if (fVar != null) {
                    fVar.dispose();
                }
                this.f77498f.replace(this.f77496d.c(this, this.f77494b, this.f77495c));
                return;
            }
            this.f77500h = true;
            cancel();
            this.f77493a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77497e, s9)) {
                this.f77497e = s9;
                this.f77493a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this, n9);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f77499g = false;
        }
    }

    public l4(io.reactivex.rxjava3.core.m<T> source, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f77489c = timeout;
        this.f77490d = unit;
        this.f77491e = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(new io.reactivex.rxjava3.subscribers.e(s9), this.f77489c, this.f77490d, this.f77491e.d()));
    }
}
