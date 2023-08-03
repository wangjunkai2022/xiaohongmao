package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableIntervalRange.java */
/* loaded from: classes4.dex */
public final class x1 extends io.reactivex.rxjava3.core.m<Long> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f78216b;

    /* renamed from: c  reason: collision with root package name */
    final long f78217c;

    /* renamed from: d  reason: collision with root package name */
    final long f78218d;

    /* renamed from: e  reason: collision with root package name */
    final long f78219e;

    /* renamed from: f  reason: collision with root package name */
    final long f78220f;

    /* renamed from: g  reason: collision with root package name */
    final TimeUnit f78221g;

    /* compiled from: FlowableIntervalRange.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicLong implements org.reactivestreams.e, Runnable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78222e = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super Long> f78223a;

        /* renamed from: b  reason: collision with root package name */
        final long f78224b;

        /* renamed from: c  reason: collision with root package name */
        long f78225c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f78226d = new AtomicReference<>();

        a(org.reactivestreams.d<? super Long> actual, long start, long end) {
            this.f78223a = actual;
            this.f78225c = start;
            this.f78224b = end;
        }

        public void a(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f78226d, d4);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            DisposableHelper.dispose(this.f78226d);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this, n9);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            io.reactivex.rxjava3.disposables.f fVar = this.f78226d.get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                long j4 = get();
                if (j4 != 0) {
                    long j10 = this.f78225c;
                    this.f78223a.onNext(Long.valueOf(j10));
                    if (j10 == this.f78224b) {
                        if (this.f78226d.get() != disposableHelper) {
                            this.f78223a.onComplete();
                        }
                        DisposableHelper.dispose(this.f78226d);
                        return;
                    }
                    this.f78225c = j10 + 1;
                    if (j4 != Long.MAX_VALUE) {
                        decrementAndGet();
                        return;
                    }
                    return;
                }
                org.reactivestreams.d<? super Long> dVar = this.f78223a;
                dVar.onError(new MissingBackpressureException("Can't deliver value " + this.f78225c + " due to lack of requests"));
                DisposableHelper.dispose(this.f78226d);
            }
        }
    }

    public x1(long start, long end, long initialDelay, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f78219e = initialDelay;
        this.f78220f = period;
        this.f78221g = unit;
        this.f78216b = scheduler;
        this.f78217c = start;
        this.f78218d = end;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super Long> s9) {
        a aVar = new a(s9, this.f78217c, this.f78218d);
        s9.onSubscribe(aVar);
        io.reactivex.rxjava3.core.o0 o0Var = this.f78216b;
        if (o0Var instanceof io.reactivex.rxjava3.internal.schedulers.o) {
            o0.c d4 = o0Var.d();
            aVar.a(d4);
            d4.d(aVar, this.f78219e, this.f78220f, this.f78221g);
            return;
        }
        aVar.a(o0Var.h(aVar, this.f78219e, this.f78220f, this.f78221g));
    }
}
