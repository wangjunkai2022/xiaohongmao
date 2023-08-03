package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.l0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.v0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMapObservable.java */
/* loaded from: classes4.dex */
public final class x<T, R> extends g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final v0<T> f79095a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends l0<? extends R>> f79096b;

    /* compiled from: SingleFlatMapObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements n0<R>, s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f79097c = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final n0<? super R> f79098a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends l0<? extends R>> f79099b;

        a(n0<? super R> downstream, q7.o<? super T, ? extends l0<? extends R>> mapper) {
            this.f79098a = downstream;
            this.f79099b = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79098a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79098a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(R t9) {
            this.f79098a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            try {
                l0<? extends R> apply = this.f79099b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                l0<? extends R> l0Var = apply;
                if (isDisposed()) {
                    return;
                }
                l0Var.a(this);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79098a.onError(th);
            }
        }
    }

    public x(v0<T> source, q7.o<? super T, ? extends l0<? extends R>> mapper) {
        this.f79095a = source;
        this.f79096b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super R> observer) {
        a aVar = new a(observer, this.f79096b);
        observer.onSubscribe(aVar);
        this.f79095a.d(aVar);
    }
}
