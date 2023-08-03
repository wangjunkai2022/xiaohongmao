package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableOnErrorReturn.java */
/* loaded from: classes3.dex */
public final class e2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends T> f74033b;

    /* compiled from: ObservableOnErrorReturn.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74034a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends T> f74035b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74036c;

        a(io.reactivex.g0<? super T> g0Var, n7.o<? super Throwable, ? extends T> oVar) {
            this.f74034a = g0Var;
            this.f74035b = oVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74036c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74036c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74034a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            try {
                T apply = this.f74035b.apply(th);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(th);
                    this.f74034a.onError(nullPointerException);
                    return;
                }
                this.f74034a.onNext(apply);
                this.f74034a.onComplete();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f74034a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74034a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74036c, cVar)) {
                this.f74036c = cVar;
                this.f74034a.onSubscribe(this);
            }
        }
    }

    public e2(io.reactivex.e0<T> e0Var, n7.o<? super Throwable, ? extends T> oVar) {
        super(e0Var);
        this.f74033b = oVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74033b));
    }
}
