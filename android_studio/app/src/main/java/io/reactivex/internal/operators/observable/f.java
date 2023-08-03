package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableAll.java */
/* loaded from: classes3.dex */
public final class f<T> extends io.reactivex.internal.operators.observable.a<T, Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f74066b;

    /* compiled from: ObservableAll.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Boolean> f74067a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f74068b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74069c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74070d;

        a(io.reactivex.g0<? super Boolean> g0Var, n7.r<? super T> rVar) {
            this.f74067a = g0Var;
            this.f74068b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74069c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74069c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74070d) {
                return;
            }
            this.f74070d = true;
            this.f74067a.onNext(Boolean.TRUE);
            this.f74067a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74070d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74070d = true;
            this.f74067a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74070d) {
                return;
            }
            try {
                if (this.f74068b.test(t9)) {
                    return;
                }
                this.f74070d = true;
                this.f74069c.dispose();
                this.f74067a.onNext(Boolean.FALSE);
                this.f74067a.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74069c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74069c, cVar)) {
                this.f74069c = cVar;
                this.f74067a.onSubscribe(this);
            }
        }
    }

    public f(io.reactivex.e0<T> e0Var, n7.r<? super T> rVar) {
        super(e0Var);
        this.f74066b = rVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super Boolean> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74066b));
    }
}
