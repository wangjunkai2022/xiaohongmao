package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableFlatMapCompletableCompletable.java */
/* loaded from: classes4.dex */
public final class y0<T> extends io.reactivex.rxjava3.core.a implements io.reactivex.rxjava3.internal.fuseable.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f80425a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f80426b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f80427c;

    /* compiled from: ObservableFlatMapCompletableCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f80428h = 8443155186132538303L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f80429a;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f80431c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f80432d;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80434f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f80435g;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f80430b = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f80433e = new io.reactivex.rxjava3.disposables.c();

        /* compiled from: ObservableFlatMapCompletableCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.y0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0679a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f80436b = 8606673141535671828L;

            C0679a() {
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

        a(io.reactivex.rxjava3.core.d observer, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors) {
            this.f80429a = observer;
            this.f80431c = mapper;
            this.f80432d = delayErrors;
            lazySet(1);
        }

        void a(a<T>.C0679a inner) {
            this.f80433e.c(inner);
            onComplete();
        }

        void b(a<T>.C0679a inner, Throwable e4) {
            this.f80433e.c(inner);
            onError(e4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80435g = true;
            this.f80434f.dispose();
            this.f80433e.dispose();
            this.f80430b.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80434f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (decrementAndGet() == 0) {
                this.f80430b.tryTerminateConsumer(this.f80429a);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (this.f80430b.tryAddThrowableOrReport(e4)) {
                if (this.f80432d) {
                    if (decrementAndGet() == 0) {
                        this.f80430b.tryTerminateConsumer(this.f80429a);
                        return;
                    }
                    return;
                }
                this.f80435g = true;
                this.f80434f.dispose();
                this.f80433e.dispose();
                this.f80430b.tryTerminateConsumer(this.f80429a);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            try {
                io.reactivex.rxjava3.core.g apply = this.f80431c.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                io.reactivex.rxjava3.core.g gVar = apply;
                getAndIncrement();
                C0679a c0679a = new C0679a();
                if (this.f80435g || !this.f80433e.b(c0679a)) {
                    return;
                }
                gVar.d(c0679a);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80434f.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80434f, d4)) {
                this.f80434f = d4;
                this.f80429a.onSubscribe(this);
            }
        }
    }

    public y0(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors) {
        this.f80425a = source;
        this.f80426b = mapper;
        this.f80427c = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f80425a.a(new a(observer, this.f80426b, this.f80427c));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<T> a() {
        return io.reactivex.rxjava3.plugins.a.R(new x0(this.f80425a, this.f80426b, this.f80427c));
    }
}
