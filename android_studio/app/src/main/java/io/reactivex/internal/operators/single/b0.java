package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMapMaybe.java */
/* loaded from: classes4.dex */
public final class b0<T, R> extends io.reactivex.q<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75342a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.w<? extends R>> f75343b;

    /* compiled from: SingleFlatMapMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<R> implements io.reactivex.t<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f75344a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.t<? super R> f75345b;

        a(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.t<? super R> tVar) {
            this.f75344a = atomicReference;
            this.f75345b = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f75345b.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f75345b.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this.f75344a, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(R r9) {
            this.f75345b.onSuccess(r9);
        }
    }

    /* compiled from: SingleFlatMapMaybe.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75346c = -5843758257109742742L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f75347a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.w<? extends R>> f75348b;

        b(io.reactivex.t<? super R> tVar, n7.o<? super T, ? extends io.reactivex.w<? extends R>> oVar) {
            this.f75347a = tVar;
            this.f75348b = oVar;
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
            this.f75347a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f75347a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.b.g(this.f75348b.apply(t9), "The mapper returned a null MaybeSource");
                if (isDisposed()) {
                    return;
                }
                wVar.b(new a(this, this.f75347a));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    public b0(io.reactivex.o0<? extends T> o0Var, n7.o<? super T, ? extends io.reactivex.w<? extends R>> oVar) {
        this.f75343b = oVar;
        this.f75342a = o0Var;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super R> tVar) {
        this.f75342a.d(new b(tVar, this.f75343b));
    }
}
