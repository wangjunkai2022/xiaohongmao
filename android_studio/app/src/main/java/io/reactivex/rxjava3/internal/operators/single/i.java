package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleDelayWithPublisher.java */
/* loaded from: classes4.dex */
public final class i<T, U> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80834a;

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f80835b;

    /* compiled from: SingleDelayWithPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.r<U>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80836e = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80837a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.v0<T> f80838b;

        /* renamed from: c  reason: collision with root package name */
        boolean f80839c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f80840d;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, io.reactivex.rxjava3.core.v0<T> source) {
            this.f80837a = actual;
            this.f80838b = source;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80840d.cancel();
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80839c) {
                return;
            }
            this.f80839c = true;
            this.f80838b.d(new io.reactivex.rxjava3.internal.observers.p(this, this.f80837a));
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            if (this.f80839c) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return;
            }
            this.f80839c = true;
            this.f80837a.onError(e4);
        }

        @Override // org.reactivestreams.d
        public void onNext(U value) {
            this.f80840d.cancel();
            onComplete();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80840d, s9)) {
                this.f80840d = s9;
                this.f80837a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public i(io.reactivex.rxjava3.core.v0<T> source, org.reactivestreams.c<U> other) {
        this.f80834a = source;
        this.f80835b = other;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80835b.i(new a(observer, this.f80834a));
    }
}
