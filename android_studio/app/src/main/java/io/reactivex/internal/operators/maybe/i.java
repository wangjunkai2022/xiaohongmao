package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeCreate.java */
/* loaded from: classes3.dex */
public final class i<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.u<T> f73328a;

    /* compiled from: MaybeCreate.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.s<T>, io.reactivex.disposables.c {

        /* renamed from: b  reason: collision with root package name */
        private static final long f73329b = -2467358622224974244L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73330a;

        a(io.reactivex.t<? super T> tVar) {
            this.f73330a = tVar;
        }

        @Override // io.reactivex.s
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
                this.f73330a.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.s
        public void b(io.reactivex.disposables.c cVar) {
            DisposableHelper.set(this, cVar);
        }

        @Override // io.reactivex.s
        public void c(n7.f fVar) {
            b(new CancellableDisposable(fVar));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.s, io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.s
        public void onComplete() {
            io.reactivex.disposables.c andSet;
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                this.f73330a.onComplete();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.s
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.s
        public void onSuccess(T t9) {
            io.reactivex.disposables.c andSet;
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                if (t9 == null) {
                    this.f73330a.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.f73330a.onSuccess(t9);
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

    public i(io.reactivex.u<T> uVar) {
        this.f73328a = uVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        a aVar = new a(tVar);
        tVar.onSubscribe(aVar);
        try {
            this.f73328a.a(aVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            aVar.onError(th);
        }
    }
}
