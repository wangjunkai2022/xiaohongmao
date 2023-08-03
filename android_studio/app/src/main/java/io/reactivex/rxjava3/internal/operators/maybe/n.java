package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeDelayWithCompletable.java */
/* loaded from: classes4.dex */
public final class n<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78691a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f78692b;

    /* compiled from: MaybeDelayWithCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f78693a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78694b;

        a(AtomicReference<io.reactivex.rxjava3.disposables.f> parent, io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78693a = parent;
            this.f78694b = downstream;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78694b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78694b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this.f78693a, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78694b.onSuccess(value);
        }
    }

    /* compiled from: MaybeDelayWithCompletable.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78695c = 703409937383992161L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78696a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.b0<T> f78697b;

        b(io.reactivex.rxjava3.core.y<? super T> actual, io.reactivex.rxjava3.core.b0<T> source) {
            this.f78696a = actual;
            this.f78697b = source;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78697b.b(new a(this, this.f78696a));
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78696a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f78696a.onSubscribe(this);
            }
        }
    }

    public n(io.reactivex.rxjava3.core.b0<T> source, io.reactivex.rxjava3.core.g other) {
        this.f78691a = source;
        this.f78692b = other;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78692b.d(new b(observer, this.f78691a));
    }
}
