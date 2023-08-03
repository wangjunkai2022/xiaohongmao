package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableReduceMaybe.java */
/* loaded from: classes3.dex */
public final class l2<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74367a;

    /* renamed from: b  reason: collision with root package name */
    final n7.c<T, T, T> f74368b;

    /* compiled from: ObservableReduceMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f74369a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<T, T, T> f74370b;

        /* renamed from: c  reason: collision with root package name */
        boolean f74371c;

        /* renamed from: d  reason: collision with root package name */
        T f74372d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f74373e;

        a(io.reactivex.t<? super T> tVar, n7.c<T, T, T> cVar) {
            this.f74369a = tVar;
            this.f74370b = cVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74373e.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74373e.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74371c) {
                return;
            }
            this.f74371c = true;
            T t9 = this.f74372d;
            this.f74372d = null;
            if (t9 != null) {
                this.f74369a.onSuccess(t9);
            } else {
                this.f74369a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74371c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74371c = true;
            this.f74372d = null;
            this.f74369a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74371c) {
                return;
            }
            T t10 = this.f74372d;
            if (t10 == null) {
                this.f74372d = t9;
                return;
            }
            try {
                this.f74372d = (T) io.reactivex.internal.functions.b.g(this.f74370b.apply(t10, t9), "The reducer returned a null value");
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74373e.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74373e, cVar)) {
                this.f74373e = cVar;
                this.f74369a.onSubscribe(this);
            }
        }
    }

    public l2(io.reactivex.e0<T> e0Var, n7.c<T, T, T> cVar) {
        this.f74367a = e0Var;
        this.f74368b = cVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f74367a.subscribe(new a(tVar, this.f74368b));
    }
}
