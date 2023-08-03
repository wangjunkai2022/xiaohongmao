package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;

/* compiled from: ObservableSwitchIfEmpty.java */
/* loaded from: classes3.dex */
public final class l3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f74374b;

    /* compiled from: ObservableSwitchIfEmpty.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74375a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f74376b;

        /* renamed from: d  reason: collision with root package name */
        boolean f74378d = true;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f74377c = new SequentialDisposable();

        a(io.reactivex.g0<? super T> g0Var, io.reactivex.e0<? extends T> e0Var) {
            this.f74375a = g0Var;
            this.f74376b = e0Var;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74378d) {
                this.f74378d = false;
                this.f74376b.subscribe(this);
                return;
            }
            this.f74375a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74375a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74378d) {
                this.f74378d = false;
            }
            this.f74375a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f74377c.update(cVar);
        }
    }

    public l3(io.reactivex.e0<T> e0Var, io.reactivex.e0<? extends T> e0Var2) {
        super(e0Var);
        this.f74374b = e0Var2;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var, this.f74374b);
        g0Var.onSubscribe(aVar.f74377c);
        this.f73827a.subscribe(aVar);
    }
}
