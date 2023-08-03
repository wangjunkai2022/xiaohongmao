package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleObserveOn.java */
/* loaded from: classes4.dex */
public final class n0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75446a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f75447b;

    /* compiled from: SingleObserveOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f75448e = 3528003840217436037L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75449a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f75450b;

        /* renamed from: c  reason: collision with root package name */
        T f75451c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f75452d;

        a(io.reactivex.l0<? super T> l0Var, io.reactivex.h0 h0Var) {
            this.f75449a = l0Var;
            this.f75450b = h0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75452d = th;
            DisposableHelper.replace(this, this.f75450b.f(this));
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f75449a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75451c = t9;
            DisposableHelper.replace(this, this.f75450b.f(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f75452d;
            if (th != null) {
                this.f75449a.onError(th);
            } else {
                this.f75449a.onSuccess((T) this.f75451c);
            }
        }
    }

    public n0(io.reactivex.o0<T> o0Var, io.reactivex.h0 h0Var) {
        this.f75446a = o0Var;
        this.f75447b = h0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75446a.d(new a(l0Var, this.f75447b));
    }
}
