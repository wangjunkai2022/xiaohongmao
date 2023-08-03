package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMap.java */
/* loaded from: classes4.dex */
public final class x<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75547a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.o0<? extends R>> f75548b;

    /* compiled from: SingleFlatMap.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75549c = 3258103020495908596L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super R> f75550a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.o0<? extends R>> f75551b;

        /* compiled from: SingleFlatMap.java */
        /* renamed from: io.reactivex.internal.operators.single.x$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0609a<R> implements io.reactivex.l0<R> {

            /* renamed from: a  reason: collision with root package name */
            final AtomicReference<io.reactivex.disposables.c> f75552a;

            /* renamed from: b  reason: collision with root package name */
            final io.reactivex.l0<? super R> f75553b;

            C0609a(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.l0<? super R> l0Var) {
                this.f75552a = atomicReference;
                this.f75553b = l0Var;
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f75553b.onError(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.replace(this.f75552a, cVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r9) {
                this.f75553b.onSuccess(r9);
            }
        }

        a(io.reactivex.l0<? super R> l0Var, n7.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar) {
            this.f75550a = l0Var;
            this.f75551b = oVar;
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
            this.f75550a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f75550a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                io.reactivex.o0 o0Var = (io.reactivex.o0) io.reactivex.internal.functions.b.g(this.f75551b.apply(t9), "The single returned by the mapper is null");
                if (isDisposed()) {
                    return;
                }
                o0Var.d(new C0609a(this, this.f75550a));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75550a.onError(th);
            }
        }
    }

    public x(io.reactivex.o0<? extends T> o0Var, n7.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar) {
        this.f75548b = oVar;
        this.f75547a = o0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super R> l0Var) {
        this.f75547a.d(new a(l0Var, this.f75548b));
    }
}
