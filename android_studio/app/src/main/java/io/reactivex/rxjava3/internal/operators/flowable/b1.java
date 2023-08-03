package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlatMapCompletableCompletable.java */
/* loaded from: classes4.dex */
public final class b1<T> extends io.reactivex.rxjava3.core.a implements io.reactivex.rxjava3.internal.fuseable.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f76878a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f76879b;

    /* renamed from: c  reason: collision with root package name */
    final int f76880c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f76881d;

    /* compiled from: FlowableFlatMapCompletableCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: i  reason: collision with root package name */
        private static final long f76882i = 8443155186132538303L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76883a;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f76885c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f76886d;

        /* renamed from: f  reason: collision with root package name */
        final int f76888f;

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f76889g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f76890h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f76884b = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f76887e = new io.reactivex.rxjava3.disposables.c();

        /* compiled from: FlowableFlatMapCompletableCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.b1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0627a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f76891b = 8606673141535671828L;

            C0627a() {
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

        a(io.reactivex.rxjava3.core.d observer, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors, int maxConcurrency) {
            this.f76883a = observer;
            this.f76885c = mapper;
            this.f76886d = delayErrors;
            this.f76888f = maxConcurrency;
            lazySet(1);
        }

        void a(a<T>.C0627a inner) {
            this.f76887e.c(inner);
            onComplete();
        }

        void b(a<T>.C0627a inner, Throwable e4) {
            this.f76887e.c(inner);
            onError(e4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76890h = true;
            this.f76889g.cancel();
            this.f76887e.dispose();
            this.f76884b.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76887e.isDisposed();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (decrementAndGet() == 0) {
                this.f76884b.tryTerminateConsumer(this.f76883a);
            } else if (this.f76888f != Integer.MAX_VALUE) {
                this.f76889g.request(1L);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            if (this.f76884b.tryAddThrowableOrReport(e4)) {
                if (this.f76886d) {
                    if (decrementAndGet() == 0) {
                        this.f76884b.tryTerminateConsumer(this.f76883a);
                        return;
                    } else if (this.f76888f != Integer.MAX_VALUE) {
                        this.f76889g.request(1L);
                        return;
                    } else {
                        return;
                    }
                }
                this.f76890h = true;
                this.f76889g.cancel();
                this.f76887e.dispose();
                this.f76884b.tryTerminateConsumer(this.f76883a);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T value) {
            try {
                io.reactivex.rxjava3.core.g apply = this.f76885c.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                io.reactivex.rxjava3.core.g gVar = apply;
                getAndIncrement();
                C0627a c0627a = new C0627a();
                if (this.f76890h || !this.f76887e.b(c0627a)) {
                    return;
                }
                gVar.d(c0627a);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76889g.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76889g, s9)) {
                this.f76889g = s9;
                this.f76883a.onSubscribe(this);
                int i4 = this.f76888f;
                if (i4 == Integer.MAX_VALUE) {
                    s9.request(Long.MAX_VALUE);
                } else {
                    s9.request(i4);
                }
            }
        }
    }

    public b1(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors, int maxConcurrency) {
        this.f76878a = source;
        this.f76879b = mapper;
        this.f76881d = delayErrors;
        this.f76880c = maxConcurrency;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f76878a.G6(new a(observer, this.f76879b, this.f76881d, this.f76880c));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<T> c() {
        return io.reactivex.rxjava3.plugins.a.P(new a1(this.f76878a, this.f76879b, this.f76881d, this.f76880c));
    }
}
