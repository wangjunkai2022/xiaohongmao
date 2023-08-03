package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableLastMaybe.java */
/* loaded from: classes4.dex */
public final class a2<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f76831a;

    /* compiled from: FlowableLastMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f76832a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f76833b;

        /* renamed from: c  reason: collision with root package name */
        T f76834c;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f76832a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76833b.cancel();
            this.f76833b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76833b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f76833b = SubscriptionHelper.CANCELLED;
            T t9 = this.f76834c;
            if (t9 != null) {
                this.f76834c = null;
                this.f76832a.onSuccess(t9);
                return;
            }
            this.f76832a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f76833b = SubscriptionHelper.CANCELLED;
            this.f76834c = null;
            this.f76832a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f76834c = t9;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76833b, s9)) {
                this.f76833b = s9;
                this.f76832a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public a2(org.reactivestreams.c<T> source) {
        this.f76831a = source;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f76831a.i(new a(observer));
    }
}
