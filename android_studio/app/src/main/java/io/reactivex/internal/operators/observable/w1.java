package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.Callable;

/* compiled from: ObservableMapNotification.java */
/* loaded from: classes3.dex */
public final class w1<T, R> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.e0<? extends R>> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.e0<? extends R>> f74951b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends io.reactivex.e0<? extends R>> f74952c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<? extends io.reactivex.e0<? extends R>> f74953d;

    /* compiled from: ObservableMapNotification.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.e0<? extends R>> f74954a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<? extends R>> f74955b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends io.reactivex.e0<? extends R>> f74956c;

        /* renamed from: d  reason: collision with root package name */
        final Callable<? extends io.reactivex.e0<? extends R>> f74957d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f74958e;

        a(io.reactivex.g0<? super io.reactivex.e0<? extends R>> g0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, n7.o<? super Throwable, ? extends io.reactivex.e0<? extends R>> oVar2, Callable<? extends io.reactivex.e0<? extends R>> callable) {
            this.f74954a = g0Var;
            this.f74955b = oVar;
            this.f74956c = oVar2;
            this.f74957d = callable;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74958e.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74958e.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            try {
                this.f74954a.onNext((io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74957d.call(), "The onComplete ObservableSource returned is null"));
                this.f74954a.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74954a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            try {
                this.f74954a.onNext((io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74956c.apply(th), "The onError ObservableSource returned is null"));
                this.f74954a.onComplete();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f74954a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            try {
                this.f74954a.onNext((io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74955b.apply(t9), "The onNext ObservableSource returned is null"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74954a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74958e, cVar)) {
                this.f74958e = cVar;
                this.f74954a.onSubscribe(this);
            }
        }
    }

    public w1(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, n7.o<? super Throwable, ? extends io.reactivex.e0<? extends R>> oVar2, Callable<? extends io.reactivex.e0<? extends R>> callable) {
        super(e0Var);
        this.f74951b = oVar;
        this.f74952c = oVar2;
        this.f74953d = callable;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super io.reactivex.e0<? extends R>> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74951b, this.f74952c, this.f74953d));
    }
}
