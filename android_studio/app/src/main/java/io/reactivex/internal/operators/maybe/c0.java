package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.Iterator;

/* compiled from: MaybeFlatMapIterableObservable.java */
/* loaded from: classes3.dex */
public final class c0<T, R> extends io.reactivex.z<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73214a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends Iterable<? extends R>> f73215b;

    /* compiled from: MaybeFlatMapIterableObservable.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends io.reactivex.internal.observers.b<R> implements io.reactivex.t<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f73216a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends Iterable<? extends R>> f73217b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73218c;

        /* renamed from: d  reason: collision with root package name */
        volatile Iterator<? extends R> f73219d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f73220e;

        /* renamed from: f  reason: collision with root package name */
        boolean f73221f;

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f73216a = g0Var;
            this.f73217b = oVar;
        }

        @Override // o7.o
        public void clear() {
            this.f73219d = null;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73220e = true;
            this.f73218c.dispose();
            this.f73218c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73220e;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f73219d == null;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73216a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73218c = DisposableHelper.DISPOSED;
            this.f73216a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73218c, cVar)) {
                this.f73218c = cVar;
                this.f73216a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            io.reactivex.g0<? super R> g0Var = this.f73216a;
            try {
                Iterator<? extends R> it = this.f73217b.apply(t9).iterator();
                if (!it.hasNext()) {
                    g0Var.onComplete();
                    return;
                }
                this.f73219d = it;
                if (this.f73221f) {
                    g0Var.onNext(null);
                    g0Var.onComplete();
                    return;
                }
                while (!this.f73220e) {
                    try {
                        g0Var.onNext((R) it.next());
                        if (this.f73220e) {
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
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                g0Var.onError(th3);
            }
        }

        @Override // o7.o
        @m7.f
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f73219d;
            if (it != null) {
                R r9 = (R) io.reactivex.internal.functions.b.g(it.next(), "The iterator returned a null value");
                if (!it.hasNext()) {
                    this.f73219d = null;
                }
                return r9;
            }
            return null;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                this.f73221f = true;
                return 2;
            }
            return 0;
        }
    }

    public c0(io.reactivex.w<T> wVar, n7.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f73214a = wVar;
        this.f73215b = oVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        this.f73214a.b(new a(g0Var, this.f73215b));
    }
}
