package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableThrottleLatest.java */
/* loaded from: classes4.dex */
public final class m4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77562c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f77563d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77564e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f77565f;

    /* compiled from: FlowableThrottleLatest.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, Runnable {

        /* renamed from: o  reason: collision with root package name */
        private static final long f77566o = -8296689127439125014L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77567a;

        /* renamed from: b  reason: collision with root package name */
        final long f77568b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f77569c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f77570d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f77571e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<T> f77572f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicLong f77573g = new AtomicLong();

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f77574h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f77575i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f77576j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f77577k;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f77578l;

        /* renamed from: m  reason: collision with root package name */
        long f77579m;

        /* renamed from: n  reason: collision with root package name */
        boolean f77580n;

        a(org.reactivestreams.d<? super T> downstream, long timeout, TimeUnit unit, o0.c worker, boolean emitLast) {
            this.f77567a = downstream;
            this.f77568b = timeout;
            this.f77569c = unit;
            this.f77570d = worker;
            this.f77571e = emitLast;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.f77572f;
            AtomicLong atomicLong = this.f77573g;
            org.reactivestreams.d<? super T> dVar = this.f77567a;
            int i4 = 1;
            while (!this.f77577k) {
                boolean z9 = this.f77575i;
                if (z9 && this.f77576j != null) {
                    atomicReference.lazySet(null);
                    dVar.onError(this.f77576j);
                    this.f77570d.dispose();
                    return;
                }
                boolean z10 = atomicReference.get() == null;
                if (z9) {
                    if (!z10 && this.f77571e) {
                        T andSet = atomicReference.getAndSet(null);
                        long j4 = this.f77579m;
                        if (j4 != atomicLong.get()) {
                            this.f77579m = j4 + 1;
                            dVar.onNext(andSet);
                            dVar.onComplete();
                        } else {
                            dVar.onError(new MissingBackpressureException("Could not emit final value due to lack of requests"));
                        }
                    } else {
                        atomicReference.lazySet(null);
                        dVar.onComplete();
                    }
                    this.f77570d.dispose();
                    return;
                }
                if (z10) {
                    if (this.f77578l) {
                        this.f77580n = false;
                        this.f77578l = false;
                    }
                } else if (!this.f77580n || this.f77578l) {
                    T andSet2 = atomicReference.getAndSet(null);
                    long j10 = this.f77579m;
                    if (j10 != atomicLong.get()) {
                        dVar.onNext(andSet2);
                        this.f77579m = j10 + 1;
                        this.f77578l = false;
                        this.f77580n = true;
                        this.f77570d.c(this, this.f77568b, this.f77569c);
                    } else {
                        this.f77574h.cancel();
                        dVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
                        this.f77570d.dispose();
                        return;
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77577k = true;
            this.f77574h.cancel();
            this.f77570d.dispose();
            if (getAndIncrement() == 0) {
                this.f77572f.lazySet(null);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77575i = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77576j = t9;
            this.f77575i = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77572f.set(t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77574h, s9)) {
                this.f77574h = s9;
                this.f77567a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77573g, n9);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f77578l = true;
            a();
        }
    }

    public m4(io.reactivex.rxjava3.core.m<T> source, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean emitLast) {
        super(source);
        this.f77562c = timeout;
        this.f77563d = unit;
        this.f77564e = scheduler;
        this.f77565f = emitLast;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77562c, this.f77563d, this.f77564e.d(), this.f77565f));
    }
}
