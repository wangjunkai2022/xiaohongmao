package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: CompletableOnErrorComplete.java */
/* loaded from: classes4.dex */
public final class i0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76632a;

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super Throwable> f76633b;

    /* compiled from: CompletableOnErrorComplete.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.d f76634a;

        a(io.reactivex.rxjava3.core.d observer) {
            this.f76634a = observer;
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76634a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                if (i0.this.f76633b.test(e4)) {
                    this.f76634a.onComplete();
                } else {
                    this.f76634a.onError(e4);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76634a.onError(new CompositeException(e4, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76634a.onSubscribe(d4);
        }
    }

    public i0(io.reactivex.rxjava3.core.g source, q7.r<? super Throwable> predicate) {
        this.f76632a = source;
        this.f76633b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        this.f76632a.d(new a(observer));
    }
}
