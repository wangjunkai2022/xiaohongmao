package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleCreate.java */
/* loaded from: classes4.dex */
public final class d<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.m0<T> f75361a;

    /* compiled from: SingleCreate.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.k0<T>, io.reactivex.disposables.c {

        /* renamed from: b  reason: collision with root package name */
        private static final long f75362b = -2467358622224974244L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75363a;

        a(io.reactivex.l0<? super T> l0Var) {
            this.f75363a = l0Var;
        }

        @Override // io.reactivex.k0
        public boolean a(Throwable th) {
            io.reactivex.disposables.c andSet;
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return false;
            }
            try {
                this.f75363a.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.k0
        public void b(io.reactivex.disposables.c cVar) {
            DisposableHelper.set(this, cVar);
        }

        @Override // io.reactivex.k0
        public void c(n7.f fVar) {
            b(new CancellableDisposable(fVar));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.k0, io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.k0
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.k0
        public void onSuccess(T t9) {
            io.reactivex.disposables.c andSet;
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                if (t9 == null) {
                    this.f75363a.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.f75363a.onSuccess(t9);
                }
                if (andSet != null) {
                    andSet.dispose();
                }
            } catch (Throwable th) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th;
            }
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    public d(io.reactivex.m0<T> m0Var) {
        this.f75361a = m0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        a aVar = new a(l0Var);
        l0Var.onSubscribe(aVar);
        try {
            this.f75361a.a(aVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            aVar.onError(th);
        }
    }
}
