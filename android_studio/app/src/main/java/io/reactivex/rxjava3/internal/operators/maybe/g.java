package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: MaybeContains.java */
/* loaded from: classes4.dex */
public final class g<T> extends io.reactivex.rxjava3.core.p0<Boolean> implements io.reactivex.rxjava3.internal.fuseable.h<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78575a;

    /* renamed from: b  reason: collision with root package name */
    final Object f78576b;

    /* compiled from: MaybeContains.java */
    /* loaded from: classes4.dex */
    static final class a implements io.reactivex.rxjava3.core.y<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Boolean> f78577a;

        /* renamed from: b  reason: collision with root package name */
        final Object f78578b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78579c;

        a(io.reactivex.rxjava3.core.s0<? super Boolean> actual, Object value) {
            this.f78577a = actual;
            this.f78578b = value;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78579c.dispose();
            this.f78579c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78579c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78579c = DisposableHelper.DISPOSED;
            this.f78577a.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78579c = DisposableHelper.DISPOSED;
            this.f78577a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78579c, d4)) {
                this.f78579c = d4;
                this.f78577a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(Object value) {
            this.f78579c = DisposableHelper.DISPOSED;
            this.f78577a.onSuccess(Boolean.valueOf(Objects.equals(value, this.f78578b)));
        }
    }

    public g(io.reactivex.rxjava3.core.b0<T> source, Object value) {
        this.f78575a = source;
        this.f78576b = value;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super Boolean> observer) {
        this.f78575a.b(new a(observer, this.f78576b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.h
    public io.reactivex.rxjava3.core.b0<T> source() {
        return this.f78575a;
    }
}
