package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class ObservableScalarXMap {

    /* loaded from: classes3.dex */
    public static final class ScalarDisposable<T> extends AtomicInteger implements o7.j<T>, Runnable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73815c = 3880992722410194083L;

        /* renamed from: d  reason: collision with root package name */
        static final int f73816d = 0;

        /* renamed from: e  reason: collision with root package name */
        static final int f73817e = 1;

        /* renamed from: f  reason: collision with root package name */
        static final int f73818f = 2;

        /* renamed from: g  reason: collision with root package name */
        static final int f73819g = 3;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f73820a;

        /* renamed from: b  reason: collision with root package name */
        final T f73821b;

        public ScalarDisposable(io.reactivex.g0<? super T> g0Var, T t9) {
            this.f73820a = g0Var;
            this.f73821b = t9;
        }

        @Override // o7.o
        public void clear() {
            lazySet(3);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            set(3);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == 3;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return get() != 1;
        }

        @Override // o7.o
        public boolean offer(T t9) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            if (get() == 1) {
                lazySet(3);
                return this.f73821b;
            }
            return null;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 1) != 0) {
                lazySet(1);
                return 1;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.f73820a.onNext((T) this.f73821b);
                if (get() == 2) {
                    lazySet(3);
                    this.f73820a.onComplete();
                }
            }
        }

        @Override // o7.o
        public boolean offer(T t9, T t10) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class a<T, R> extends io.reactivex.z<R> {

        /* renamed from: a  reason: collision with root package name */
        final T f73822a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<? extends R>> f73823b;

        a(T t9, n7.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar) {
            this.f73822a = t9;
            this.f73823b = oVar;
        }

        @Override // io.reactivex.z
        public void subscribeActual(io.reactivex.g0<? super R> g0Var) {
            try {
                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f73823b.apply((T) this.f73822a), "The mapper returned a null ObservableSource");
                if (e0Var instanceof Callable) {
                    try {
                        Object call = ((Callable) e0Var).call();
                        if (call == null) {
                            EmptyDisposable.complete(g0Var);
                            return;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(g0Var, call);
                        g0Var.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                        return;
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        EmptyDisposable.error(th, g0Var);
                        return;
                    }
                }
                e0Var.subscribe(g0Var);
            } catch (Throwable th2) {
                EmptyDisposable.error(th2, g0Var);
            }
        }
    }

    private ObservableScalarXMap() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> io.reactivex.z<U> a(T t9, n7.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar) {
        return io.reactivex.plugins.a.R(new a(t9, oVar));
    }

    public static <T, R> boolean b(io.reactivex.e0<T> e0Var, io.reactivex.g0<? super R> g0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar) {
        if (e0Var instanceof Callable) {
            try {
                Object obj = (Object) ((Callable) e0Var).call();
                if (obj == 0) {
                    EmptyDisposable.complete(g0Var);
                    return true;
                }
                try {
                    io.reactivex.e0 e0Var2 = (io.reactivex.e0) io.reactivex.internal.functions.b.g(oVar.apply(obj), "The mapper returned a null ObservableSource");
                    if (e0Var2 instanceof Callable) {
                        try {
                            Object call = ((Callable) e0Var2).call();
                            if (call == null) {
                                EmptyDisposable.complete(g0Var);
                                return true;
                            }
                            ScalarDisposable scalarDisposable = new ScalarDisposable(g0Var, call);
                            g0Var.onSubscribe(scalarDisposable);
                            scalarDisposable.run();
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            EmptyDisposable.error(th, g0Var);
                            return true;
                        }
                    } else {
                        e0Var2.subscribe(g0Var);
                    }
                    return true;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    EmptyDisposable.error(th2, g0Var);
                    return true;
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                EmptyDisposable.error(th3, g0Var);
                return true;
            }
        }
        return false;
    }
}
