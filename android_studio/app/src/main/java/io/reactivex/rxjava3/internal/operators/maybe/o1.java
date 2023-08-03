package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;

/* compiled from: MaybeToFlowable.java */
/* loaded from: classes4.dex */
public final class o1<T> extends io.reactivex.rxjava3.core.m<T> implements io.reactivex.rxjava3.internal.fuseable.h<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78711b;

    /* compiled from: MaybeToFlowable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f78712n = 7603343402964826922L;

        /* renamed from: m  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78713m;

        a(org.reactivestreams.d<? super T> downstream) {
            super(downstream);
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f78713m.dispose();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f81291b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f81291b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78713m, d4)) {
                this.f78713m = d4;
                this.f81291b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            complete(value);
        }
    }

    public o1(io.reactivex.rxjava3.core.b0<T> source) {
        this.f78711b = source;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f78711b.b(new a(s9));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.h
    public io.reactivex.rxjava3.core.b0<T> source() {
        return this.f78711b;
    }
}
