package io.reactivex.internal.operators.mixed;

import io.reactivex.e0;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMapObservable.java */
/* loaded from: classes3.dex */
public final class s<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f73785a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends e0<? extends R>> f73786b;

    /* compiled from: SingleFlatMapObservable.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.disposables.c> implements g0<R>, l0<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73787c = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f73788a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends e0<? extends R>> f73789b;

        a(g0<? super R> g0Var, n7.o<? super T, ? extends e0<? extends R>> oVar) {
            this.f73788a = g0Var;
            this.f73789b = oVar;
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
            this.f73788a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73788a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(R r9) {
            this.f73788a.onNext(r9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                ((e0) io.reactivex.internal.functions.b.g(this.f73789b.apply(t9), "The mapper returned a null Publisher")).subscribe(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73788a.onError(th);
            }
        }
    }

    public s(o0<T> o0Var, n7.o<? super T, ? extends e0<? extends R>> oVar) {
        this.f73785a = o0Var;
        this.f73786b = oVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super R> g0Var) {
        a aVar = new a(g0Var, this.f73786b);
        g0Var.onSubscribe(aVar);
        this.f73785a.d(aVar);
    }
}
