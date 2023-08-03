package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableAnySingle.java */
/* loaded from: classes4.dex */
public final class j<T> extends io.reactivex.rxjava3.core.p0<Boolean> implements io.reactivex.rxjava3.internal.fuseable.f<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79573a;

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f79574b;

    /* compiled from: ObservableAnySingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Boolean> f79575a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f79576b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79577c;

        /* renamed from: d  reason: collision with root package name */
        boolean f79578d;

        a(io.reactivex.rxjava3.core.s0<? super Boolean> actual, q7.r<? super T> predicate) {
            this.f79575a = actual;
            this.f79576b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79577c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79577c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79578d) {
                return;
            }
            this.f79578d = true;
            this.f79575a.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79578d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79578d = true;
            this.f79575a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79578d) {
                return;
            }
            try {
                if (this.f79576b.test(t9)) {
                    this.f79578d = true;
                    this.f79577c.dispose();
                    this.f79575a.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79577c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79577c, d4)) {
                this.f79577c = d4;
                this.f79575a.onSubscribe(this);
            }
        }
    }

    public j(io.reactivex.rxjava3.core.l0<T> source, q7.r<? super T> predicate) {
        this.f79573a = source;
        this.f79574b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super Boolean> t9) {
        this.f79573a.a(new a(t9, this.f79574b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<Boolean> a() {
        return io.reactivex.rxjava3.plugins.a.R(new i(this.f79573a, this.f79574b));
    }
}
