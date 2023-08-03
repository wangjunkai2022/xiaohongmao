package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapSingle.java */
/* loaded from: classes3.dex */
public final class e0<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73266a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.o0<? extends R>> f73267b;

    /* compiled from: MaybeFlatMapSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73268c = 4827726964688405508L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super R> f73269a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.o0<? extends R>> f73270b;

        a(io.reactivex.l0<? super R> l0Var, n7.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar) {
            this.f73269a = l0Var;
            this.f73270b = oVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73269a.onError(new NoSuchElementException());
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73269a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f73269a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                io.reactivex.o0 o0Var = (io.reactivex.o0) io.reactivex.internal.functions.b.g(this.f73270b.apply(t9), "The mapper returned a null SingleSource");
                if (isDisposed()) {
                    return;
                }
                o0Var.d(new b(this, this.f73269a));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    /* compiled from: MaybeFlatMapSingle.java */
    /* loaded from: classes3.dex */
    static final class b<R> implements io.reactivex.l0<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f73271a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.l0<? super R> f73272b;

        b(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.l0<? super R> l0Var) {
            this.f73271a = atomicReference;
            this.f73272b = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f73272b.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this.f73271a, cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(R r9) {
            this.f73272b.onSuccess(r9);
        }
    }

    public e0(io.reactivex.w<T> wVar, n7.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar) {
        this.f73266a = wVar;
        this.f73267b = oVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super R> l0Var) {
        this.f73266a.b(new a(l0Var, this.f73267b));
    }
}
