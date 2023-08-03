package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: CompletableHide.java */
/* loaded from: classes4.dex */
public final class y extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76739a;

    /* compiled from: CompletableHide.java */
    /* loaded from: classes4.dex */
    static final class a implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76740a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76741b;

        a(io.reactivex.rxjava3.core.d downstream) {
            this.f76740a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76741b.dispose();
            this.f76741b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76741b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76740a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76740a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76741b, d4)) {
                this.f76741b = d4;
                this.f76740a.onSubscribe(this);
            }
        }
    }

    public y(io.reactivex.rxjava3.core.g source) {
        this.f76739a = source;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f76739a.d(new a(observer));
    }
}
