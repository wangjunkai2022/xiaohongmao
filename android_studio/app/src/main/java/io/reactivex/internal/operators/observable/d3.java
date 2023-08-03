package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableSingleMaybe.java */
/* loaded from: classes3.dex */
public final class d3<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f73989a;

    /* compiled from: ObservableSingleMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73990a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73991b;

        /* renamed from: c  reason: collision with root package name */
        T f73992c;

        /* renamed from: d  reason: collision with root package name */
        boolean f73993d;

        a(io.reactivex.t<? super T> tVar) {
            this.f73990a = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73991b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73991b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f73993d) {
                return;
            }
            this.f73993d = true;
            T t9 = this.f73992c;
            this.f73992c = null;
            if (t9 == null) {
                this.f73990a.onComplete();
            } else {
                this.f73990a.onSuccess(t9);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f73993d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f73993d = true;
            this.f73990a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f73993d) {
                return;
            }
            if (this.f73992c != null) {
                this.f73993d = true;
                this.f73991b.dispose();
                this.f73990a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f73992c = t9;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73991b, cVar)) {
                this.f73991b = cVar;
                this.f73990a.onSubscribe(this);
            }
        }
    }

    public d3(io.reactivex.e0<T> e0Var) {
        this.f73989a = e0Var;
    }

    @Override // io.reactivex.q
    public void q1(io.reactivex.t<? super T> tVar) {
        this.f73989a.subscribe(new a(tVar));
    }
}
