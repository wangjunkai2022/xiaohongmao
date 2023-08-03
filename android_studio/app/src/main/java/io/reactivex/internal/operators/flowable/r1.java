package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableInterval.java */
/* loaded from: classes3.dex */
public final class r1 extends io.reactivex.j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f72576b;

    /* renamed from: c  reason: collision with root package name */
    final long f72577c;

    /* renamed from: d  reason: collision with root package name */
    final long f72578d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f72579e;

    /* compiled from: FlowableInterval.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicLong implements org.reactivestreams.e, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f72580d = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super Long> f72581a;

        /* renamed from: b  reason: collision with root package name */
        long f72582b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f72583c = new AtomicReference<>();

        a(org.reactivestreams.d<? super Long> dVar) {
            this.f72581a = dVar;
        }

        public void a(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f72583c, cVar);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            DisposableHelper.dispose(this.f72583c);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f72583c.get() != DisposableHelper.DISPOSED) {
                if (get() != 0) {
                    org.reactivestreams.d<? super Long> dVar = this.f72581a;
                    long j4 = this.f72582b;
                    this.f72582b = j4 + 1;
                    dVar.onNext(Long.valueOf(j4));
                    io.reactivex.internal.util.b.e(this, 1L);
                    return;
                }
                org.reactivestreams.d<? super Long> dVar2 = this.f72581a;
                dVar2.onError(new MissingBackpressureException("Can't deliver value " + this.f72582b + " due to lack of requests"));
                DisposableHelper.dispose(this.f72583c);
            }
        }
    }

    public r1(long j4, long j10, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f72577c = j4;
        this.f72578d = j10;
        this.f72579e = timeUnit;
        this.f72576b = h0Var;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super Long> dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        io.reactivex.h0 h0Var = this.f72576b;
        if (h0Var instanceof io.reactivex.internal.schedulers.o) {
            h0.c d4 = h0Var.d();
            aVar.a(d4);
            d4.d(aVar, this.f72577c, this.f72578d, this.f72579e);
            return;
        }
        aVar.a(h0Var.h(aVar, this.f72577c, this.f72578d, this.f72579e));
    }
}
