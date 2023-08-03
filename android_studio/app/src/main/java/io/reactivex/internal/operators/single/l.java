package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: SingleDetach.java */
/* loaded from: classes4.dex */
public final class l<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75431a;

    /* compiled from: SingleDetach.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.l0<? super T> f75432a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f75433b;

        a(io.reactivex.l0<? super T> l0Var) {
            this.f75432a = l0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75432a = null;
            this.f75433b.dispose();
            this.f75433b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75433b.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75433b = DisposableHelper.DISPOSED;
            io.reactivex.l0<? super T> l0Var = this.f75432a;
            if (l0Var != null) {
                this.f75432a = null;
                l0Var.onError(th);
            }
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75433b, cVar)) {
                this.f75433b = cVar;
                this.f75432a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75433b = DisposableHelper.DISPOSED;
            io.reactivex.l0<? super T> l0Var = this.f75432a;
            if (l0Var != null) {
                this.f75432a = null;
                l0Var.onSuccess(t9);
            }
        }
    }

    public l(io.reactivex.o0<T> o0Var) {
        this.f75431a = o0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75431a.d(new a(l0Var));
    }
}
