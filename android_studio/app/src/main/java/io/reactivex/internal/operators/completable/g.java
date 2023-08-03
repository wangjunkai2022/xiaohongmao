package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableCreate.java */
/* loaded from: classes3.dex */
public final class g extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e f71342a;

    /* compiled from: CompletableCreate.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.c, io.reactivex.disposables.c {

        /* renamed from: b  reason: collision with root package name */
        private static final long f71343b = -2467358622224974244L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71344a;

        a(io.reactivex.d dVar) {
            this.f71344a = dVar;
        }

        @Override // io.reactivex.c
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
                this.f71344a.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.c
        public void b(io.reactivex.disposables.c cVar) {
            DisposableHelper.set(this, cVar);
        }

        @Override // io.reactivex.c
        public void c(n7.f fVar) {
            b(new CancellableDisposable(fVar));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.c, io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.c
        public void onComplete() {
            io.reactivex.disposables.c andSet;
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                this.f71344a.onComplete();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.c
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    public g(io.reactivex.e eVar) {
        this.f71342a = eVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        try {
            this.f71342a.a(aVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            aVar.onError(th);
        }
    }
}
