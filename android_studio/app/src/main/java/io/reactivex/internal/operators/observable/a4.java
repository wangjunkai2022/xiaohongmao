package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: ObservableToList.java */
/* loaded from: classes3.dex */
public final class a4<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f73879b;

    /* compiled from: ObservableToList.java */
    /* loaded from: classes3.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f73880a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73881b;

        /* renamed from: c  reason: collision with root package name */
        U f73882c;

        a(io.reactivex.g0<? super U> g0Var, U u9) {
            this.f73880a = g0Var;
            this.f73882c = u9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73881b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73881b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            U u9 = this.f73882c;
            this.f73882c = null;
            this.f73880a.onNext(u9);
            this.f73880a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73882c = null;
            this.f73880a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f73882c.add(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73881b, cVar)) {
                this.f73881b = cVar;
                this.f73880a.onSubscribe(this);
            }
        }
    }

    public a4(io.reactivex.e0<T> e0Var, int i4) {
        super(e0Var);
        this.f73879b = io.reactivex.internal.functions.a.f(i4);
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super U> g0Var) {
        try {
            this.f73827a.subscribe(new a(g0Var, (Collection) io.reactivex.internal.functions.b.g(this.f73879b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }

    public a4(io.reactivex.e0<T> e0Var, Callable<U> callable) {
        super(e0Var);
        this.f73879b = callable;
    }
}
