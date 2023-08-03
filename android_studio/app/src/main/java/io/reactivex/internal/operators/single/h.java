package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleDelayWithObservable.java */
/* loaded from: classes4.dex */
public final class h<T, U> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75393a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<U> f75394b;

    /* compiled from: SingleDelayWithObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<U>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f75395d = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75396a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.o0<T> f75397b;

        /* renamed from: c  reason: collision with root package name */
        boolean f75398c;

        a(io.reactivex.l0<? super T> l0Var, io.reactivex.o0<T> o0Var) {
            this.f75396a = l0Var;
            this.f75397b = o0Var;
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
            if (this.f75398c) {
                return;
            }
            this.f75398c = true;
            this.f75397b.d(new io.reactivex.internal.observers.o(this, this.f75396a));
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f75398c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75398c = true;
            this.f75396a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(U u9) {
            get().dispose();
            onComplete();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.set(this, cVar)) {
                this.f75396a.onSubscribe(this);
            }
        }
    }

    public h(io.reactivex.o0<T> o0Var, io.reactivex.e0<U> e0Var) {
        this.f75393a = o0Var;
        this.f75394b = e0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75394b.subscribe(new a(l0Var, this.f75393a));
    }
}
