package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;

/* compiled from: SingleDoOnEvent.java */
/* loaded from: classes4.dex */
public final class r<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75484a;

    /* renamed from: b  reason: collision with root package name */
    final n7.b<? super T, ? super Throwable> f75485b;

    /* compiled from: SingleDoOnEvent.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.l0<? super T> f75486a;

        a(io.reactivex.l0<? super T> l0Var) {
            this.f75486a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            try {
                r.this.f75485b.accept(null, th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f75486a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75486a.onSubscribe(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                r.this.f75485b.accept(t9, null);
                this.f75486a.onSuccess(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75486a.onError(th);
            }
        }
    }

    public r(io.reactivex.o0<T> o0Var, n7.b<? super T, ? super Throwable> bVar) {
        this.f75484a = o0Var;
        this.f75485b = bVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75484a.d(new a(l0Var));
    }
}
