package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableOnErrorReturn.java */
/* loaded from: classes4.dex */
public final class j2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends T> f79582b;

    /* compiled from: ObservableOnErrorReturn.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79583a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends T> f79584b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79585c;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.o<? super Throwable, ? extends T> valueSupplier) {
            this.f79583a = actual;
            this.f79584b = valueSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79585c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79585c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79583a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            try {
                T apply = this.f79584b.apply(t9);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(t9);
                    this.f79583a.onError(nullPointerException);
                    return;
                }
                this.f79583a.onNext(apply);
                this.f79583a.onComplete();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79583a.onError(new CompositeException(t9, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79583a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79585c, d4)) {
                this.f79585c = d4;
                this.f79583a.onSubscribe(this);
            }
        }
    }

    public j2(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super Throwable, ? extends T> valueSupplier) {
        super(source);
        this.f79582b = valueSupplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(t9, this.f79582b));
    }
}
