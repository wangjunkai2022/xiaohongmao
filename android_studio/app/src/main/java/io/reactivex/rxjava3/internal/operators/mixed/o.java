package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.b0;
import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.l0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapObservable.java */
/* loaded from: classes4.dex */
public final class o<T, R> extends g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final b0<T> f78978a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends l0<? extends R>> f78979b;

    /* compiled from: MaybeFlatMapObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements n0<R>, y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78980c = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final n0<? super R> f78981a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends l0<? extends R>> f78982b;

        a(n0<? super R> downstream, q7.o<? super T, ? extends l0<? extends R>> mapper) {
            this.f78981a = downstream;
            this.f78982b = mapper;
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
            this.f78981a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f78981a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(R t9) {
            this.f78981a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            try {
                l0<? extends R> apply = this.f78982b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                l0<? extends R> l0Var = apply;
                if (isDisposed()) {
                    return;
                }
                l0Var.a(this);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78981a.onError(th);
            }
        }
    }

    public o(b0<T> source, q7.o<? super T, ? extends l0<? extends R>> mapper) {
        this.f78978a = source;
        this.f78979b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super R> observer) {
        a aVar = new a(observer, this.f78979b);
        observer.onSubscribe(aVar);
        this.f78978a.b(aVar);
    }
}
