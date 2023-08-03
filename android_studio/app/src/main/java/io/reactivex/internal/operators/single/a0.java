package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import java.util.Iterator;

/* compiled from: SingleFlatMapIterableObservable.java */
/* loaded from: classes4.dex */
public final class a0<T, R> extends io.reactivex.z<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75323a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends Iterable<? extends R>> f75324b;

    /* compiled from: SingleFlatMapIterableObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends BasicIntQueueDisposable<R> implements io.reactivex.l0<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f75325h = -8938804753851907758L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g0<? super R> f75326b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super T, ? extends Iterable<? extends R>> f75327c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f75328d;

        /* renamed from: e  reason: collision with root package name */
        volatile Iterator<? extends R> f75329e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f75330f;

        /* renamed from: g  reason: collision with root package name */
        boolean f75331g;

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f75326b = g0Var;
            this.f75327c = oVar;
        }

        @Override // o7.o
        public void clear() {
            this.f75329e = null;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75330f = true;
            this.f75328d.dispose();
            this.f75328d = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75330f;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f75329e == null;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75328d = DisposableHelper.DISPOSED;
            this.f75326b.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75328d, cVar)) {
                this.f75328d = cVar;
                this.f75326b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            io.reactivex.g0<? super R> g0Var = this.f75326b;
            try {
                Iterator<? extends R> it = this.f75327c.apply(t9).iterator();
                if (!it.hasNext()) {
                    g0Var.onComplete();
                } else if (this.f75331g) {
                    this.f75329e = it;
                    g0Var.onNext(null);
                    g0Var.onComplete();
                } else {
                    while (!this.f75330f) {
                        try {
                            g0Var.onNext((R) it.next());
                            if (this.f75330f) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    g0Var.onComplete();
                                    return;
                                }
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                g0Var.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            g0Var.onError(th2);
                            return;
                        }
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f75326b.onError(th3);
            }
        }

        @Override // o7.o
        @m7.f
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f75329e;
            if (it != null) {
                R r9 = (R) io.reactivex.internal.functions.b.g(it.next(), "The iterator returned a null value");
                if (!it.hasNext()) {
                    this.f75329e = null;
                }
                return r9;
            }
            return null;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                this.f75331g = true;
                return 2;
            }
            return 0;
        }
    }

    public a0(io.reactivex.o0<T> o0Var, n7.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f75323a = o0Var;
        this.f75324b = oVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        this.f75323a.d(new a(g0Var, this.f75324b));
    }
}
