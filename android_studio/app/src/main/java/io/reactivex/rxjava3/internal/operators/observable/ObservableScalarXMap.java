package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public final class ObservableScalarXMap {

    /* loaded from: classes4.dex */
    public static final class ScalarDisposable<T> extends AtomicInteger implements io.reactivex.rxjava3.internal.fuseable.l<T>, Runnable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f79129c = 3880992722410194083L;

        /* renamed from: d  reason: collision with root package name */
        static final int f79130d = 0;

        /* renamed from: e  reason: collision with root package name */
        static final int f79131e = 1;

        /* renamed from: f  reason: collision with root package name */
        static final int f79132f = 2;

        /* renamed from: g  reason: collision with root package name */
        static final int f79133g = 3;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79134a;

        /* renamed from: b  reason: collision with root package name */
        final T f79135b;

        public ScalarDisposable(io.reactivex.rxjava3.core.n0<? super T> observer, T value) {
            this.f79134a = observer;
            this.f79135b = value;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            lazySet(3);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            set(3);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == 3;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return get() != 1;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(T value) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            if (get() == 1) {
                lazySet(3);
                return this.f79135b;
            }
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 1) != 0) {
                lazySet(1);
                return 1;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.f79134a.onNext((T) this.f79135b);
                if (get() == 2) {
                    lazySet(3);
                    this.f79134a.onComplete();
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(T v12, T v22) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class a<T, R> extends io.reactivex.rxjava3.core.g0<R> {

        /* renamed from: a  reason: collision with root package name */
        final T f79136a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f79137b;

        a(T value, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> mapper) {
            this.f79136a = value;
            this.f79137b = mapper;
        }

        @Override // io.reactivex.rxjava3.core.g0
        public void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
            try {
                io.reactivex.rxjava3.core.l0<? extends R> apply = this.f79137b.apply((T) this.f79136a);
                Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                io.reactivex.rxjava3.core.l0<? extends R> l0Var = apply;
                if (l0Var instanceof q7.s) {
                    try {
                        Object obj = ((q7.s) l0Var).get();
                        if (obj == null) {
                            EmptyDisposable.complete(observer);
                            return;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(observer, obj);
                        observer.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                        return;
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        EmptyDisposable.error(th, observer);
                        return;
                    }
                }
                l0Var.a(observer);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                EmptyDisposable.error(th2, observer);
            }
        }
    }

    private ObservableScalarXMap() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> io.reactivex.rxjava3.core.g0<U> a(T value, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> mapper) {
        return io.reactivex.rxjava3.plugins.a.R(new a(value, mapper));
    }

    public static <T, R> boolean b(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.n0<? super R> observer, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> mapper) {
        if (source instanceof q7.s) {
            try {
                Object obj = (Object) ((q7.s) source).get();
                if (obj == 0) {
                    EmptyDisposable.complete(observer);
                    return true;
                }
                try {
                    io.reactivex.rxjava3.core.l0<? extends R> apply = mapper.apply(obj);
                    Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                    io.reactivex.rxjava3.core.l0<? extends R> l0Var = apply;
                    if (l0Var instanceof q7.s) {
                        try {
                            Object obj2 = ((q7.s) l0Var).get();
                            if (obj2 == null) {
                                EmptyDisposable.complete(observer);
                                return true;
                            }
                            ScalarDisposable scalarDisposable = new ScalarDisposable(observer, obj2);
                            observer.onSubscribe(scalarDisposable);
                            scalarDisposable.run();
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            EmptyDisposable.error(th, observer);
                            return true;
                        }
                    } else {
                        l0Var.a(observer);
                    }
                    return true;
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    EmptyDisposable.error(th2, observer);
                    return true;
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                EmptyDisposable.error(th3, observer);
                return true;
            }
        }
        return false;
    }
}
