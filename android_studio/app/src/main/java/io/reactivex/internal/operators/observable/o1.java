package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableInterval.java */
/* loaded from: classes3.dex */
public final class o1 extends io.reactivex.z<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.h0 f74533a;

    /* renamed from: b  reason: collision with root package name */
    final long f74534b;

    /* renamed from: c  reason: collision with root package name */
    final long f74535c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f74536d;

    /* compiled from: ObservableInterval.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.disposables.c, Runnable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f74537c = 346773832286157679L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Long> f74538a;

        /* renamed from: b  reason: collision with root package name */
        long f74539b;

        a(io.reactivex.g0<? super Long> g0Var) {
            this.f74538a = g0Var;
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
            if (get() != DisposableHelper.DISPOSED) {
                io.reactivex.g0<? super Long> g0Var = this.f74538a;
                long j4 = this.f74539b;
                this.f74539b = 1 + j4;
                g0Var.onNext(Long.valueOf(j4));
            }
        }
    }

    public o1(long j4, long j10, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f74534b = j4;
        this.f74535c = j10;
        this.f74536d = timeUnit;
        this.f74533a = h0Var;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super Long> g0Var) {
        a aVar = new a(g0Var);
        g0Var.onSubscribe(aVar);
        io.reactivex.h0 h0Var = this.f74533a;
        if (h0Var instanceof io.reactivex.internal.schedulers.o) {
            h0.c d4 = h0Var.d();
            aVar.a(d4);
            d4.d(aVar, this.f74534b, this.f74535c, this.f74536d);
            return;
        }
        aVar.a(h0Var.h(aVar, this.f74534b, this.f74535c, this.f74536d));
    }
}
