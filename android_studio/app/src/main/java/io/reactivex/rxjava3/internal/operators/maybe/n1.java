package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeTimer.java */
/* loaded from: classes4.dex */
public final class n1 extends io.reactivex.rxjava3.core.v<Long> {

    /* renamed from: a  reason: collision with root package name */
    final long f78701a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f78702b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f78703c;

    /* compiled from: MaybeTimer.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f78704b = 2875964065294031672L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super Long> f78705a;

        a(final io.reactivex.rxjava3.core.y<? super Long> downstream) {
            this.f78705a = downstream;
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
            this.f78705a.onSuccess(0L);
        }
    }

    public n1(long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f78701a = delay;
        this.f78702b = unit;
        this.f78703c = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(final io.reactivex.rxjava3.core.y<? super Long> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        aVar.a(this.f78703c.g(aVar, this.f78701a, this.f78702b));
    }
}
