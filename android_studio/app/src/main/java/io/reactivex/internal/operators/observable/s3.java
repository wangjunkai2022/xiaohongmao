package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableTakeUntilPredicate.java */
/* loaded from: classes3.dex */
public final class s3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f74764b;

    /* compiled from: ObservableTakeUntilPredicate.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74765a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f74766b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74767c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74768d;

        a(io.reactivex.g0<? super T> g0Var, n7.r<? super T> rVar) {
            this.f74765a = g0Var;
            this.f74766b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74767c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74767c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74768d) {
                return;
            }
            this.f74768d = true;
            this.f74765a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (!this.f74768d) {
                this.f74768d = true;
                this.f74765a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74768d) {
                return;
            }
            this.f74765a.onNext(t9);
            try {
                if (this.f74766b.test(t9)) {
                    this.f74768d = true;
                    this.f74767c.dispose();
                    this.f74765a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74767c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74767c, cVar)) {
                this.f74767c = cVar;
                this.f74765a.onSubscribe(this);
            }
        }
    }

    public s3(io.reactivex.e0<T> e0Var, n7.r<? super T> rVar) {
        super(e0Var);
        this.f74764b = rVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74764b));
    }
}
