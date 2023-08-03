package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableAny.java */
/* loaded from: classes4.dex */
public final class i<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f79534b;

    /* compiled from: ObservableAny.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super Boolean> f79535a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f79536b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79537c;

        /* renamed from: d  reason: collision with root package name */
        boolean f79538d;

        a(io.reactivex.rxjava3.core.n0<? super Boolean> actual, q7.r<? super T> predicate) {
            this.f79535a = actual;
            this.f79536b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79537c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79537c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79538d) {
                return;
            }
            this.f79538d = true;
            this.f79535a.onNext(Boolean.FALSE);
            this.f79535a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79538d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79538d = true;
            this.f79535a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79538d) {
                return;
            }
            try {
                if (this.f79536b.test(t9)) {
                    this.f79538d = true;
                    this.f79537c.dispose();
                    this.f79535a.onNext(Boolean.TRUE);
                    this.f79535a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79537c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79537c, d4)) {
                this.f79537c = d4;
                this.f79535a.onSubscribe(this);
            }
        }
    }

    public i(io.reactivex.rxjava3.core.l0<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f79534b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super Boolean> t9) {
        this.f79141a.a(new a(t9, this.f79534b));
    }
}
