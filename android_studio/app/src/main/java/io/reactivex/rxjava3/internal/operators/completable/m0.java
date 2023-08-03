package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableSubscribeOn.java */
/* loaded from: classes4.dex */
public final class m0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76676a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f76677b;

    /* compiled from: CompletableSubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76678d = 7000911171163930287L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76679a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f76680b = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.g f76681c;

        a(io.reactivex.rxjava3.core.d actual, io.reactivex.rxjava3.core.g source) {
            this.f76679a = actual;
            this.f76681c = source;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f76680b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76679a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76679a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f76681c.d(this);
        }
    }

    public m0(io.reactivex.rxjava3.core.g source, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f76676a = source;
        this.f76677b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        a aVar = new a(observer, this.f76676a);
        observer.onSubscribe(aVar);
        aVar.f76680b.replace(this.f76677b.f(aVar));
    }
}
