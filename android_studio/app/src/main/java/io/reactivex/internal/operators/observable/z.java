package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatWithSingle.java */
/* loaded from: classes3.dex */
public final class z<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75087b;

    /* compiled from: ObservableConcatWithSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T>, io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f75088d = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75089a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.o0<? extends T> f75090b;

        /* renamed from: c  reason: collision with root package name */
        boolean f75091c;

        a(io.reactivex.g0<? super T> g0Var, io.reactivex.o0<? extends T> o0Var) {
            this.f75089a = g0Var;
            this.f75090b = o0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f75091c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.o0<? extends T> o0Var = this.f75090b;
            this.f75090b = null;
            o0Var.d(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f75089a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f75089a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (!DisposableHelper.setOnce(this, cVar) || this.f75091c) {
                return;
            }
            this.f75089a.onSubscribe(this);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75089a.onNext(t9);
            this.f75089a.onComplete();
        }
    }

    public z(io.reactivex.z<T> zVar, io.reactivex.o0<? extends T> o0Var) {
        super(zVar);
        this.f75087b = o0Var;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f75087b));
    }
}
