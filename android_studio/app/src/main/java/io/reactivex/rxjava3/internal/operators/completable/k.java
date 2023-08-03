package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: CompletableDisposeOn.java */
/* loaded from: classes4.dex */
public final class k extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76644a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f76645b;

    /* compiled from: CompletableDisposeOn.java */
    /* loaded from: classes4.dex */
    static final class a implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76646a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f76647b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76648c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f76649d;

        a(io.reactivex.rxjava3.core.d observer, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f76646a = observer;
            this.f76647b = scheduler;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76649d = true;
            this.f76647b.f(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76649d;
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            if (this.f76649d) {
                return;
            }
            this.f76646a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f76649d) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            } else {
                this.f76646a.onError(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(final io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76648c, d4)) {
                this.f76648c = d4;
                this.f76646a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f76648c.dispose();
            this.f76648c = DisposableHelper.DISPOSED;
        }
    }

    public k(io.reactivex.rxjava3.core.g source, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f76644a = source;
        this.f76645b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        this.f76644a.d(new a(observer, this.f76645b));
    }
}
