package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: CompletableDetach.java */
/* loaded from: classes4.dex */
public final class j extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76636a;

    /* compiled from: CompletableDetach.java */
    /* loaded from: classes4.dex */
    static final class a implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.rxjava3.core.d f76637a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76638b;

        a(io.reactivex.rxjava3.core.d downstream) {
            this.f76637a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76637a = null;
            this.f76638b.dispose();
            this.f76638b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76638b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76638b = DisposableHelper.DISPOSED;
            io.reactivex.rxjava3.core.d dVar = this.f76637a;
            if (dVar != null) {
                this.f76637a = null;
                dVar.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76638b = DisposableHelper.DISPOSED;
            io.reactivex.rxjava3.core.d dVar = this.f76637a;
            if (dVar != null) {
                this.f76637a = null;
                dVar.onError(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76638b, d4)) {
                this.f76638b = d4;
                this.f76637a.onSubscribe(this);
            }
        }
    }

    public j(io.reactivex.rxjava3.core.g source) {
        this.f76636a = source;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f76636a.d(new a(observer));
    }
}
