package io.reactivex.rxjava3.internal.operators.single;

/* compiled from: SingleDoOnSuccess.java */
/* loaded from: classes4.dex */
public final class u<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80929a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super T> f80930b;

    /* compiled from: SingleDoOnSuccess.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80931a;

        a(io.reactivex.rxjava3.core.s0<? super T> observer) {
            this.f80931a = observer;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80931a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80931a.onSubscribe(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                u.this.f80930b.accept(value);
                this.f80931a.onSuccess(value);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80931a.onError(th);
            }
        }
    }

    public u(io.reactivex.rxjava3.core.v0<T> source, q7.g<? super T> onSuccess) {
        this.f80929a = source;
        this.f80930b = onSuccess;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80929a.d(new a(observer));
    }
}
