package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleResumeNext.java */
/* loaded from: classes4.dex */
public final class p0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75469a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends io.reactivex.o0<? extends T>> f75470b;

    /* compiled from: SingleResumeNext.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75471c = -5314538511045349925L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75472a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends io.reactivex.o0<? extends T>> f75473b;

        a(io.reactivex.l0<? super T> l0Var, n7.o<? super Throwable, ? extends io.reactivex.o0<? extends T>> oVar) {
            this.f75472a = l0Var;
            this.f75473b = oVar;
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
            try {
                ((io.reactivex.o0) io.reactivex.internal.functions.b.g(this.f75473b.apply(th), "The nextFunction returned a null SingleSource.")).d(new io.reactivex.internal.observers.o(this, this.f75472a));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f75472a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f75472a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75472a.onSuccess(t9);
        }
    }

    public p0(io.reactivex.o0<? extends T> o0Var, n7.o<? super Throwable, ? extends io.reactivex.o0<? extends T>> oVar) {
        this.f75469a = o0Var;
        this.f75470b = oVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75469a.d(new a(l0Var, this.f75470b));
    }
}
