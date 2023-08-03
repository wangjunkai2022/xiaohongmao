package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableCount.java */
/* loaded from: classes4.dex */
public final class a0<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, Long> {

    /* compiled from: ObservableCount.java */
    /* loaded from: classes4.dex */
    static final class a implements io.reactivex.rxjava3.core.n0<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super Long> f79142a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79143b;

        /* renamed from: c  reason: collision with root package name */
        long f79144c;

        a(io.reactivex.rxjava3.core.n0<? super Long> downstream) {
            this.f79142a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79143b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79143b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79142a.onNext(Long.valueOf(this.f79144c));
            this.f79142a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79142a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(Object t9) {
            this.f79144c++;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79143b, d4)) {
                this.f79143b = d4;
                this.f79142a.onSubscribe(this);
            }
        }
    }

    public a0(io.reactivex.rxjava3.core.l0<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super Long> t9) {
        this.f79141a.a(new a(t9));
    }
}
