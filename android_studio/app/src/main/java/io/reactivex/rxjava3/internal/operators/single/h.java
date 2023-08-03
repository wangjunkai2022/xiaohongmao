package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleDelayWithObservable.java */
/* loaded from: classes4.dex */
public final class h<T, U> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80822a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<U> f80823b;

    /* compiled from: SingleDelayWithObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<U>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f80824d = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80825a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.v0<T> f80826b;

        /* renamed from: c  reason: collision with root package name */
        boolean f80827c;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, io.reactivex.rxjava3.core.v0<T> source) {
            this.f80825a = actual;
            this.f80826b = source;
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
            if (this.f80827c) {
                return;
            }
            this.f80827c = true;
            this.f80826b.d(new io.reactivex.rxjava3.internal.observers.p(this, this.f80825a));
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (this.f80827c) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return;
            }
            this.f80827c = true;
            this.f80825a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(U value) {
            get().dispose();
            onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f80825a.onSubscribe(this);
            }
        }
    }

    public h(io.reactivex.rxjava3.core.v0<T> source, io.reactivex.rxjava3.core.l0<U> other) {
        this.f80822a = source;
        this.f80823b = other;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80823b.a(new a(observer, this.f80822a));
    }
}
