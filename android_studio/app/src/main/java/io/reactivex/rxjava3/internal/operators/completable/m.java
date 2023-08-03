package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: CompletableDoOnEvent.java */
/* loaded from: classes4.dex */
public final class m extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76672a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super Throwable> f76673b;

    /* compiled from: CompletableDoOnEvent.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.d f76674a;

        a(io.reactivex.rxjava3.core.d observer) {
            this.f76674a = observer;
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            try {
                m.this.f76673b.accept(null);
                this.f76674a.onComplete();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76674a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                m.this.f76673b.accept(e4);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                e4 = new CompositeException(e4, th);
            }
            this.f76674a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(final io.reactivex.rxjava3.disposables.f d4) {
            this.f76674a.onSubscribe(d4);
        }
    }

    public m(final io.reactivex.rxjava3.core.g source, final q7.g<? super Throwable> onEvent) {
        this.f76672a = source;
        this.f76673b = onEvent;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        this.f76672a.d(new a(observer));
    }
}
