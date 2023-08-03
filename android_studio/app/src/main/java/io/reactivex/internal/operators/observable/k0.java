package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: ObservableDistinct.java */
/* loaded from: classes3.dex */
public final class k0<T, K> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, K> f74324b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<? extends Collection<? super K>> f74325c;

    /* compiled from: ObservableDistinct.java */
    /* loaded from: classes3.dex */
    static final class a<T, K> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final Collection<? super K> f74326f;

        /* renamed from: g  reason: collision with root package name */
        final n7.o<? super T, K> f74327g;

        a(io.reactivex.g0<? super T> g0Var, n7.o<? super T, K> oVar, Collection<? super K> collection) {
            super(g0Var);
            this.f74327g = oVar;
            this.f74326f = collection;
        }

        @Override // io.reactivex.internal.observers.a, o7.o
        public void clear() {
            this.f74326f.clear();
            super.clear();
        }

        @Override // io.reactivex.internal.observers.a, io.reactivex.g0
        public void onComplete() {
            if (this.f71214d) {
                return;
            }
            this.f71214d = true;
            this.f74326f.clear();
            this.f71211a.onComplete();
        }

        @Override // io.reactivex.internal.observers.a, io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f71214d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f71214d = true;
            this.f74326f.clear();
            this.f71211a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f71214d) {
                return;
            }
            if (this.f71215e == 0) {
                try {
                    if (this.f74326f.add(io.reactivex.internal.functions.b.g(this.f74327g.apply(t9), "The keySelector returned a null key"))) {
                        this.f71211a.onNext(t9);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    f(th);
                    return;
                }
            }
            this.f71211a.onNext(null);
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll;
            do {
                poll = this.f71213c.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f74326f.add((Object) io.reactivex.internal.functions.b.g(this.f74327g.apply(poll), "The keySelector returned a null key")));
            return poll;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public k0(io.reactivex.e0<T> e0Var, n7.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        super(e0Var);
        this.f74324b = oVar;
        this.f74325c = callable;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        try {
            this.f73827a.subscribe(new a(g0Var, this.f74324b, (Collection) io.reactivex.internal.functions.b.g(this.f74325c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
