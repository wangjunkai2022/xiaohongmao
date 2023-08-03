package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSubscribeOn.java */
/* loaded from: classes3.dex */
public final class k3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f74337b;

    /* compiled from: ObservableSubscribeOn.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f74338c = 8094547886072529208L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74339a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74340b = new AtomicReference<>();

        a(io.reactivex.g0<? super T> g0Var) {
            this.f74339a = g0Var;
        }

        void a(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f74340b);
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74339a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74339a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74339a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f74340b, cVar);
        }
    }

    /* compiled from: ObservableSubscribeOn.java */
    /* loaded from: classes3.dex */
    final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final a<T> f74341a;

        b(a<T> aVar) {
            this.f74341a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            k3.this.f73827a.subscribe(this.f74341a);
        }
    }

    public k3(io.reactivex.e0<T> e0Var, io.reactivex.h0 h0Var) {
        super(e0Var);
        this.f74337b = h0Var;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var);
        g0Var.onSubscribe(aVar);
        aVar.a(this.f74337b.f(new b(aVar)));
    }
}
