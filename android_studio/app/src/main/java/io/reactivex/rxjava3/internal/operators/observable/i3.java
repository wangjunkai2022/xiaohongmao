package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableSkip.java */
/* loaded from: classes4.dex */
public final class i3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f79553b;

    /* compiled from: ObservableSkip.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79554a;

        /* renamed from: b  reason: collision with root package name */
        long f79555b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79556c;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, long n9) {
            this.f79554a = actual;
            this.f79555b = n9;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79556c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79556c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79554a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79554a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            long j4 = this.f79555b;
            if (j4 != 0) {
                this.f79555b = j4 - 1;
            } else {
                this.f79554a.onNext(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79556c, d4)) {
                this.f79556c = d4;
                this.f79554a.onSubscribe(this);
            }
        }
    }

    public i3(io.reactivex.rxjava3.core.l0<T> source, long n9) {
        super(source);
        this.f79553b = n9;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f79553b));
    }
}
