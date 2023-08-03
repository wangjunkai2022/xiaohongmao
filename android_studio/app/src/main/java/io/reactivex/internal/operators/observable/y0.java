package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableFlatMapCompletableCompletable.java */
/* loaded from: classes3.dex */
public final class y0<T> extends io.reactivex.a implements o7.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f75034a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.g> f75035b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f75036c;

    /* compiled from: ObservableFlatMapCompletableCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.disposables.c, io.reactivex.g0<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f75037h = 8443155186132538303L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f75038a;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.g> f75040c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f75041d;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.c f75043f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f75044g;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f75039b = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.b f75042e = new io.reactivex.disposables.b();

        /* compiled from: ObservableFlatMapCompletableCompletable.java */
        /* renamed from: io.reactivex.internal.operators.observable.y0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0599a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f75045b = 8606673141535671828L;

            C0599a() {
            }

            @Override // io.reactivex.disposables.c
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.c
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.d
            public void onComplete() {
                a.this.a(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                a.this.b(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(io.reactivex.d dVar, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9) {
            this.f75038a = dVar;
            this.f75040c = oVar;
            this.f75041d = z9;
            lazySet(1);
        }

        void a(a<T>.C0599a c0599a) {
            this.f75042e.c(c0599a);
            onComplete();
        }

        void b(a<T>.C0599a c0599a, Throwable th) {
            this.f75042e.c(c0599a);
            onError(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75044g = true;
            this.f75043f.dispose();
            this.f75042e.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75043f.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.f75039b.terminate();
                if (terminate != null) {
                    this.f75038a.onError(terminate);
                } else {
                    this.f75038a.onComplete();
                }
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f75039b.addThrowable(th)) {
                if (this.f75041d) {
                    if (decrementAndGet() == 0) {
                        this.f75038a.onError(this.f75039b.terminate());
                        return;
                    }
                    return;
                }
                dispose();
                if (getAndSet(0) > 0) {
                    this.f75038a.onError(this.f75039b.terminate());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(this.f75040c.apply(t9), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0599a c0599a = new C0599a();
                if (this.f75044g || !this.f75042e.b(c0599a)) {
                    return;
                }
                gVar.d(c0599a);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75043f.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75043f, cVar)) {
                this.f75043f = cVar;
                this.f75038a.onSubscribe(this);
            }
        }
    }

    public y0(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9) {
        this.f75034a = e0Var;
        this.f75035b = oVar;
        this.f75036c = z9;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f75034a.subscribe(new a(dVar, this.f75035b, this.f75036c));
    }

    @Override // o7.d
    public io.reactivex.z<T> a() {
        return io.reactivex.plugins.a.R(new x0(this.f75034a, this.f75035b, this.f75036c));
    }
}
