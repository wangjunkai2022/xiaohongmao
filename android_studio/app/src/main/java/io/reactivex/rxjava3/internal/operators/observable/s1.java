package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableInterval.java */
/* loaded from: classes4.dex */
public final class s1 extends io.reactivex.rxjava3.core.g0<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80081a;

    /* renamed from: b  reason: collision with root package name */
    final long f80082b;

    /* renamed from: c  reason: collision with root package name */
    final long f80083c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f80084d;

    /* compiled from: ObservableInterval.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80085c = 346773832286157679L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super Long> f80086a;

        /* renamed from: b  reason: collision with root package name */
        long f80087b;

        a(io.reactivex.rxjava3.core.n0<? super Long> downstream) {
            this.f80086a = downstream;
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
            if (get() != DisposableHelper.DISPOSED) {
                io.reactivex.rxjava3.core.n0<? super Long> n0Var = this.f80086a;
                long j4 = this.f80087b;
                this.f80087b = 1 + j4;
                n0Var.onNext(Long.valueOf(j4));
            }
        }
    }

    public s1(long initialDelay, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f80082b = initialDelay;
        this.f80083c = period;
        this.f80084d = unit;
        this.f80081a = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super Long> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        io.reactivex.rxjava3.core.o0 o0Var = this.f80081a;
        if (o0Var instanceof io.reactivex.rxjava3.internal.schedulers.o) {
            o0.c d4 = o0Var.d();
            aVar.a(d4);
            d4.d(aVar, this.f80082b, this.f80083c, this.f80084d);
            return;
        }
        aVar.a(o0Var.h(aVar, this.f80082b, this.f80083c, this.f80084d));
    }
}
