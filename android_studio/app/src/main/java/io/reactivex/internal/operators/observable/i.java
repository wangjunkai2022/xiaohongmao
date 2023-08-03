package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableAny.java */
/* loaded from: classes3.dex */
public final class i<T> extends io.reactivex.internal.operators.observable.a<T, Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f74212b;

    /* compiled from: ObservableAny.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Boolean> f74213a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f74214b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74215c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74216d;

        a(io.reactivex.g0<? super Boolean> g0Var, n7.r<? super T> rVar) {
            this.f74213a = g0Var;
            this.f74214b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74215c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74215c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74216d) {
                return;
            }
            this.f74216d = true;
            this.f74213a.onNext(Boolean.FALSE);
            this.f74213a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74216d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74216d = true;
            this.f74213a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74216d) {
                return;
            }
            try {
                if (this.f74214b.test(t9)) {
                    this.f74216d = true;
                    this.f74215c.dispose();
                    this.f74213a.onNext(Boolean.TRUE);
                    this.f74213a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74215c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74215c, cVar)) {
                this.f74215c = cVar;
                this.f74213a.onSubscribe(this);
            }
        }
    }

    public i(io.reactivex.e0<T> e0Var, n7.r<? super T> rVar) {
        super(e0Var);
        this.f74212b = rVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super Boolean> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74212b));
    }
}
