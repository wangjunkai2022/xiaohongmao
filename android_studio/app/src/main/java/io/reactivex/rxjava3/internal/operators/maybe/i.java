package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.CancellableDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeCreate.java */
/* loaded from: classes4.dex */
public final class i<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.z<T> f78609a;

    /* compiled from: MaybeCreate.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.x<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: b  reason: collision with root package name */
        private static final long f78610b = -2467358622224974244L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78611a;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78611a = downstream;
        }

        @Override // io.reactivex.rxjava3.core.x
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
                this.f78611a.onError(t9);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.x
        public void b(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.set(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.x
        public void c(q7.f c10) {
            b(new CancellableDisposable(c10));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.x, io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.x
        public void onComplete() {
            io.reactivex.rxjava3.disposables.f andSet;
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                this.f78611a.onComplete();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.x
        public void onError(Throwable t9) {
            if (a(t9)) {
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.x
        public void onSuccess(T value) {
            io.reactivex.rxjava3.disposables.f andSet;
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                if (value == null) {
                    this.f78611a.onError(io.reactivex.rxjava3.internal.util.g.b("onSuccess called with a null value."));
                } else {
                    this.f78611a.onSuccess(value);
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

    public i(io.reactivex.rxjava3.core.z<T> source) {
        this.f78609a = source;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        try {
            this.f78609a.a(aVar);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            aVar.onError(th);
        }
    }
}
