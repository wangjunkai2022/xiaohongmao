package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableAllSingle.java */
/* loaded from: classes4.dex */
public final class g<T> extends io.reactivex.rxjava3.core.p0<Boolean> implements io.reactivex.rxjava3.internal.fuseable.d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f77159a;

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f77160b;

    /* compiled from: FlowableAllSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Boolean> f77161a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f77162b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77163c;

        /* renamed from: d  reason: collision with root package name */
        boolean f77164d;

        a(io.reactivex.rxjava3.core.s0<? super Boolean> actual, q7.r<? super T> predicate) {
            this.f77161a = actual;
            this.f77162b = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f77163c.cancel();
            this.f77163c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77163c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77164d) {
                return;
            }
            this.f77164d = true;
            this.f77163c = SubscriptionHelper.CANCELLED;
            this.f77161a.onSuccess(Boolean.TRUE);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77164d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77164d = true;
            this.f77163c = SubscriptionHelper.CANCELLED;
            this.f77161a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77164d) {
                return;
            }
            try {
                if (this.f77162b.test(t9)) {
                    return;
                }
                this.f77164d = true;
                this.f77163c.cancel();
                this.f77163c = SubscriptionHelper.CANCELLED;
                this.f77161a.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77163c.cancel();
                this.f77163c = SubscriptionHelper.CANCELLED;
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77163c, s9)) {
                this.f77163c = s9;
                this.f77161a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public g(io.reactivex.rxjava3.core.m<T> source, q7.r<? super T> predicate) {
        this.f77159a = source;
        this.f77160b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super Boolean> observer) {
        this.f77159a.G6(new a(observer, this.f77160b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<Boolean> c() {
        return io.reactivex.rxjava3.plugins.a.P(new f(this.f77159a, this.f77160b));
    }
}
