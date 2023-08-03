package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableTimer.java */
/* loaded from: classes4.dex */
public final class c4 extends io.reactivex.rxjava3.core.g0<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f79275a;

    /* renamed from: b  reason: collision with root package name */
    final long f79276b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f79277c;

    /* compiled from: ObservableTimer.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f79278b = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super Long> f79279a;

        a(io.reactivex.rxjava3.core.n0<? super Long> downstream) {
            this.f79279a = downstream;
        }

        public void a(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.trySet(this, d4);
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
            this.f79279a.onNext(0L);
            lazySet(EmptyDisposable.INSTANCE);
            this.f79279a.onComplete();
        }
    }

    public c4(long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f79276b = delay;
        this.f79277c = unit;
        this.f79275a = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super Long> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        aVar.a(this.f79275a.g(aVar, this.f79276b, this.f79277c));
    }
}
