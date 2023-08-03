package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: CompletableDisposeOn.java */
/* loaded from: classes3.dex */
public final class k extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71387a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f71388b;

    /* compiled from: CompletableDisposeOn.java */
    /* loaded from: classes3.dex */
    static final class a implements io.reactivex.d, io.reactivex.disposables.c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71389a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f71390b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f71391c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f71392d;

        a(io.reactivex.d dVar, io.reactivex.h0 h0Var) {
            this.f71389a = dVar;
            this.f71390b = h0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71392d = true;
            this.f71390b.f(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71392d;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f71392d) {
                return;
            }
            this.f71389a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f71392d) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f71389a.onError(th);
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f71391c, cVar)) {
                this.f71391c = cVar;
                this.f71389a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f71391c.dispose();
            this.f71391c = DisposableHelper.DISPOSED;
        }
    }

    public k(io.reactivex.g gVar, io.reactivex.h0 h0Var) {
        this.f71387a = gVar;
        this.f71388b = h0Var;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71387a.d(new a(dVar, this.f71388b));
    }
}
