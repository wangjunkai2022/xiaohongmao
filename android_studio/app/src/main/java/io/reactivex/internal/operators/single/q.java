package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;

/* compiled from: SingleDoOnError.java */
/* loaded from: classes4.dex */
public final class q<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75474a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super Throwable> f75475b;

    /* compiled from: SingleDoOnError.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.l0<? super T> f75476a;

        a(io.reactivex.l0<? super T> l0Var) {
            this.f75476a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            try {
                q.this.f75475b.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f75476a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75476a.onSubscribe(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75476a.onSuccess(t9);
        }
    }

    public q(io.reactivex.o0<T> o0Var, n7.g<? super Throwable> gVar) {
        this.f75474a = o0Var;
        this.f75475b = gVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75474a.d(new a(l0Var));
    }
}
