package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableMerge.java */
/* loaded from: classes4.dex */
public final class b0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends io.reactivex.rxjava3.core.g> f76544a;

    /* renamed from: b  reason: collision with root package name */
    final int f76545b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f76546c;

    /* compiled from: CompletableMerge.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicInteger implements io.reactivex.rxjava3.core.r<io.reactivex.rxjava3.core.g>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: g  reason: collision with root package name */
        private static final long f76547g = -2108443387387077490L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76548a;

        /* renamed from: b  reason: collision with root package name */
        final int f76549b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f76550c;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f76553f;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f76552e = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f76551d = new AtomicThrowable();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CompletableMerge.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.completable.b0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public final class C0621a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f76554b = 251330541679988317L;

            C0621a() {
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                a.this.a(this);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.b(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.d actual, int maxConcurrency, boolean delayErrors) {
            this.f76548a = actual;
            this.f76549b = maxConcurrency;
            this.f76550c = delayErrors;
            lazySet(1);
        }

        void a(C0621a inner) {
            this.f76552e.c(inner);
            if (decrementAndGet() == 0) {
                this.f76551d.tryTerminateConsumer(this.f76548a);
            } else if (this.f76549b != Integer.MAX_VALUE) {
                this.f76553f.request(1L);
            }
        }

        void b(C0621a inner, Throwable t9) {
            this.f76552e.c(inner);
            if (!this.f76550c) {
                this.f76553f.cancel();
                this.f76552e.dispose();
                if (!this.f76551d.tryAddThrowableOrReport(t9) || getAndSet(0) <= 0) {
                    return;
                }
                this.f76551d.tryTerminateConsumer(this.f76548a);
            } else if (this.f76551d.tryAddThrowableOrReport(t9)) {
                if (decrementAndGet() == 0) {
                    this.f76551d.tryTerminateConsumer(this.f76548a);
                } else if (this.f76549b != Integer.MAX_VALUE) {
                    this.f76553f.request(1L);
                }
            }
        }

        @Override // org.reactivestreams.d
        /* renamed from: c */
        public void onNext(io.reactivex.rxjava3.core.g t9) {
            getAndIncrement();
            C0621a c0621a = new C0621a();
            this.f76552e.b(c0621a);
            t9.d(c0621a);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76553f.cancel();
            this.f76552e.dispose();
            this.f76551d.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76552e.isDisposed();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (decrementAndGet() == 0) {
                this.f76551d.tryTerminateConsumer(this.f76548a);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (!this.f76550c) {
                this.f76552e.dispose();
                if (!this.f76551d.tryAddThrowableOrReport(t9) || getAndSet(0) <= 0) {
                    return;
                }
                this.f76551d.tryTerminateConsumer(this.f76548a);
            } else if (this.f76551d.tryAddThrowableOrReport(t9) && decrementAndGet() == 0) {
                this.f76551d.tryTerminateConsumer(this.f76548a);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76553f, s9)) {
                this.f76553f = s9;
                this.f76548a.onSubscribe(this);
                int i4 = this.f76549b;
                if (i4 == Integer.MAX_VALUE) {
                    s9.request(Long.MAX_VALUE);
                } else {
                    s9.request(i4);
                }
            }
        }
    }

    public b0(org.reactivestreams.c<? extends io.reactivex.rxjava3.core.g> source, int maxConcurrency, boolean delayErrors) {
        this.f76544a = source;
        this.f76545b = maxConcurrency;
        this.f76546c = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f76544a.i(new a(observer, this.f76545b, this.f76546c));
    }
}
