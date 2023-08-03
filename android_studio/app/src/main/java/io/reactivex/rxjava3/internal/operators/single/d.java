package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.CancellableDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleCreate.java */
/* loaded from: classes4.dex */
public final class d<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.t0<T> f80754a;

    /* compiled from: SingleCreate.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.r0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: b  reason: collision with root package name */
        private static final long f80755b = -2467358622224974244L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80756a;

        a(io.reactivex.rxjava3.core.s0<? super T> downstream) {
            this.f80756a = downstream;
        }

        @Override // io.reactivex.rxjava3.core.r0
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
                this.f80756a.onError(t9);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r0
        public void b(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.set(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.r0
        public void c(q7.f c10) {
            b(new CancellableDisposable(c10));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.r0, io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.r0
        public void onError(Throwable t9) {
            if (a(t9)) {
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.r0
        public void onSuccess(T value) {
            io.reactivex.rxjava3.disposables.f andSet;
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                if (value == null) {
                    this.f80756a.onError(io.reactivex.rxjava3.internal.util.g.b("onSuccess called with a null value."));
                } else {
                    this.f80756a.onSuccess(value);
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

    public d(io.reactivex.rxjava3.core.t0<T> source) {
        this.f80754a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        try {
            this.f80754a.a(aVar);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            aVar.onError(th);
        }
    }
}
