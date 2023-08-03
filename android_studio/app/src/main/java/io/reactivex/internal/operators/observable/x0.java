package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableFlatMapCompletable.java */
/* loaded from: classes3.dex */
public final class x0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.g> f74985b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f74986c;

    /* compiled from: ObservableFlatMapCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends BasicIntQueueDisposable<T> implements io.reactivex.g0<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f74987i = 8443155186132538303L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74988b;

        /* renamed from: d  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.g> f74990d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f74991e;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.c f74993g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f74994h;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f74989c = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.disposables.b f74992f = new io.reactivex.disposables.b();

        /* compiled from: ObservableFlatMapCompletable.java */
        /* renamed from: io.reactivex.internal.operators.observable.x0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0598a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f74995b = 8606673141535671828L;

            C0598a() {
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

        a(io.reactivex.g0<? super T> g0Var, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9) {
            this.f74988b = g0Var;
            this.f74990d = oVar;
            this.f74991e = z9;
            lazySet(1);
        }

        void a(a<T>.C0598a c0598a) {
            this.f74992f.c(c0598a);
            onComplete();
        }

        void b(a<T>.C0598a c0598a, Throwable th) {
            this.f74992f.c(c0598a);
            onError(th);
        }

        @Override // o7.o
        public void clear() {
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74994h = true;
            this.f74993g.dispose();
            this.f74992f.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74993g.isDisposed();
        }

        @Override // o7.o
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.f74989c.terminate();
                if (terminate != null) {
                    this.f74988b.onError(terminate);
                } else {
                    this.f74988b.onComplete();
                }
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74989c.addThrowable(th)) {
                if (this.f74991e) {
                    if (decrementAndGet() == 0) {
                        this.f74988b.onError(this.f74989c.terminate());
                        return;
                    }
                    return;
                }
                dispose();
                if (getAndSet(0) > 0) {
                    this.f74988b.onError(this.f74989c.terminate());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(this.f74990d.apply(t9), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0598a c0598a = new C0598a();
                if (this.f74994h || !this.f74992f.b(c0598a)) {
                    return;
                }
                gVar.d(c0598a);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74993g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74993g, cVar)) {
                this.f74993g = cVar;
                this.f74988b.onSubscribe(this);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            return null;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return i4 & 2;
        }
    }

    public x0(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9) {
        super(e0Var);
        this.f74985b = oVar;
        this.f74986c = z9;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74985b, this.f74986c));
    }
}
