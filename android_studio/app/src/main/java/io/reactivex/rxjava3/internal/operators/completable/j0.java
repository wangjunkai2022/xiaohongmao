package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: CompletableOnErrorReturn.java */
/* loaded from: classes4.dex */
public final class j0<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76639a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends T> f76640b;

    /* compiled from: CompletableOnErrorReturn.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f76641a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends T> f76642b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76643c;

        a(io.reactivex.rxjava3.core.y<? super T> actual, q7.o<? super Throwable, ? extends T> itemSupplier) {
            this.f76641a = actual;
            this.f76642b = itemSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76643c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76643c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76641a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                T apply = this.f76642b.apply(e4);
                Objects.requireNonNull(apply, "The itemSupplier returned a null value");
                this.f76641a.onSuccess(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76641a.onError(new CompositeException(e4, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76643c, d4)) {
                this.f76643c = d4;
                this.f76641a.onSubscribe(this);
            }
        }
    }

    public j0(io.reactivex.rxjava3.core.g source, q7.o<? super Throwable, ? extends T> valueSupplier) {
        this.f76639a = source;
        this.f76640b = valueSupplier;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f76639a.d(new a(observer, this.f76640b));
    }
}
