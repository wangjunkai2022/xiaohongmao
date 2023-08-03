package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableSingleMaybe.java */
/* loaded from: classes4.dex */
public final class t3<T> extends io.reactivex.rxjava3.core.v<T> implements io.reactivex.rxjava3.internal.fuseable.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f77983a;

    /* compiled from: FlowableSingleMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f77984a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f77985b;

        /* renamed from: c  reason: collision with root package name */
        boolean f77986c;

        /* renamed from: d  reason: collision with root package name */
        T f77987d;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f77984a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f77985b.cancel();
            this.f77985b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77985b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77986c) {
                return;
            }
            this.f77986c = true;
            this.f77985b = SubscriptionHelper.CANCELLED;
            T t9 = this.f77987d;
            this.f77987d = null;
            if (t9 == null) {
                this.f77984a.onComplete();
            } else {
                this.f77984a.onSuccess(t9);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77986c) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77986c = true;
            this.f77985b = SubscriptionHelper.CANCELLED;
            this.f77984a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77986c) {
                return;
            }
            if (this.f77987d != null) {
                this.f77986c = true;
                this.f77985b.cancel();
                this.f77985b = SubscriptionHelper.CANCELLED;
                this.f77984a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f77987d = t9;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77985b, s9)) {
                this.f77985b = s9;
                this.f77984a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public t3(io.reactivex.rxjava3.core.m<T> source) {
        this.f77983a = source;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f77983a.G6(new a(observer));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<T> c() {
        return io.reactivex.rxjava3.plugins.a.P(new s3(this.f77983a, null, false));
    }
}
