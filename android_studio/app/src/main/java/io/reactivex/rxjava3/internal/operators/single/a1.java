package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;

/* compiled from: SingleToFlowable.java */
/* loaded from: classes4.dex */
public final class a1<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80708b;

    /* compiled from: SingleToFlowable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f80709n = 187782011903685568L;

        /* renamed from: m  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80710m;

        a(org.reactivestreams.d<? super T> downstream) {
            super(downstream);
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f80710m.dispose();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f81291b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80710m, d4)) {
                this.f80710m = d4;
                this.f81291b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            complete(value);
        }
    }

    public a1(io.reactivex.rxjava3.core.v0<? extends T> source) {
        this.f80708b = source;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(final org.reactivestreams.d<? super T> s9) {
        this.f80708b.d(new a(s9));
    }
}
