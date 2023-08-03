package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservablePublishSelector.java */
/* loaded from: classes3.dex */
public final class i2<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super io.reactivex.z<T>, ? extends io.reactivex.e0<R>> f74232b;

    /* compiled from: ObservablePublishSelector.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.subjects.e<T> f74233a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74234b;

        a(io.reactivex.subjects.e<T> eVar, AtomicReference<io.reactivex.disposables.c> atomicReference) {
            this.f74233a = eVar;
            this.f74234b = atomicReference;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74233a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74233a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74233a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f74234b, cVar);
        }
    }

    /* compiled from: ObservablePublishSelector.java */
    /* loaded from: classes3.dex */
    static final class b<T, R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<R>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f74235c = 854110278590336484L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74236a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f74237b;

        b(io.reactivex.g0<? super R> g0Var) {
            this.f74236a = g0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74237b.dispose();
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74237b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            DisposableHelper.dispose(this);
            this.f74236a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this);
            this.f74236a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(R r9) {
            this.f74236a.onNext(r9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74237b, cVar)) {
                this.f74237b = cVar;
                this.f74236a.onSubscribe(this);
            }
        }
    }

    public i2(io.reactivex.e0<T> e0Var, n7.o<? super io.reactivex.z<T>, ? extends io.reactivex.e0<R>> oVar) {
        super(e0Var);
        this.f74232b = oVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        io.reactivex.subjects.e i4 = io.reactivex.subjects.e.i();
        try {
            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74232b.apply(i4), "The selector returned a null ObservableSource");
            b bVar = new b(g0Var);
            e0Var.subscribe(bVar);
            this.f73827a.subscribe(new a(i4, bVar));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
