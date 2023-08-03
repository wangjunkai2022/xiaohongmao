package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableDelay.java */
/* loaded from: classes4.dex */
public final class g0<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f79429b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f79430c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f79431d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f79432e;

    /* compiled from: ObservableDelay.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79433a;

        /* renamed from: b  reason: collision with root package name */
        final long f79434b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f79435c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f79436d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f79437e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79438f;

        /* compiled from: ObservableDelay.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.g0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0670a implements Runnable {
            RunnableC0670a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f79433a.onComplete();
                } finally {
                    a.this.f79436d.dispose();
                }
            }
        }

        /* compiled from: ObservableDelay.java */
        /* loaded from: classes4.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f79440a;

            b(Throwable throwable) {
                this.f79440a = throwable;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f79433a.onError(this.f79440a);
                } finally {
                    a.this.f79436d.dispose();
                }
            }
        }

        /* compiled from: ObservableDelay.java */
        /* loaded from: classes4.dex */
        final class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final T f79442a;

            c(T t9) {
                this.f79442a = t9;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f79433a.onNext((T) this.f79442a);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super T> actual, long delay, TimeUnit unit, o0.c w9, boolean delayError) {
            this.f79433a = actual;
            this.f79434b = delay;
            this.f79435c = unit;
            this.f79436d = w9;
            this.f79437e = delayError;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79438f.dispose();
            this.f79436d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79436d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79436d.c(new RunnableC0670a(), this.f79434b, this.f79435c);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(final Throwable t9) {
            this.f79436d.c(new b(t9), this.f79437e ? this.f79434b : 0L, this.f79435c);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(final T t9) {
            this.f79436d.c(new c(t9), this.f79434b, this.f79435c);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79438f, d4)) {
                this.f79438f = d4;
                this.f79433a.onSubscribe(this);
            }
        }
    }

    public g0(io.reactivex.rxjava3.core.l0<T> source, long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean delayError) {
        super(source);
        this.f79429b = delay;
        this.f79430c = unit;
        this.f79431d = scheduler;
        this.f79432e = delayError;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(this.f79432e ? t9 : new io.reactivex.rxjava3.observers.m(t9), this.f79429b, this.f79430c, this.f79431d.d(), this.f79432e));
    }
}
