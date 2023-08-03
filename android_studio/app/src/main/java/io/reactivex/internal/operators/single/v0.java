package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;

/* compiled from: SingleToObservable.java */
/* loaded from: classes4.dex */
public final class v0<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75537a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleToObservable.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends DeferredScalarDisposable<T> implements io.reactivex.l0<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f75538k = 3786543492451018833L;

        /* renamed from: j  reason: collision with root package name */
        io.reactivex.disposables.c f75539j;

        a(io.reactivex.g0<? super T> g0Var) {
            super(g0Var);
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.c
        public void dispose() {
            super.dispose();
            this.f75539j.dispose();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            error(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75539j, cVar)) {
                this.f75539j = cVar;
                this.f71190b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            complete(t9);
        }
    }

    public v0(io.reactivex.o0<? extends T> o0Var) {
        this.f75537a = o0Var;
    }

    public static <T> io.reactivex.l0<T> b(io.reactivex.g0<? super T> g0Var) {
        return new a(g0Var);
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f75537a.d(b(g0Var));
    }
}
