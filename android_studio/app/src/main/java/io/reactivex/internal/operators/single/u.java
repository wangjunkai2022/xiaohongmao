package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;

/* compiled from: SingleDoOnTerminate.java */
/* loaded from: classes4.dex */
public final class u<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75523a;

    /* renamed from: b  reason: collision with root package name */
    final n7.a f75524b;

    /* compiled from: SingleDoOnTerminate.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75525a;

        a(io.reactivex.l0<? super T> l0Var) {
            this.f75525a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            try {
                u.this.f75524b.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f75525a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75525a.onSubscribe(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                u.this.f75524b.run();
                this.f75525a.onSuccess(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75525a.onError(th);
            }
        }
    }

    public u(io.reactivex.o0<T> o0Var, n7.a aVar) {
        this.f75523a = o0Var;
        this.f75524b = aVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75523a.d(new a(l0Var));
    }
}
