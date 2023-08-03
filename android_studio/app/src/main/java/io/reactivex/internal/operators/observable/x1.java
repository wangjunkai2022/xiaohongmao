package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableMaterialize.java */
/* loaded from: classes3.dex */
public final class x1<T> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.y<T>> {

    /* compiled from: ObservableMaterialize.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.y<T>> f74997a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f74998b;

        a(io.reactivex.g0<? super io.reactivex.y<T>> g0Var) {
            this.f74997a = g0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74998b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74998b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74997a.onNext(io.reactivex.y.a());
            this.f74997a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74997a.onNext(io.reactivex.y.b(th));
            this.f74997a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74997a.onNext(io.reactivex.y.c(t9));
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74998b, cVar)) {
                this.f74998b = cVar;
                this.f74997a.onSubscribe(this);
            }
        }
    }

    public x1(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super io.reactivex.y<T>> g0Var) {
        this.f73827a.subscribe(new a(g0Var));
    }
}
