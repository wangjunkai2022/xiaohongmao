package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: ObservableToListSingle.java */
/* loaded from: classes3.dex */
public final class b4<T, U extends Collection<? super T>> extends io.reactivex.i0<U> implements o7.d<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f73919a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f73920b;

    /* compiled from: ObservableToListSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super U> f73921a;

        /* renamed from: b  reason: collision with root package name */
        U f73922b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73923c;

        a(io.reactivex.l0<? super U> l0Var, U u9) {
            this.f73921a = l0Var;
            this.f73922b = u9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73923c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73923c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            U u9 = this.f73922b;
            this.f73922b = null;
            this.f73921a.onSuccess(u9);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73922b = null;
            this.f73921a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f73922b.add(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73923c, cVar)) {
                this.f73923c = cVar;
                this.f73921a.onSubscribe(this);
            }
        }
    }

    public b4(io.reactivex.e0<T> e0Var, int i4) {
        this.f73919a = e0Var;
        this.f73920b = io.reactivex.internal.functions.a.f(i4);
    }

    @Override // o7.d
    public io.reactivex.z<U> a() {
        return io.reactivex.plugins.a.R(new a4(this.f73919a, this.f73920b));
    }

    @Override // io.reactivex.i0
    public void b1(io.reactivex.l0<? super U> l0Var) {
        try {
            this.f73919a.subscribe(new a(l0Var, (Collection) io.reactivex.internal.functions.b.g(this.f73920b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }

    public b4(io.reactivex.e0<T> e0Var, Callable<U> callable) {
        this.f73919a = e0Var;
        this.f73920b = callable;
    }
}
