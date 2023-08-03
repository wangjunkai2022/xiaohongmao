package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: ObservableMapNotification.java */
/* loaded from: classes4.dex */
public final class a2<T, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, io.reactivex.rxjava3.core.l0<? extends R>> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f79159b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f79160c;

    /* renamed from: d  reason: collision with root package name */
    final q7.s<? extends io.reactivex.rxjava3.core.l0<? extends R>> f79161d;

    /* compiled from: ObservableMapNotification.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.l0<? extends R>> f79162a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f79163b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f79164c;

        /* renamed from: d  reason: collision with root package name */
        final q7.s<? extends io.reactivex.rxjava3.core.l0<? extends R>> f79165d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79166e;

        a(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.l0<? extends R>> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> onNextMapper, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.l0<? extends R>> onErrorMapper, q7.s<? extends io.reactivex.rxjava3.core.l0<? extends R>> onCompleteSupplier) {
            this.f79162a = actual;
            this.f79163b = onNextMapper;
            this.f79164c = onErrorMapper;
            this.f79165d = onCompleteSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79166e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79166e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            try {
                io.reactivex.rxjava3.core.l0<? extends R> l0Var = this.f79165d.get();
                Objects.requireNonNull(l0Var, "The onComplete ObservableSource returned is null");
                this.f79162a.onNext(l0Var);
                this.f79162a.onComplete();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79162a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            try {
                io.reactivex.rxjava3.core.l0<? extends R> apply = this.f79164c.apply(t9);
                Objects.requireNonNull(apply, "The onError ObservableSource returned is null");
                this.f79162a.onNext(apply);
                this.f79162a.onComplete();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79162a.onError(new CompositeException(t9, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            try {
                io.reactivex.rxjava3.core.l0<? extends R> apply = this.f79163b.apply(t9);
                Objects.requireNonNull(apply, "The onNext ObservableSource returned is null");
                this.f79162a.onNext(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79162a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79166e, d4)) {
                this.f79166e = d4;
                this.f79162a.onSubscribe(this);
            }
        }
    }

    public a2(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> onNextMapper, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.l0<? extends R>> onErrorMapper, q7.s<? extends io.reactivex.rxjava3.core.l0<? extends R>> onCompleteSupplier) {
        super(source);
        this.f79159b = onNextMapper;
        this.f79160c = onErrorMapper;
        this.f79161d = onCompleteSupplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.l0<? extends R>> t9) {
        this.f79141a.a(new a(t9, this.f79159b, this.f79160c, this.f79161d));
    }
}
