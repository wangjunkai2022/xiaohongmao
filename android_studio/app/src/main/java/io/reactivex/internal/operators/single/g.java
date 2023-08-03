package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleDelayWithCompletable.java */
/* loaded from: classes4.dex */
public final class g<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75385a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f75386b;

    /* compiled from: SingleDelayWithCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75387c = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75388a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.o0<T> f75389b;

        a(io.reactivex.l0<? super T> l0Var, io.reactivex.o0<T> o0Var) {
            this.f75388a = l0Var;
            this.f75389b = o0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f75389b.d(new io.reactivex.internal.observers.o(this, this.f75388a));
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f75388a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f75388a.onSubscribe(this);
            }
        }
    }

    public g(io.reactivex.o0<T> o0Var, io.reactivex.g gVar) {
        this.f75385a = o0Var;
        this.f75386b = gVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75386b.d(new a(l0Var, this.f75385a));
    }
}
