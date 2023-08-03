package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;

/* compiled from: ObservableDelaySubscriptionOther.java */
/* loaded from: classes4.dex */
public final class h0<T, U> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T> f79487a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<U> f79488b;

    /* compiled from: ObservableDelaySubscriptionOther.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.n0<U> {

        /* renamed from: a  reason: collision with root package name */
        final SequentialDisposable f79489a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79490b;

        /* renamed from: c  reason: collision with root package name */
        boolean f79491c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableDelaySubscriptionOther.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.h0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public final class C0671a implements io.reactivex.rxjava3.core.n0<T> {
            C0671a() {
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                a.this.f79490b.onComplete();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable e4) {
                a.this.f79490b.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(T value) {
                a.this.f79490b.onNext(value);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                a.this.f79489a.update(d4);
            }
        }

        a(SequentialDisposable serial, io.reactivex.rxjava3.core.n0<? super T> child) {
            this.f79489a = serial;
            this.f79490b = child;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79491c) {
                return;
            }
            this.f79491c = true;
            h0.this.f79487a.a(new C0671a());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (this.f79491c) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return;
            }
            this.f79491c = true;
            this.f79490b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(U t9) {
            onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f79489a.update(d4);
        }
    }

    public h0(io.reactivex.rxjava3.core.l0<? extends T> main, io.reactivex.rxjava3.core.l0<U> other) {
        this.f79487a = main;
        this.f79488b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(final io.reactivex.rxjava3.core.n0<? super T> child) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        child.onSubscribe(sequentialDisposable);
        this.f79488b.a(new a(sequentialDisposable, child));
    }
}
