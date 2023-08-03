package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleDelayWithSingle.java */
/* loaded from: classes4.dex */
public final class j<T, U> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75415a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o0<U> f75416b;

    /* compiled from: SingleDelayWithSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<U>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75417c = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75418a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.o0<T> f75419b;

        a(io.reactivex.l0<? super T> l0Var, io.reactivex.o0<T> o0Var) {
            this.f75418a = l0Var;
            this.f75419b = o0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75418a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f75418a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(U u9) {
            this.f75419b.d(new io.reactivex.internal.observers.o(this, this.f75418a));
        }
    }

    public j(io.reactivex.o0<T> o0Var, io.reactivex.o0<U> o0Var2) {
        this.f75415a = o0Var;
        this.f75416b = o0Var2;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75416b.d(new a(l0Var, this.f75415a));
    }
}
