package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableFlattenIterable.java */
/* loaded from: classes3.dex */
public final class b1<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends Iterable<? extends R>> f73895b;

    /* compiled from: ObservableFlattenIterable.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f73896a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends Iterable<? extends R>> f73897b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73898c;

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f73896a = g0Var;
            this.f73897b = oVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73898c.dispose();
            this.f73898c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73898c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            io.reactivex.disposables.c cVar = this.f73898c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper) {
                return;
            }
            this.f73898c = disposableHelper;
            this.f73896a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.disposables.c cVar = this.f73898c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f73898c = disposableHelper;
            this.f73896a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f73898c == DisposableHelper.DISPOSED) {
                return;
            }
            try {
                io.reactivex.g0<? super R> g0Var = this.f73896a;
                for (R r9 : this.f73897b.apply(t9)) {
                    try {
                        try {
                            g0Var.onNext((Object) io.reactivex.internal.functions.b.g(r9, "The iterator returned a null value"));
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.f73898c.dispose();
                            onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f73898c.dispose();
                        onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f73898c.dispose();
                onError(th3);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73898c, cVar)) {
                this.f73898c = cVar;
                this.f73896a.onSubscribe(this);
            }
        }
    }

    public b1(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends Iterable<? extends R>> oVar) {
        super(e0Var);
        this.f73895b = oVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f73895b));
    }
}
