package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.operators.observable.b4;
import java.util.Objects;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableTimeout.java */
/* loaded from: classes4.dex */
public final class a4<T, U, V> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<U> f79179b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<V>> f79180c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T> f79181d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableTimeout.java */
    /* loaded from: classes4.dex */
    public static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f79182c = 8708641127342403073L;

        /* renamed from: a  reason: collision with root package name */
        final d f79183a;

        /* renamed from: b  reason: collision with root package name */
        final long f79184b;

        a(long idx, d parent) {
            this.f79184b = idx;
            this.f79183a = parent;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f79183a.b(this.f79184b);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f79183a.a(this.f79184b, t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(Object t9) {
            io.reactivex.rxjava3.disposables.f fVar = (io.reactivex.rxjava3.disposables.f) get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                fVar.dispose();
                lazySet(disposableHelper);
                this.f79183a.b(this.f79184b);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }
    }

    /* compiled from: ObservableTimeout.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, d {

        /* renamed from: g  reason: collision with root package name */
        private static final long f79185g = -7508389464265974549L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79186a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<?>> f79187b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f79188c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f79189d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79190e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.core.l0<? extends T> f79191f;

        b(io.reactivex.rxjava3.core.n0<? super T> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<?>> itemTimeoutIndicator, io.reactivex.rxjava3.core.l0<? extends T> fallback) {
            this.f79186a = actual;
            this.f79187b = itemTimeoutIndicator;
            this.f79191f = fallback;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.a4.d
        public void a(long idx, Throwable ex) {
            if (this.f79189d.compareAndSet(idx, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this);
                this.f79186a.onError(ex);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.b4.d
        public void b(long idx) {
            if (this.f79189d.compareAndSet(idx, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f79190e);
                io.reactivex.rxjava3.core.l0<? extends T> l0Var = this.f79191f;
                this.f79191f = null;
                l0Var.a(new b4.a(this.f79186a, this));
            }
        }

        void c(io.reactivex.rxjava3.core.l0<?> firstTimeoutIndicator) {
            if (firstTimeoutIndicator != null) {
                a aVar = new a(0L, this);
                if (this.f79188c.replace(aVar)) {
                    firstTimeoutIndicator.a(aVar);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f79190e);
            DisposableHelper.dispose(this);
            this.f79188c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79189d.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f79188c.dispose();
                this.f79186a.onComplete();
                this.f79188c.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79189d.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f79188c.dispose();
                this.f79186a.onError(t9);
                this.f79188c.dispose();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            long j4 = this.f79189d.get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (this.f79189d.compareAndSet(j4, j10)) {
                    io.reactivex.rxjava3.disposables.f fVar = this.f79188c.get();
                    if (fVar != null) {
                        fVar.dispose();
                    }
                    this.f79186a.onNext(t9);
                    try {
                        io.reactivex.rxjava3.core.l0<?> apply = this.f79187b.apply(t9);
                        Objects.requireNonNull(apply, "The itemTimeoutIndicator returned a null ObservableSource.");
                        io.reactivex.rxjava3.core.l0<?> l0Var = apply;
                        a aVar = new a(j10, this);
                        if (this.f79188c.replace(aVar)) {
                            l0Var.a(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f79190e.get().dispose();
                        this.f79189d.getAndSet(Long.MAX_VALUE);
                        this.f79186a.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79190e, d4);
        }
    }

    /* compiled from: ObservableTimeout.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends AtomicLong implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, d {

        /* renamed from: e  reason: collision with root package name */
        private static final long f79192e = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79193a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<?>> f79194b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f79195c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79196d = new AtomicReference<>();

        c(io.reactivex.rxjava3.core.n0<? super T> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<?>> itemTimeoutIndicator) {
            this.f79193a = actual;
            this.f79194b = itemTimeoutIndicator;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.a4.d
        public void a(long idx, Throwable ex) {
            if (compareAndSet(idx, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f79196d);
                this.f79193a.onError(ex);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.b4.d
        public void b(long idx) {
            if (compareAndSet(idx, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f79196d);
                this.f79193a.onError(new TimeoutException());
            }
        }

        void c(io.reactivex.rxjava3.core.l0<?> firstTimeoutIndicator) {
            if (firstTimeoutIndicator != null) {
                a aVar = new a(0L, this);
                if (this.f79195c.replace(aVar)) {
                    firstTimeoutIndicator.a(aVar);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f79196d);
            this.f79195c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f79196d.get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f79195c.dispose();
                this.f79193a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f79195c.dispose();
                this.f79193a.onError(t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            long j4 = get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (compareAndSet(j4, j10)) {
                    io.reactivex.rxjava3.disposables.f fVar = this.f79195c.get();
                    if (fVar != null) {
                        fVar.dispose();
                    }
                    this.f79193a.onNext(t9);
                    try {
                        io.reactivex.rxjava3.core.l0<?> apply = this.f79194b.apply(t9);
                        Objects.requireNonNull(apply, "The itemTimeoutIndicator returned a null ObservableSource.");
                        io.reactivex.rxjava3.core.l0<?> l0Var = apply;
                        a aVar = new a(j10, this);
                        if (this.f79195c.replace(aVar)) {
                            l0Var.a(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f79196d.get().dispose();
                        getAndSet(Long.MAX_VALUE);
                        this.f79193a.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79196d, d4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableTimeout.java */
    /* loaded from: classes4.dex */
    public interface d extends b4.d {
        void a(long idx, Throwable ex);
    }

    public a4(io.reactivex.rxjava3.core.g0<T> source, io.reactivex.rxjava3.core.l0<U> firstTimeoutIndicator, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<V>> itemTimeoutIndicator, io.reactivex.rxjava3.core.l0<? extends T> other) {
        super(source);
        this.f79179b = firstTimeoutIndicator;
        this.f79180c = itemTimeoutIndicator;
        this.f79181d = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        if (this.f79181d == null) {
            c cVar = new c(observer, this.f79180c);
            observer.onSubscribe(cVar);
            cVar.c(this.f79179b);
            this.f79141a.a(cVar);
            return;
        }
        b bVar = new b(observer, this.f79180c, this.f79181d);
        observer.onSubscribe(bVar);
        bVar.c(this.f79179b);
        this.f79141a.a(bVar);
    }
}
