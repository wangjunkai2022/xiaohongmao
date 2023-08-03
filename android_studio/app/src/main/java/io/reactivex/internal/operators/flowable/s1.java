package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableIntervalRange.java */
/* loaded from: classes3.dex */
public final class s1 extends io.reactivex.j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f72616b;

    /* renamed from: c  reason: collision with root package name */
    final long f72617c;

    /* renamed from: d  reason: collision with root package name */
    final long f72618d;

    /* renamed from: e  reason: collision with root package name */
    final long f72619e;

    /* renamed from: f  reason: collision with root package name */
    final long f72620f;

    /* renamed from: g  reason: collision with root package name */
    final TimeUnit f72621g;

    /* compiled from: FlowableIntervalRange.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicLong implements org.reactivestreams.e, Runnable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f72622e = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super Long> f72623a;

        /* renamed from: b  reason: collision with root package name */
        final long f72624b;

        /* renamed from: c  reason: collision with root package name */
        long f72625c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f72626d = new AtomicReference<>();

        a(org.reactivestreams.d<? super Long> dVar, long j4, long j10) {
            this.f72623a = dVar;
            this.f72625c = j4;
            this.f72624b = j10;
        }

        public void a(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f72626d, cVar);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            DisposableHelper.dispose(this.f72626d);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            io.reactivex.disposables.c cVar = this.f72626d.get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar != disposableHelper) {
                long j4 = get();
                if (j4 != 0) {
                    long j10 = this.f72625c;
                    this.f72623a.onNext(Long.valueOf(j10));
                    if (j10 == this.f72624b) {
                        if (this.f72626d.get() != disposableHelper) {
                            this.f72623a.onComplete();
                        }
                        DisposableHelper.dispose(this.f72626d);
                        return;
                    }
                    this.f72625c = j10 + 1;
                    if (j4 != Long.MAX_VALUE) {
                        decrementAndGet();
                        return;
                    }
                    return;
                }
                org.reactivestreams.d<? super Long> dVar = this.f72623a;
                dVar.onError(new MissingBackpressureException("Can't deliver value " + this.f72625c + " due to lack of requests"));
                DisposableHelper.dispose(this.f72626d);
            }
        }
    }

    public s1(long j4, long j10, long j11, long j12, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f72619e = j11;
        this.f72620f = j12;
        this.f72621g = timeUnit;
        this.f72616b = h0Var;
        this.f72617c = j4;
        this.f72618d = j10;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super Long> dVar) {
        a aVar = new a(dVar, this.f72617c, this.f72618d);
        dVar.onSubscribe(aVar);
        io.reactivex.h0 h0Var = this.f72616b;
        if (h0Var instanceof io.reactivex.internal.schedulers.o) {
            h0.c d4 = h0Var.d();
            aVar.a(d4);
            d4.d(aVar, this.f72619e, this.f72620f, this.f72621g);
            return;
        }
        aVar.a(h0Var.h(aVar, this.f72619e, this.f72620f, this.f72621g));
    }
}
