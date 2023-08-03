package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableTimer.java */
/* loaded from: classes3.dex */
public final class z3 extends io.reactivex.z<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.h0 f75128a;

    /* renamed from: b  reason: collision with root package name */
    final long f75129b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f75130c;

    /* compiled from: ObservableTimer.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.disposables.c, Runnable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f75131b = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Long> f75132a;

        a(io.reactivex.g0<? super Long> g0Var) {
            this.f75132a = g0Var;
        }

        public void a(io.reactivex.disposables.c cVar) {
            DisposableHelper.trySet(this, cVar);
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
            this.f75132a.onNext(0L);
            lazySet(EmptyDisposable.INSTANCE);
            this.f75132a.onComplete();
        }
    }

    public z3(long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f75129b = j4;
        this.f75130c = timeUnit;
        this.f75128a = h0Var;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super Long> g0Var) {
        a aVar = new a(g0Var);
        g0Var.onSubscribe(aVar);
        aVar.a(this.f75128a.g(aVar, this.f75129b, this.f75130c));
    }
}
