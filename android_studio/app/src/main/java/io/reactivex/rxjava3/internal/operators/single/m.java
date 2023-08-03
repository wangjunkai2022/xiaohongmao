package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: SingleDoAfterSuccess.java */
/* loaded from: classes4.dex */
public final class m<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80865a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super T> f80866b;

    /* compiled from: SingleDoAfterSuccess.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80867a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super T> f80868b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80869c;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, q7.g<? super T> onAfterSuccess) {
            this.f80867a = actual;
            this.f80868b = onAfterSuccess;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80869c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80869c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80867a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80869c, d4)) {
                this.f80869c = d4;
                this.f80867a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            this.f80867a.onSuccess(t9);
            try {
                this.f80868b.accept(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }
    }

    public m(io.reactivex.rxjava3.core.v0<T> source, q7.g<? super T> onAfterSuccess) {
        this.f80865a = source;
        this.f80866b = onAfterSuccess;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80865a.d(new a(observer, this.f80866b));
    }
}
