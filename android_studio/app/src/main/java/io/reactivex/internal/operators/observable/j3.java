package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableSkipWhile.java */
/* loaded from: classes3.dex */
public final class j3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f74306b;

    /* compiled from: ObservableSkipWhile.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74307a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f74308b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74309c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74310d;

        a(io.reactivex.g0<? super T> g0Var, n7.r<? super T> rVar) {
            this.f74307a = g0Var;
            this.f74308b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74309c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74309c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74307a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74307a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74310d) {
                this.f74307a.onNext(t9);
                return;
            }
            try {
                if (this.f74308b.test(t9)) {
                    return;
                }
                this.f74310d = true;
                this.f74307a.onNext(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74309c.dispose();
                this.f74307a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74309c, cVar)) {
                this.f74309c = cVar;
                this.f74307a.onSubscribe(this);
            }
        }
    }

    public j3(io.reactivex.e0<T> e0Var, n7.r<? super T> rVar) {
        super(e0Var);
        this.f74306b = rVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74306b));
    }
}
