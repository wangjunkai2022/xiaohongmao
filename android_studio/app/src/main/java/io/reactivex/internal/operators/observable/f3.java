package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableSkip.java */
/* loaded from: classes3.dex */
public final class f3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74091b;

    /* compiled from: ObservableSkip.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74092a;

        /* renamed from: b  reason: collision with root package name */
        long f74093b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74094c;

        a(io.reactivex.g0<? super T> g0Var, long j4) {
            this.f74092a = g0Var;
            this.f74093b = j4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74094c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74094c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74092a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74092a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            long j4 = this.f74093b;
            if (j4 != 0) {
                this.f74093b = j4 - 1;
            } else {
                this.f74092a.onNext(t9);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74094c, cVar)) {
                this.f74094c = cVar;
                this.f74092a.onSubscribe(this);
            }
        }
    }

    public f3(io.reactivex.e0<T> e0Var, long j4) {
        super(e0Var);
        this.f74091b = j4;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74091b));
    }
}
