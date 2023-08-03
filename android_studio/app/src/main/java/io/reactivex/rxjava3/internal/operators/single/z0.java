package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleTimer.java */
/* loaded from: classes4.dex */
public final class z0 extends io.reactivex.rxjava3.core.p0<Long> {

    /* renamed from: a  reason: collision with root package name */
    final long f81002a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f81003b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f81004c;

    /* compiled from: SingleTimer.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81005b = 8465401857522493082L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Long> f81006a;

        a(final io.reactivex.rxjava3.core.s0<? super Long> downstream) {
            this.f81006a = downstream;
        }

        void a(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this, d4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f81006a.onSuccess(0L);
        }
    }

    public z0(long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f81002a = delay;
        this.f81003b = unit;
        this.f81004c = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super Long> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        aVar.a(this.f81004c.g(aVar, this.f81002a, this.f81003b));
    }
}
