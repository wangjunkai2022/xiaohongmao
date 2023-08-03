package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapSingleElement.java */
/* loaded from: classes3.dex */
public final class f0<T, R> extends io.reactivex.q<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73287a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.o0<? extends R>> f73288b;

    /* compiled from: MaybeFlatMapSingleElement.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73289c = 4827726964688405508L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f73290a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.o0<? extends R>> f73291b;

        a(io.reactivex.t<? super R> tVar, n7.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar) {
            this.f73290a = tVar;
            this.f73291b = oVar;
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
            this.f73290a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73290a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f73290a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                ((io.reactivex.o0) io.reactivex.internal.functions.b.g(this.f73291b.apply(t9), "The mapper returned a null SingleSource")).d(new b(this, this.f73290a));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    /* compiled from: MaybeFlatMapSingleElement.java */
    /* loaded from: classes3.dex */
    static final class b<R> implements io.reactivex.l0<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f73292a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.t<? super R> f73293b;

        b(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.t<? super R> tVar) {
            this.f73292a = atomicReference;
            this.f73293b = tVar;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f73293b.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this.f73292a, cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(R r9) {
            this.f73293b.onSuccess(r9);
        }
    }

    public f0(io.reactivex.w<T> wVar, n7.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar) {
        this.f73287a = wVar;
        this.f73288b = oVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super R> tVar) {
        this.f73287a.b(new a(tVar, this.f73288b));
    }
}
