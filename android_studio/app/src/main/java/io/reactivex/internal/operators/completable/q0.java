package io.reactivex.internal.operators.completable;

import java.util.concurrent.Callable;

/* compiled from: CompletableToSingle.java */
/* loaded from: classes3.dex */
public final class q0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71443a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends T> f71444b;

    /* renamed from: c  reason: collision with root package name */
    final T f71445c;

    /* compiled from: CompletableToSingle.java */
    /* loaded from: classes3.dex */
    final class a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.l0<? super T> f71446a;

        a(io.reactivex.l0<? super T> l0Var) {
            this.f71446a = l0Var;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            T call;
            q0 q0Var = q0.this;
            Callable<? extends T> callable = q0Var.f71444b;
            if (callable != null) {
                try {
                    call = callable.call();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f71446a.onError(th);
                    return;
                }
            } else {
                call = q0Var.f71445c;
            }
            if (call == null) {
                this.f71446a.onError(new NullPointerException("The value supplied is null"));
            } else {
                this.f71446a.onSuccess(call);
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71446a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71446a.onSubscribe(cVar);
        }
    }

    public q0(io.reactivex.g gVar, Callable<? extends T> callable, T t9) {
        this.f71443a = gVar;
        this.f71445c = t9;
        this.f71444b = callable;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f71443a.d(new a(l0Var));
    }
}
