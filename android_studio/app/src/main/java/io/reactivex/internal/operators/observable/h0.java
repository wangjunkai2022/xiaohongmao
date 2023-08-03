package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;

/* compiled from: ObservableDelaySubscriptionOther.java */
/* loaded from: classes3.dex */
public final class h0<T, U> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f74170a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<U> f74171b;

    /* compiled from: ObservableDelaySubscriptionOther.java */
    /* loaded from: classes3.dex */
    final class a implements io.reactivex.g0<U> {

        /* renamed from: a  reason: collision with root package name */
        final SequentialDisposable f74172a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74173b;

        /* renamed from: c  reason: collision with root package name */
        boolean f74174c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableDelaySubscriptionOther.java */
        /* renamed from: io.reactivex.internal.operators.observable.h0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public final class C0591a implements io.reactivex.g0<T> {
            C0591a() {
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                a.this.f74173b.onComplete();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                a.this.f74173b.onError(th);
            }

            @Override // io.reactivex.g0
            public void onNext(T t9) {
                a.this.f74173b.onNext(t9);
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                a.this.f74172a.update(cVar);
            }
        }

        a(SequentialDisposable sequentialDisposable, io.reactivex.g0<? super T> g0Var) {
            this.f74172a = sequentialDisposable;
            this.f74173b = g0Var;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74174c) {
                return;
            }
            this.f74174c = true;
            h0.this.f74170a.subscribe(new C0591a());
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74174c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74174c = true;
            this.f74173b.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(U u9) {
            onComplete();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f74172a.update(cVar);
        }
    }

    public h0(io.reactivex.e0<? extends T> e0Var, io.reactivex.e0<U> e0Var2) {
        this.f74170a = e0Var;
        this.f74171b = e0Var2;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        g0Var.onSubscribe(sequentialDisposable);
        this.f74171b.subscribe(new a(sequentialDisposable, g0Var));
    }
}
