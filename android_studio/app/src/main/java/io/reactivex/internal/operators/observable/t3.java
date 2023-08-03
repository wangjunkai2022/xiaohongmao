package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableTakeWhile.java */
/* loaded from: classes3.dex */
public final class t3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f74791b;

    /* compiled from: ObservableTakeWhile.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74792a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f74793b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74794c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74795d;

        a(io.reactivex.g0<? super T> g0Var, n7.r<? super T> rVar) {
            this.f74792a = g0Var;
            this.f74793b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74794c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74794c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74795d) {
                return;
            }
            this.f74795d = true;
            this.f74792a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74795d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74795d = true;
            this.f74792a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74795d) {
                return;
            }
            try {
                if (!this.f74793b.test(t9)) {
                    this.f74795d = true;
                    this.f74794c.dispose();
                    this.f74792a.onComplete();
                    return;
                }
                this.f74792a.onNext(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74794c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74794c, cVar)) {
                this.f74794c = cVar;
                this.f74792a.onSubscribe(this);
            }
        }
    }

    public t3(io.reactivex.e0<T> e0Var, n7.r<? super T> rVar) {
        super(e0Var);
        this.f74791b = rVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74791b));
    }
}
