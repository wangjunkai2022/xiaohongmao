package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.CancellableDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableCreate.java */
/* loaded from: classes4.dex */
public final class g extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.e f76609a;

    /* compiled from: CompletableCreate.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.c, io.reactivex.rxjava3.disposables.f {

        /* renamed from: b  reason: collision with root package name */
        private static final long f76610b = -2467358622224974244L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76611a;

        a(io.reactivex.rxjava3.core.d downstream) {
            this.f76611a = downstream;
        }

        @Override // io.reactivex.rxjava3.core.c
        public boolean a(Throwable t9) {
            io.reactivex.rxjava3.disposables.f andSet;
            if (t9 == null) {
                t9 = io.reactivex.rxjava3.internal.util.g.b("onError called with a null Throwable.");
            }
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return false;
            }
            try {
                this.f76611a.onError(t9);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.c
        public void b(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.set(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.c
        public void c(q7.f c10) {
            b(new CancellableDisposable(c10));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.c, io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.c
        public void onComplete() {
            io.reactivex.rxjava3.disposables.f andSet;
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                this.f76611a.onComplete();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.c
        public void onError(Throwable t9) {
            if (a(t9)) {
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    public g(io.reactivex.rxjava3.core.e source) {
        this.f76609a = source;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        try {
            this.f76609a.a(aVar);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            aVar.onError(th);
        }
    }
}
