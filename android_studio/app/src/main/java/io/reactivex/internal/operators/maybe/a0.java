package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapCompletable.java */
/* loaded from: classes3.dex */
public final class a0<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73173a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.g> f73174b;

    /* compiled from: MaybeFlatMapCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73175c = -2177128922851101253L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f73176a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.g> f73177b;

        a(io.reactivex.d dVar, n7.o<? super T, ? extends io.reactivex.g> oVar) {
            this.f73176a = dVar;
            this.f73177b = oVar;
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
            this.f73176a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73176a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(this.f73177b.apply(t9), "The mapper returned a null CompletableSource");
                if (isDisposed()) {
                    return;
                }
                gVar.d(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    public a0(io.reactivex.w<T> wVar, n7.o<? super T, ? extends io.reactivex.g> oVar) {
        this.f73173a = wVar;
        this.f73174b = oVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        a aVar = new a(dVar, this.f73174b);
        dVar.onSubscribe(aVar);
        this.f73173a.b(aVar);
    }
}
