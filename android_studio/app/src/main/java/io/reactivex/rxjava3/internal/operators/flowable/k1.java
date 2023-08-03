package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: FlowableFromCompletable.java */
/* loaded from: classes4.dex */
public final class k1<T> extends io.reactivex.rxjava3.core.m<T> implements io.reactivex.rxjava3.internal.fuseable.g {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f77424b;

    /* compiled from: FlowableFromCompletable.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends io.reactivex.rxjava3.internal.fuseable.a<T> implements io.reactivex.rxjava3.core.d {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77425a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f77426b;

        public a(org.reactivestreams.d<? super T> downstream) {
            this.f77425a = downstream;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.a, org.reactivestreams.e
        public void cancel() {
            this.f77426b.dispose();
            this.f77426b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f77426b = DisposableHelper.DISPOSED;
            this.f77425a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f77426b = DisposableHelper.DISPOSED;
            this.f77425a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f77426b, d4)) {
                this.f77426b = d4;
                this.f77425a.onSubscribe(this);
            }
        }
    }

    public k1(io.reactivex.rxjava3.core.g source) {
        this.f77424b = source;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> observer) {
        this.f77424b.d(new a(observer));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.g
    public io.reactivex.rxjava3.core.g source() {
        return this.f77424b;
    }
}
