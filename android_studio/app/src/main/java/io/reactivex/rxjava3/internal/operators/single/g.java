package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleDelayWithCompletable.java */
/* loaded from: classes4.dex */
public final class g<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80816a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f80817b;

    /* compiled from: SingleDelayWithCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80818c = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80819a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.v0<T> f80820b;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, io.reactivex.rxjava3.core.v0<T> source) {
            this.f80819a = actual;
            this.f80820b = source;
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
            this.f80820b.d(new io.reactivex.rxjava3.internal.observers.p(this, this.f80819a));
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80819a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f80819a.onSubscribe(this);
            }
        }
    }

    public g(io.reactivex.rxjava3.core.v0<T> source, io.reactivex.rxjava3.core.g other) {
        this.f80816a = source;
        this.f80817b = other;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80817b.d(new a(observer, this.f80816a));
    }
}
