package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableTakeLastOne.java */
/* loaded from: classes3.dex */
public final class p3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableTakeLastOne.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74584a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f74585b;

        /* renamed from: c  reason: collision with root package name */
        T f74586c;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f74584a = g0Var;
        }

        void a() {
            T t9 = this.f74586c;
            if (t9 != null) {
                this.f74586c = null;
                this.f74584a.onNext(t9);
            }
            this.f74584a.onComplete();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74586c = null;
            this.f74585b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74585b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74586c = null;
            this.f74584a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74586c = t9;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74585b, cVar)) {
                this.f74585b = cVar;
                this.f74584a.onSubscribe(this);
            }
        }
    }

    public p3(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var));
    }
}
