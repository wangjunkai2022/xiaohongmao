package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: MaybeOnErrorReturn.java */
/* loaded from: classes4.dex */
public final class d1<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends T> f78520b;

    /* compiled from: MaybeOnErrorReturn.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78521a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends T> f78522b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78523c;

        a(io.reactivex.rxjava3.core.y<? super T> actual, q7.o<? super Throwable, ? extends T> valueSupplier) {
            this.f78521a = actual;
            this.f78522b = valueSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78523c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78523c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78521a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                T apply = this.f78522b.apply(e4);
                Objects.requireNonNull(apply, "The itemSupplier returned a null value");
                this.f78521a.onSuccess(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78521a.onError(new CompositeException(e4, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78523c, d4)) {
                this.f78523c = d4;
                this.f78521a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78521a.onSuccess(value);
        }
    }

    public d1(io.reactivex.rxjava3.core.b0<T> source, q7.o<? super Throwable, ? extends T> itemSupplier) {
        super(source);
        this.f78520b = itemSupplier;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78520b));
    }
}
