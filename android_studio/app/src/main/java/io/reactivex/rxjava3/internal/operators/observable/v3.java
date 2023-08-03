package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableTakeUntilPredicate.java */
/* loaded from: classes4.dex */
public final class v3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f80294b;

    /* compiled from: ObservableTakeUntilPredicate.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80295a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f80296b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80297c;

        /* renamed from: d  reason: collision with root package name */
        boolean f80298d;

        a(io.reactivex.rxjava3.core.n0<? super T> downstream, q7.r<? super T> predicate) {
            this.f80295a = downstream;
            this.f80296b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80297c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80297c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80298d) {
                return;
            }
            this.f80298d = true;
            this.f80295a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (!this.f80298d) {
                this.f80298d = true;
                this.f80295a.onError(t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80298d) {
                return;
            }
            this.f80295a.onNext(t9);
            try {
                if (this.f80296b.test(t9)) {
                    this.f80298d = true;
                    this.f80297c.dispose();
                    this.f80295a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80297c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80297c, d4)) {
                this.f80297c = d4;
                this.f80295a.onSubscribe(this);
            }
        }
    }

    public v3(io.reactivex.rxjava3.core.l0<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f80294b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f80294b));
    }
}
