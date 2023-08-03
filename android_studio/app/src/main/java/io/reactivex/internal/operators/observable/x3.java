package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.operators.observable.y3;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableTimeout.java */
/* loaded from: classes3.dex */
public final class x3<T, U, V> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<U> f75011b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.e0<V>> f75012c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f75013d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableTimeout.java */
    /* loaded from: classes3.dex */
    public static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<Object>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75014c = 8708641127342403073L;

        /* renamed from: a  reason: collision with root package name */
        final d f75015a;

        /* renamed from: b  reason: collision with root package name */
        final long f75016b;

        a(long j4, d dVar) {
            this.f75016b = j4;
            this.f75015a = dVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f75015a.b(this.f75016b);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f75015a.a(this.f75016b, th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            io.reactivex.disposables.c cVar = (io.reactivex.disposables.c) get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar != disposableHelper) {
                cVar.dispose();
                lazySet(disposableHelper);
                this.f75015a.b(this.f75016b);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    /* compiled from: ObservableTimeout.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T>, io.reactivex.disposables.c, d {

        /* renamed from: g  reason: collision with root package name */
        private static final long f75017g = -7508389464265974549L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75018a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<?>> f75019b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f75020c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f75021d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f75022e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.e0<? extends T> f75023f;

        b(io.reactivex.g0<? super T> g0Var, n7.o<? super T, ? extends io.reactivex.e0<?>> oVar, io.reactivex.e0<? extends T> e0Var) {
            this.f75018a = g0Var;
            this.f75019b = oVar;
            this.f75023f = e0Var;
        }

        @Override // io.reactivex.internal.operators.observable.x3.d
        public void a(long j4, Throwable th) {
            if (this.f75021d.compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this);
                this.f75018a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.observable.y3.d
        public void b(long j4) {
            if (this.f75021d.compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f75022e);
                io.reactivex.e0<? extends T> e0Var = this.f75023f;
                this.f75023f = null;
                e0Var.subscribe(new y3.a(this.f75018a, this));
            }
        }

        void c(io.reactivex.e0<?> e0Var) {
            if (e0Var != null) {
                a aVar = new a(0L, this);
                if (this.f75020c.replace(aVar)) {
                    e0Var.subscribe(aVar);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f75022e);
            DisposableHelper.dispose(this);
            this.f75020c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f75021d.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f75020c.dispose();
                this.f75018a.onComplete();
                this.f75020c.dispose();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f75021d.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f75020c.dispose();
                this.f75018a.onError(th);
                this.f75020c.dispose();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            long j4 = this.f75021d.get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (this.f75021d.compareAndSet(j4, j10)) {
                    io.reactivex.disposables.c cVar = this.f75020c.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f75018a.onNext(t9);
                    try {
                        io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f75019b.apply(t9), "The itemTimeoutIndicator returned a null ObservableSource.");
                        a aVar = new a(j10, this);
                        if (this.f75020c.replace(aVar)) {
                            e0Var.subscribe(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f75022e.get().dispose();
                        this.f75021d.getAndSet(Long.MAX_VALUE);
                        this.f75018a.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f75022e, cVar);
        }
    }

    /* compiled from: ObservableTimeout.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends AtomicLong implements io.reactivex.g0<T>, io.reactivex.disposables.c, d {

        /* renamed from: e  reason: collision with root package name */
        private static final long f75024e = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75025a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<?>> f75026b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f75027c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f75028d = new AtomicReference<>();

        c(io.reactivex.g0<? super T> g0Var, n7.o<? super T, ? extends io.reactivex.e0<?>> oVar) {
            this.f75025a = g0Var;
            this.f75026b = oVar;
        }

        @Override // io.reactivex.internal.operators.observable.x3.d
        public void a(long j4, Throwable th) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f75028d);
                this.f75025a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.observable.y3.d
        public void b(long j4) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f75028d);
                this.f75025a.onError(new TimeoutException());
            }
        }

        void c(io.reactivex.e0<?> e0Var) {
            if (e0Var != null) {
                a aVar = new a(0L, this);
                if (this.f75027c.replace(aVar)) {
                    e0Var.subscribe(aVar);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f75028d);
            this.f75027c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f75028d.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f75027c.dispose();
                this.f75025a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f75027c.dispose();
                this.f75025a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            long j4 = get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (compareAndSet(j4, j10)) {
                    io.reactivex.disposables.c cVar = this.f75027c.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f75025a.onNext(t9);
                    try {
                        io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f75026b.apply(t9), "The itemTimeoutIndicator returned a null ObservableSource.");
                        a aVar = new a(j10, this);
                        if (this.f75027c.replace(aVar)) {
                            e0Var.subscribe(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f75028d.get().dispose();
                        getAndSet(Long.MAX_VALUE);
                        this.f75025a.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f75028d, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableTimeout.java */
    /* loaded from: classes3.dex */
    public interface d extends y3.d {
        void a(long j4, Throwable th);
    }

    public x3(io.reactivex.z<T> zVar, io.reactivex.e0<U> e0Var, n7.o<? super T, ? extends io.reactivex.e0<V>> oVar, io.reactivex.e0<? extends T> e0Var2) {
        super(zVar);
        this.f75011b = e0Var;
        this.f75012c = oVar;
        this.f75013d = e0Var2;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        if (this.f75013d == null) {
            c cVar = new c(g0Var, this.f75012c);
            g0Var.onSubscribe(cVar);
            cVar.c(this.f75011b);
            this.f73827a.subscribe(cVar);
            return;
        }
        b bVar = new b(g0Var, this.f75012c, this.f75013d);
        g0Var.onSubscribe(bVar);
        bVar.c(this.f75011b);
        this.f73827a.subscribe(bVar);
    }
}
