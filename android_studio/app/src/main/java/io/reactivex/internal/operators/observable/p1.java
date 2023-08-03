package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableIntervalRange.java */
/* loaded from: classes3.dex */
public final class p1 extends io.reactivex.z<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.h0 f74568a;

    /* renamed from: b  reason: collision with root package name */
    final long f74569b;

    /* renamed from: c  reason: collision with root package name */
    final long f74570c;

    /* renamed from: d  reason: collision with root package name */
    final long f74571d;

    /* renamed from: e  reason: collision with root package name */
    final long f74572e;

    /* renamed from: f  reason: collision with root package name */
    final TimeUnit f74573f;

    /* compiled from: ObservableIntervalRange.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.disposables.c, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f74574d = 1891866368734007884L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Long> f74575a;

        /* renamed from: b  reason: collision with root package name */
        final long f74576b;

        /* renamed from: c  reason: collision with root package name */
        long f74577c;

        a(io.reactivex.g0<? super Long> g0Var, long j4, long j10) {
            this.f74575a = g0Var;
            this.f74577c = j4;
            this.f74576b = j10;
        }

        public void a(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (isDisposed()) {
                return;
            }
            long j4 = this.f74577c;
            this.f74575a.onNext(Long.valueOf(j4));
            if (j4 == this.f74576b) {
                DisposableHelper.dispose(this);
                this.f74575a.onComplete();
                return;
            }
            this.f74577c = j4 + 1;
        }
    }

    public p1(long j4, long j10, long j11, long j12, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f74571d = j11;
        this.f74572e = j12;
        this.f74573f = timeUnit;
        this.f74568a = h0Var;
        this.f74569b = j4;
        this.f74570c = j10;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super Long> g0Var) {
        a aVar = new a(g0Var, this.f74569b, this.f74570c);
        g0Var.onSubscribe(aVar);
        io.reactivex.h0 h0Var = this.f74568a;
        if (h0Var instanceof io.reactivex.internal.schedulers.o) {
            h0.c d4 = h0Var.d();
            aVar.a(d4);
            d4.d(aVar, this.f74571d, this.f74572e, this.f74573f);
            return;
        }
        aVar.a(h0Var.h(aVar, this.f74571d, this.f74572e, this.f74573f));
    }
}
