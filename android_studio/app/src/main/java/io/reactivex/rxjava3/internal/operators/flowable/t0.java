package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableElementAtMaybe.java */
/* loaded from: classes4.dex */
public final class t0<T> extends io.reactivex.rxjava3.core.v<T> implements io.reactivex.rxjava3.internal.fuseable.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f77971a;

    /* renamed from: b  reason: collision with root package name */
    final long f77972b;

    /* compiled from: FlowableElementAtMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f77973a;

        /* renamed from: b  reason: collision with root package name */
        final long f77974b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77975c;

        /* renamed from: d  reason: collision with root package name */
        long f77976d;

        /* renamed from: e  reason: collision with root package name */
        boolean f77977e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.rxjava3.core.y<? super T> actual, long index) {
            this.f77973a = actual;
            this.f77974b = index;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f77975c.cancel();
            this.f77975c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77975c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77975c = SubscriptionHelper.CANCELLED;
            if (this.f77977e) {
                return;
            }
            this.f77977e = true;
            this.f77973a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77977e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77977e = true;
            this.f77975c = SubscriptionHelper.CANCELLED;
            this.f77973a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77977e) {
                return;
            }
            long j4 = this.f77976d;
            if (j4 == this.f77974b) {
                this.f77977e = true;
                this.f77975c.cancel();
                this.f77975c = SubscriptionHelper.CANCELLED;
                this.f77973a.onSuccess(t9);
                return;
            }
            this.f77976d = j4 + 1;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77975c, s9)) {
                this.f77975c = s9;
                this.f77973a.onSubscribe(this);
                s9.request(this.f77974b + 1);
            }
        }
    }

    public t0(io.reactivex.rxjava3.core.m<T> source, long index) {
        this.f77971a = source;
        this.f77972b = index;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f77971a.G6(new a(observer, this.f77972b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<T> c() {
        return io.reactivex.rxjava3.plugins.a.P(new s0(this.f77971a, this.f77972b, null, false));
    }
}
