package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;

/* compiled from: ObservableFromIterable.java */
/* loaded from: classes3.dex */
public final class f1<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends T> f74072a;

    /* compiled from: ObservableFromIterable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.internal.observers.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74073a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<? extends T> f74074b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f74075c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74076d;

        /* renamed from: e  reason: collision with root package name */
        boolean f74077e;

        /* renamed from: f  reason: collision with root package name */
        boolean f74078f;

        a(io.reactivex.g0<? super T> g0Var, Iterator<? extends T> it) {
            this.f74073a = g0Var;
            this.f74074b = it;
        }

        void a() {
            while (!isDisposed()) {
                try {
                    this.f74073a.onNext(io.reactivex.internal.functions.b.g(this.f74074b.next(), "The iterator returned a null value"));
                    if (isDisposed()) {
                        return;
                    }
                    try {
                        if (!this.f74074b.hasNext()) {
                            if (isDisposed()) {
                                return;
                            }
                            this.f74073a.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f74073a.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f74073a.onError(th2);
                    return;
                }
            }
        }

        @Override // o7.o
        public void clear() {
            this.f74077e = true;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74075c = true;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74075c;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f74077e;
        }

        @Override // o7.o
        @m7.f
        public T poll() {
            if (this.f74077e) {
                return null;
            }
            if (this.f74078f) {
                if (!this.f74074b.hasNext()) {
                    this.f74077e = true;
                    return null;
                }
            } else {
                this.f74078f = true;
            }
            return (T) io.reactivex.internal.functions.b.g(this.f74074b.next(), "The iterator returned a null value");
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 1) != 0) {
                this.f74076d = true;
                return 1;
            }
            return 0;
        }
    }

    public f1(Iterable<? extends T> iterable) {
        this.f74072a = iterable;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        try {
            Iterator<? extends T> it = this.f74072a.iterator();
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete(g0Var);
                    return;
                }
                a aVar = new a(g0Var, it);
                g0Var.onSubscribe(aVar);
                if (aVar.f74076d) {
                    return;
                }
                aVar.a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, g0Var);
        }
    }
}
