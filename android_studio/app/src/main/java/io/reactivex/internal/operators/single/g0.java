package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: SingleHide.java */
/* loaded from: classes4.dex */
public final class g0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75390a;

    /* compiled from: SingleHide.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75391a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f75392b;

        a(io.reactivex.l0<? super T> l0Var) {
            this.f75391a = l0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75392b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75392b.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75391a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75392b, cVar)) {
                this.f75392b = cVar;
                this.f75391a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75391a.onSuccess(t9);
        }
    }

    public g0(io.reactivex.o0<? extends T> o0Var) {
        this.f75390a = o0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75390a.d(new a(l0Var));
    }
}
