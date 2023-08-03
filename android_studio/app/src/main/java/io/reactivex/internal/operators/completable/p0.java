package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: CompletableToObservable.java */
/* loaded from: classes3.dex */
public final class p0<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71439a;

    /* compiled from: CompletableToObservable.java */
    /* loaded from: classes3.dex */
    static final class a extends io.reactivex.internal.observers.b<Void> implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<?> f71440a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f71441b;

        a(io.reactivex.g0<?> g0Var) {
            this.f71440a = g0Var;
        }

        @Override // o7.o
        /* renamed from: a */
        public Void poll() throws Exception {
            return null;
        }

        @Override // o7.o
        public void clear() {
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71441b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71441b.isDisposed();
        }

        @Override // o7.o
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f71440a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71440a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f71441b, cVar)) {
                this.f71441b = cVar;
                this.f71440a.onSubscribe(this);
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return i4 & 2;
        }
    }

    public p0(io.reactivex.g gVar) {
        this.f71439a = gVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f71439a.d(new a(g0Var));
    }
}
