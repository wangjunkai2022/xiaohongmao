package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleSubscribeOn.java */
/* loaded from: classes4.dex */
public final class q0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75478a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f75479b;

    /* compiled from: SingleSubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f75480d = 7000911171163930287L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75481a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f75482b = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.o0<? extends T> f75483c;

        a(io.reactivex.l0<? super T> l0Var, io.reactivex.o0<? extends T> o0Var) {
            this.f75481a = l0Var;
            this.f75483c = o0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f75482b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75481a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75481a.onSuccess(t9);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f75483c.d(this);
        }
    }

    public q0(io.reactivex.o0<? extends T> o0Var, io.reactivex.h0 h0Var) {
        this.f75478a = o0Var;
        this.f75479b = h0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        a aVar = new a(l0Var, this.f75478a);
        l0Var.onSubscribe(aVar);
        aVar.f75482b.replace(this.f75479b.f(aVar));
    }
}
