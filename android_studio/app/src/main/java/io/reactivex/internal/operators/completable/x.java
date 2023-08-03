package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: CompletableHide.java */
/* loaded from: classes3.dex */
public final class x extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71467a;

    /* compiled from: CompletableHide.java */
    /* loaded from: classes3.dex */
    static final class a implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71468a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f71469b;

        a(io.reactivex.d dVar) {
            this.f71468a = dVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71469b.dispose();
            this.f71469b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71469b.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f71468a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71468a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f71469b, cVar)) {
                this.f71469b = cVar;
                this.f71468a.onSubscribe(this);
            }
        }
    }

    public x(io.reactivex.g gVar) {
        this.f71467a = gVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71467a.d(new a(dVar));
    }
}
