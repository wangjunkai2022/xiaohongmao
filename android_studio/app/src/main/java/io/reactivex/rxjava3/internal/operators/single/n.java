package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: SingleDoAfterTerminate.java */
/* loaded from: classes4.dex */
public final class n<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80871a;

    /* renamed from: b  reason: collision with root package name */
    final q7.a f80872b;

    /* compiled from: SingleDoAfterTerminate.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80873a;

        /* renamed from: b  reason: collision with root package name */
        final q7.a f80874b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80875c;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, q7.a onAfterTerminate) {
            this.f80873a = actual;
            this.f80874b = onAfterTerminate;
        }

        private void a() {
            try {
                this.f80874b.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80875c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80875c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80873a.onError(e4);
            a();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80875c, d4)) {
                this.f80875c = d4;
                this.f80873a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            this.f80873a.onSuccess(t9);
            a();
        }
    }

    public n(io.reactivex.rxjava3.core.v0<T> source, q7.a onAfterTerminate) {
        this.f80871a = source;
        this.f80872b = onAfterTerminate;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80871a.d(new a(observer, this.f80872b));
    }
}
