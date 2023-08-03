package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableTakeWhile.java */
/* loaded from: classes4.dex */
public final class w3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f80374b;

    /* compiled from: ObservableTakeWhile.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80375a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f80376b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80377c;

        /* renamed from: d  reason: collision with root package name */
        boolean f80378d;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.r<? super T> predicate) {
            this.f80375a = actual;
            this.f80376b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80377c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80377c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80378d) {
                return;
            }
            this.f80378d = true;
            this.f80375a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f80378d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80378d = true;
            this.f80375a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80378d) {
                return;
            }
            try {
                if (!this.f80376b.test(t9)) {
                    this.f80378d = true;
                    this.f80377c.dispose();
                    this.f80375a.onComplete();
                    return;
                }
                this.f80375a.onNext(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80377c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80377c, d4)) {
                this.f80377c = d4;
                this.f80375a.onSubscribe(this);
            }
        }
    }

    public w3(io.reactivex.rxjava3.core.l0<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f80374b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(t9, this.f80374b));
    }
}
