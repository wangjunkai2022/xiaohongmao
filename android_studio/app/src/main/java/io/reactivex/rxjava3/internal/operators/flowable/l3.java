package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSampleTimed.java */
/* loaded from: classes4.dex */
public final class l3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77474c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f77475d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77476e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f77477f;

    /* compiled from: FlowableSampleTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends c<T> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f77478j = -7139995637533111443L;

        /* renamed from: i  reason: collision with root package name */
        final AtomicInteger f77479i;

        a(org.reactivestreams.d<? super T> actual, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
            super(actual, period, unit, scheduler);
            this.f77479i = new AtomicInteger(1);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.l3.c
        void b() {
            c();
            if (this.f77479i.decrementAndGet() == 0) {
                this.f77482a.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f77479i.incrementAndGet() == 2) {
                c();
                if (this.f77479i.decrementAndGet() == 0) {
                    this.f77482a.onComplete();
                }
            }
        }
    }

    /* compiled from: FlowableSampleTimed.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends c<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f77480i = -7139995637533111443L;

        b(org.reactivestreams.d<? super T> actual, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
            super(actual, period, unit, scheduler);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.l3.c
        void b() {
            this.f77482a.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            c();
        }
    }

    /* compiled from: FlowableSampleTimed.java */
    /* loaded from: classes4.dex */
    static abstract class c<T> extends AtomicReference<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, Runnable {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77481h = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77482a;

        /* renamed from: b  reason: collision with root package name */
        final long f77483b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f77484c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f77485d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f77486e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final SequentialDisposable f77487f = new SequentialDisposable();

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f77488g;

        c(org.reactivestreams.d<? super T> actual, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f77482a = actual;
            this.f77483b = period;
            this.f77484c = unit;
            this.f77485d = scheduler;
        }

        void a() {
            DisposableHelper.dispose(this.f77487f);
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.f77486e.get() != 0) {
                    this.f77482a.onNext(andSet);
                    io.reactivex.rxjava3.internal.util.b.e(this.f77486e, 1L);
                    return;
                }
                cancel();
                this.f77482a.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            a();
            this.f77488g.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            a();
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            a();
            this.f77482a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            lazySet(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77488g, s9)) {
                this.f77488g = s9;
                this.f77482a.onSubscribe(this);
                SequentialDisposable sequentialDisposable = this.f77487f;
                io.reactivex.rxjava3.core.o0 o0Var = this.f77485d;
                long j4 = this.f77483b;
                sequentialDisposable.replace(o0Var.h(this, j4, j4, this.f77484c));
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77486e, n9);
            }
        }
    }

    public l3(io.reactivex.rxjava3.core.m<T> source, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean emitLast) {
        super(source);
        this.f77474c = period;
        this.f77475d = unit;
        this.f77476e = scheduler;
        this.f77477f = emitLast;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        io.reactivex.rxjava3.subscribers.e eVar = new io.reactivex.rxjava3.subscribers.e(s9);
        if (this.f77477f) {
            this.f76811b.G6(new a(eVar, this.f77474c, this.f77475d, this.f77476e));
        } else {
            this.f76811b.G6(new b(eVar, this.f77474c, this.f77475d, this.f77476e));
        }
    }
}
