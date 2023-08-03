package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableAll.java */
/* loaded from: classes4.dex */
public final class f<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f79407b;

    /* compiled from: ObservableAll.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super Boolean> f79408a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f79409b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79410c;

        /* renamed from: d  reason: collision with root package name */
        boolean f79411d;

        a(io.reactivex.rxjava3.core.n0<? super Boolean> actual, q7.r<? super T> predicate) {
            this.f79408a = actual;
            this.f79409b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79410c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79410c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79411d) {
                return;
            }
            this.f79411d = true;
            this.f79408a.onNext(Boolean.TRUE);
            this.f79408a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79411d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79411d = true;
            this.f79408a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79411d) {
                return;
            }
            try {
                if (this.f79409b.test(t9)) {
                    return;
                }
                this.f79411d = true;
                this.f79410c.dispose();
                this.f79408a.onNext(Boolean.FALSE);
                this.f79408a.onComplete();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79410c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79410c, d4)) {
                this.f79410c = d4;
                this.f79408a.onSubscribe(this);
            }
        }
    }

    public f(io.reactivex.rxjava3.core.l0<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f79407b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super Boolean> t9) {
        this.f79141a.a(new a(t9, this.f79407b));
    }
}
