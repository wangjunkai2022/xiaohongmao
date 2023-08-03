package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleTimer.java */
/* loaded from: classes4.dex */
public final class t0 extends io.reactivex.i0<Long> {

    /* renamed from: a  reason: collision with root package name */
    final long f75518a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f75519b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f75520c;

    /* compiled from: SingleTimer.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.disposables.c, Runnable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f75521b = 8465401857522493082L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Long> f75522a;

        a(io.reactivex.l0<? super Long> l0Var) {
            this.f75522a = l0Var;
        }

        void a(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f75522a.onSuccess(0L);
        }
    }

    public t0(long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f75518a = j4;
        this.f75519b = timeUnit;
        this.f75520c = h0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Long> l0Var) {
        a aVar = new a(l0Var);
        l0Var.onSubscribe(aVar);
        aVar.a(this.f75520c.g(aVar, this.f75518a, this.f75519b));
    }
}
