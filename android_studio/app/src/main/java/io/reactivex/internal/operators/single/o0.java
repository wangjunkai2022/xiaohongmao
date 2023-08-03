package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;

/* compiled from: SingleOnErrorReturn.java */
/* loaded from: classes4.dex */
public final class o0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75459a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends T> f75460b;

    /* renamed from: c  reason: collision with root package name */
    final T f75461c;

    /* compiled from: SingleOnErrorReturn.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.l0<? super T> f75462a;

        a(io.reactivex.l0<? super T> l0Var) {
            this.f75462a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            T apply;
            o0 o0Var = o0.this;
            n7.o<? super Throwable, ? extends T> oVar = o0Var.f75460b;
            if (oVar != null) {
                try {
                    apply = oVar.apply(th);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f75462a.onError(new CompositeException(th, th2));
                    return;
                }
            } else {
                apply = o0Var.f75461c;
            }
            if (apply == null) {
                NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
                nullPointerException.initCause(th);
                this.f75462a.onError(nullPointerException);
                return;
            }
            this.f75462a.onSuccess(apply);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75462a.onSubscribe(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75462a.onSuccess(t9);
        }
    }

    public o0(io.reactivex.o0<? extends T> o0Var, n7.o<? super Throwable, ? extends T> oVar, T t9) {
        this.f75459a = o0Var;
        this.f75460b = oVar;
        this.f75461c = t9;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75459a.d(new a(l0Var));
    }
}
