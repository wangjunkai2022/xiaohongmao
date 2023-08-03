package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleUnsubscribeOn.java */
/* loaded from: classes4.dex */
public final class w0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75541a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f75542b;

    /* compiled from: SingleUnsubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f75543d = 3256698449646456986L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75544a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f75545b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f75546c;

        a(io.reactivex.l0<? super T> l0Var, io.reactivex.h0 h0Var) {
            this.f75544a = l0Var;
            this.f75545b = h0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            io.reactivex.disposables.c andSet = getAndSet(disposableHelper);
            if (andSet != disposableHelper) {
                this.f75546c = andSet;
                this.f75545b.f(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75544a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f75544a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75544a.onSuccess(t9);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f75546c.dispose();
        }
    }

    public w0(io.reactivex.o0<T> o0Var, io.reactivex.h0 h0Var) {
        this.f75541a = o0Var;
        this.f75542b = h0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75541a.d(new a(l0Var, this.f75542b));
    }
}
