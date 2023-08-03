package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableAnySingle.java */
/* loaded from: classes4.dex */
public final class j<T> extends io.reactivex.rxjava3.core.p0<Boolean> implements io.reactivex.rxjava3.internal.fuseable.d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f77372a;

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f77373b;

    /* compiled from: FlowableAnySingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Boolean> f77374a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f77375b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77376c;

        /* renamed from: d  reason: collision with root package name */
        boolean f77377d;

        a(io.reactivex.rxjava3.core.s0<? super Boolean> actual, q7.r<? super T> predicate) {
            this.f77374a = actual;
            this.f77375b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f77376c.cancel();
            this.f77376c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77376c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77377d) {
                return;
            }
            this.f77377d = true;
            this.f77376c = SubscriptionHelper.CANCELLED;
            this.f77374a.onSuccess(Boolean.FALSE);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77377d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77377d = true;
            this.f77376c = SubscriptionHelper.CANCELLED;
            this.f77374a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77377d) {
                return;
            }
            try {
                if (this.f77375b.test(t9)) {
                    this.f77377d = true;
                    this.f77376c.cancel();
                    this.f77376c = SubscriptionHelper.CANCELLED;
                    this.f77374a.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77376c.cancel();
                this.f77376c = SubscriptionHelper.CANCELLED;
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77376c, s9)) {
                this.f77376c = s9;
                this.f77374a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public j(io.reactivex.rxjava3.core.m<T> source, q7.r<? super T> predicate) {
        this.f77372a = source;
        this.f77373b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super Boolean> observer) {
        this.f77372a.G6(new a(observer, this.f77373b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<Boolean> c() {
        return io.reactivex.rxjava3.plugins.a.P(new i(this.f77372a, this.f77373b));
    }
}
