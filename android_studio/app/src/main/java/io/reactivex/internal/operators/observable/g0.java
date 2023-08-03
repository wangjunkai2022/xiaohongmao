package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableDelay.java */
/* loaded from: classes3.dex */
public final class g0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74117b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f74118c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f74119d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f74120e;

    /* compiled from: ObservableDelay.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74121a;

        /* renamed from: b  reason: collision with root package name */
        final long f74122b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f74123c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f74124d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f74125e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.c f74126f;

        /* compiled from: ObservableDelay.java */
        /* renamed from: io.reactivex.internal.operators.observable.g0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class RunnableC0590a implements Runnable {
            RunnableC0590a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f74121a.onComplete();
                } finally {
                    a.this.f74124d.dispose();
                }
            }
        }

        /* compiled from: ObservableDelay.java */
        /* loaded from: classes3.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f74128a;

            b(Throwable th) {
                this.f74128a = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f74121a.onError(this.f74128a);
                } finally {
                    a.this.f74124d.dispose();
                }
            }
        }

        /* compiled from: ObservableDelay.java */
        /* loaded from: classes3.dex */
        final class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final T f74130a;

            c(T t9) {
                this.f74130a = t9;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f74121a.onNext((T) this.f74130a);
            }
        }

        a(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar, boolean z9) {
            this.f74121a = g0Var;
            this.f74122b = j4;
            this.f74123c = timeUnit;
            this.f74124d = cVar;
            this.f74125e = z9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74126f.dispose();
            this.f74124d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74124d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74124d.c(new RunnableC0590a(), this.f74122b, this.f74123c);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74124d.c(new b(th), this.f74125e ? this.f74122b : 0L, this.f74123c);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74124d.c(new c(t9), this.f74122b, this.f74123c);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74126f, cVar)) {
                this.f74126f = cVar;
                this.f74121a.onSubscribe(this);
            }
        }
    }

    public g0(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z9) {
        super(e0Var);
        this.f74117b = j4;
        this.f74118c = timeUnit;
        this.f74119d = h0Var;
        this.f74120e = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(this.f74120e ? g0Var : new io.reactivex.observers.l(g0Var), this.f74117b, this.f74118c, this.f74119d.d(), this.f74120e));
    }
}
