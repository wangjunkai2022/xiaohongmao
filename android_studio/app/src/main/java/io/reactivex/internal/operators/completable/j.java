package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: CompletableDetach.java */
/* loaded from: classes3.dex */
public final class j extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71378a;

    /* compiled from: CompletableDetach.java */
    /* loaded from: classes3.dex */
    static final class a implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.d f71379a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f71380b;

        a(io.reactivex.d dVar) {
            this.f71379a = dVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71379a = null;
            this.f71380b.dispose();
            this.f71380b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71380b.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f71380b = DisposableHelper.DISPOSED;
            io.reactivex.d dVar = this.f71379a;
            if (dVar != null) {
                this.f71379a = null;
                dVar.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71380b = DisposableHelper.DISPOSED;
            io.reactivex.d dVar = this.f71379a;
            if (dVar != null) {
                this.f71379a = null;
                dVar.onError(th);
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f71380b, cVar)) {
                this.f71380b = cVar;
                this.f71379a.onSubscribe(this);
            }
        }
    }

    public j(io.reactivex.g gVar) {
        this.f71378a = gVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71378a.d(new a(dVar));
    }
}
