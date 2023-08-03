package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableAllSingle.java */
/* loaded from: classes4.dex */
public final class g<T> extends io.reactivex.rxjava3.core.p0<Boolean> implements io.reactivex.rxjava3.internal.fuseable.f<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79423a;

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f79424b;

    /* compiled from: ObservableAllSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Boolean> f79425a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f79426b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79427c;

        /* renamed from: d  reason: collision with root package name */
        boolean f79428d;

        a(io.reactivex.rxjava3.core.s0<? super Boolean> actual, q7.r<? super T> predicate) {
            this.f79425a = actual;
            this.f79426b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79427c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79427c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79428d) {
                return;
            }
            this.f79428d = true;
            this.f79425a.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79428d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79428d = true;
            this.f79425a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79428d) {
                return;
            }
            try {
                if (this.f79426b.test(t9)) {
                    return;
                }
                this.f79428d = true;
                this.f79427c.dispose();
                this.f79425a.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79427c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79427c, d4)) {
                this.f79427c = d4;
                this.f79425a.onSubscribe(this);
            }
        }
    }

    public g(io.reactivex.rxjava3.core.l0<T> source, q7.r<? super T> predicate) {
        this.f79423a = source;
        this.f79424b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super Boolean> t9) {
        this.f79423a.a(new a(t9, this.f79424b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<Boolean> a() {
        return io.reactivex.rxjava3.plugins.a.R(new f(this.f79423a, this.f79424b));
    }
}
