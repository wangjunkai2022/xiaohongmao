package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.v0;

/* compiled from: CompletableFromSingle.java */
/* loaded from: classes4.dex */
public final class v<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final v0<T> f76735a;

    /* compiled from: CompletableFromSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76736a;

        a(io.reactivex.rxjava3.core.d co) {
            this.f76736a = co;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76736a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76736a.onSubscribe(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f76736a.onComplete();
        }
    }

    public v(v0<T> single) {
        this.f76735a = single;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        this.f76735a.d(new a(observer));
    }
}
