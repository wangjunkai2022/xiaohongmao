package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMapCompletable.java */
/* loaded from: classes4.dex */
public final class y<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75563a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.g> f75564b;

    /* compiled from: SingleFlatMapCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T>, io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75565c = -2177128922851101253L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f75566a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.g> f75567b;

        a(io.reactivex.d dVar, n7.o<? super T, ? extends io.reactivex.g> oVar) {
            this.f75566a = dVar;
            this.f75567b = oVar;
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
            this.f75566a.onComplete();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75566a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(this.f75567b.apply(t9), "The mapper returned a null CompletableSource");
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

    public y(io.reactivex.o0<T> o0Var, n7.o<? super T, ? extends io.reactivex.g> oVar) {
        this.f75563a = o0Var;
        this.f75564b = oVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        a aVar = new a(dVar, this.f75564b);
        dVar.onSubscribe(aVar);
        this.f75563a.d(aVar);
    }
}
