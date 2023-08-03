package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableInterval.java */
/* loaded from: classes4.dex */
public final class w1 extends io.reactivex.rxjava3.core.m<Long> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f78169b;

    /* renamed from: c  reason: collision with root package name */
    final long f78170c;

    /* renamed from: d  reason: collision with root package name */
    final long f78171d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f78172e;

    /* compiled from: FlowableInterval.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicLong implements org.reactivestreams.e, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f78173d = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super Long> f78174a;

        /* renamed from: b  reason: collision with root package name */
        long f78175b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f78176c = new AtomicReference<>();

        a(org.reactivestreams.d<? super Long> downstream) {
            this.f78174a = downstream;
        }

        public void a(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f78176c, d4);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            DisposableHelper.dispose(this.f78176c);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this, n9);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f78176c.get() != DisposableHelper.DISPOSED) {
                if (get() != 0) {
                    org.reactivestreams.d<? super Long> dVar = this.f78174a;
                    long j4 = this.f78175b;
                    this.f78175b = j4 + 1;
                    dVar.onNext(Long.valueOf(j4));
                    io.reactivex.rxjava3.internal.util.b.e(this, 1L);
                    return;
                }
                org.reactivestreams.d<? super Long> dVar2 = this.f78174a;
                dVar2.onError(new MissingBackpressureException("Can't deliver value " + this.f78175b + " due to lack of requests"));
                DisposableHelper.dispose(this.f78176c);
            }
        }
    }

    public w1(long initialDelay, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f78170c = initialDelay;
        this.f78171d = period;
        this.f78172e = unit;
        this.f78169b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super Long> s9) {
        a aVar = new a(s9);
        s9.onSubscribe(aVar);
        io.reactivex.rxjava3.core.o0 o0Var = this.f78169b;
        if (o0Var instanceof io.reactivex.rxjava3.internal.schedulers.o) {
            o0.c d4 = o0Var.d();
            aVar.a(d4);
            d4.d(aVar, this.f78170c, this.f78171d, this.f78172e);
            return;
        }
        aVar.a(o0Var.h(aVar, this.f78170c, this.f78171d, this.f78172e));
    }
}
