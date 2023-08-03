package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableTimer.java */
/* loaded from: classes4.dex */
public final class p0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final long f76706a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f76707b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f76708c;

    /* compiled from: CompletableTimer.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f76709b = 3167244060586201109L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76710a;

        a(final io.reactivex.rxjava3.core.d downstream) {
            this.f76710a = downstream;
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
            this.f76710a.onComplete();
        }
    }

    public p0(long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f76706a = delay;
        this.f76707b = unit;
        this.f76708c = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        aVar.a(this.f76708c.g(aVar, this.f76706a, this.f76707b));
    }
}
