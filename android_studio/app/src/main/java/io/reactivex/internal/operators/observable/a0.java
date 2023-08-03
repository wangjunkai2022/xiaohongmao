package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableCount.java */
/* loaded from: classes3.dex */
public final class a0<T> extends io.reactivex.internal.operators.observable.a<T, Long> {

    /* compiled from: ObservableCount.java */
    /* loaded from: classes3.dex */
    static final class a implements io.reactivex.g0<Object>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Long> f73828a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73829b;

        /* renamed from: c  reason: collision with root package name */
        long f73830c;

        a(io.reactivex.g0<? super Long> g0Var) {
            this.f73828a = g0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73829b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73829b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73828a.onNext(Long.valueOf(this.f73830c));
            this.f73828a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73828a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            this.f73830c++;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73829b, cVar)) {
                this.f73829b = cVar;
                this.f73828a.onSubscribe(this);
            }
        }
    }

    public a0(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super Long> g0Var) {
        this.f73827a.subscribe(new a(g0Var));
    }
}
