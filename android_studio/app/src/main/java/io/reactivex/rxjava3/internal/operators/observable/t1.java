package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableIntervalRange.java */
/* loaded from: classes4.dex */
public final class t1 extends io.reactivex.rxjava3.core.g0<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80118a;

    /* renamed from: b  reason: collision with root package name */
    final long f80119b;

    /* renamed from: c  reason: collision with root package name */
    final long f80120c;

    /* renamed from: d  reason: collision with root package name */
    final long f80121d;

    /* renamed from: e  reason: collision with root package name */
    final long f80122e;

    /* renamed from: f  reason: collision with root package name */
    final TimeUnit f80123f;

    /* compiled from: ObservableIntervalRange.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f80124d = 1891866368734007884L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super Long> f80125a;

        /* renamed from: b  reason: collision with root package name */
        final long f80126b;

        /* renamed from: c  reason: collision with root package name */
        long f80127c;

        a(io.reactivex.rxjava3.core.n0<? super Long> actual, long start, long end) {
            this.f80125a = actual;
            this.f80127c = start;
            this.f80126b = end;
        }

        public void a(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (isDisposed()) {
                return;
            }
            long j4 = this.f80127c;
            this.f80125a.onNext(Long.valueOf(j4));
            if (j4 == this.f80126b) {
                if (!isDisposed()) {
                    this.f80125a.onComplete();
                }
                DisposableHelper.dispose(this);
                return;
            }
            this.f80127c = j4 + 1;
        }
    }

    public t1(long start, long end, long initialDelay, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f80121d = initialDelay;
        this.f80122e = period;
        this.f80123f = unit;
        this.f80118a = scheduler;
        this.f80119b = start;
        this.f80120c = end;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super Long> observer) {
        a aVar = new a(observer, this.f80119b, this.f80120c);
        observer.onSubscribe(aVar);
        io.reactivex.rxjava3.core.o0 o0Var = this.f80118a;
        if (o0Var instanceof io.reactivex.rxjava3.internal.schedulers.o) {
            o0.c d4 = o0Var.d();
            aVar.a(d4);
            d4.d(aVar, this.f80121d, this.f80122e, this.f80123f);
            return;
        }
        aVar.a(o0Var.h(aVar, this.f80121d, this.f80122e, this.f80123f));
    }
}
