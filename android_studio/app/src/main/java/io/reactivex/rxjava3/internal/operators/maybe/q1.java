package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* compiled from: MaybeToSingle.java */
/* loaded from: classes4.dex */
public final class q1<T> extends io.reactivex.rxjava3.core.p0<T> implements io.reactivex.rxjava3.internal.fuseable.h<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78727a;

    /* renamed from: b  reason: collision with root package name */
    final T f78728b;

    /* compiled from: MaybeToSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f78729a;

        /* renamed from: b  reason: collision with root package name */
        final T f78730b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78731c;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, T defaultValue) {
            this.f78729a = actual;
            this.f78730b = defaultValue;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78731c.dispose();
            this.f78731c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78731c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78731c = DisposableHelper.DISPOSED;
            T t9 = this.f78730b;
            if (t9 != null) {
                this.f78729a.onSuccess(t9);
            } else {
                this.f78729a.onError(new NoSuchElementException("The MaybeSource is empty"));
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78731c = DisposableHelper.DISPOSED;
            this.f78729a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78731c, d4)) {
                this.f78731c = d4;
                this.f78729a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78731c = DisposableHelper.DISPOSED;
            this.f78729a.onSuccess(value);
        }
    }

    public q1(io.reactivex.rxjava3.core.b0<T> source, T defaultValue) {
        this.f78727a = source;
        this.f78728b = defaultValue;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f78727a.b(new a(observer, this.f78728b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.h
    public io.reactivex.rxjava3.core.b0<T> source() {
        return this.f78727a;
    }
}
