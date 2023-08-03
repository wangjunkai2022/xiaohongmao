package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableObserveOn.java */
/* loaded from: classes4.dex */
public final class h0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76614a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f76615b;

    /* compiled from: CompletableObserveOn.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76616d = 8571289934935992137L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76617a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f76618b;

        /* renamed from: c  reason: collision with root package name */
        Throwable f76619c;

        a(io.reactivex.rxjava3.core.d actual, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f76617a = actual;
            this.f76618b = scheduler;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            DisposableHelper.replace(this, this.f76618b.f(this));
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76619c = e4;
            DisposableHelper.replace(this, this.f76618b.f(this));
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f76617a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f76619c;
            if (th != null) {
                this.f76619c = null;
                this.f76617a.onError(th);
                return;
            }
            this.f76617a.onComplete();
        }
    }

    public h0(io.reactivex.rxjava3.core.g source, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f76614a = source;
        this.f76615b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        this.f76614a.d(new a(observer, this.f76615b));
    }
}
