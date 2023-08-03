package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableSingleMaybe.java */
/* loaded from: classes3.dex */
public final class q3<T> extends io.reactivex.q<T> implements o7.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f72533a;

    /* compiled from: FlowableSingleMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f72534a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f72535b;

        /* renamed from: c  reason: collision with root package name */
        boolean f72536c;

        /* renamed from: d  reason: collision with root package name */
        T f72537d;

        a(io.reactivex.t<? super T> tVar) {
            this.f72534a = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72535b.cancel();
            this.f72535b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72535b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72536c) {
                return;
            }
            this.f72536c = true;
            this.f72535b = SubscriptionHelper.CANCELLED;
            T t9 = this.f72537d;
            this.f72537d = null;
            if (t9 == null) {
                this.f72534a.onComplete();
            } else {
                this.f72534a.onSuccess(t9);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72536c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72536c = true;
            this.f72535b = SubscriptionHelper.CANCELLED;
            this.f72534a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72536c) {
                return;
            }
            if (this.f72537d != null) {
                this.f72536c = true;
                this.f72535b.cancel();
                this.f72535b = SubscriptionHelper.CANCELLED;
                this.f72534a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f72537d = t9;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72535b, eVar)) {
                this.f72535b = eVar;
                this.f72534a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public q3(io.reactivex.j<T> jVar) {
        this.f72533a = jVar;
    }

    @Override // o7.b
    public io.reactivex.j<T> c() {
        return io.reactivex.plugins.a.P(new p3(this.f72533a, null, false));
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f72533a.j6(new a(tVar));
    }
}
