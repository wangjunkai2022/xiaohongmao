package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableElementAtMaybe.java */
/* loaded from: classes3.dex */
public final class u0<T> extends io.reactivex.q<T> implements o7.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f72792a;

    /* renamed from: b  reason: collision with root package name */
    final long f72793b;

    /* compiled from: FlowableElementAtMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f72794a;

        /* renamed from: b  reason: collision with root package name */
        final long f72795b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72796c;

        /* renamed from: d  reason: collision with root package name */
        long f72797d;

        /* renamed from: e  reason: collision with root package name */
        boolean f72798e;

        a(io.reactivex.t<? super T> tVar, long j4) {
            this.f72794a = tVar;
            this.f72795b = j4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72796c.cancel();
            this.f72796c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72796c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72796c = SubscriptionHelper.CANCELLED;
            if (this.f72798e) {
                return;
            }
            this.f72798e = true;
            this.f72794a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72798e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72798e = true;
            this.f72796c = SubscriptionHelper.CANCELLED;
            this.f72794a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72798e) {
                return;
            }
            long j4 = this.f72797d;
            if (j4 == this.f72795b) {
                this.f72798e = true;
                this.f72796c.cancel();
                this.f72796c = SubscriptionHelper.CANCELLED;
                this.f72794a.onSuccess(t9);
                return;
            }
            this.f72797d = j4 + 1;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72796c, eVar)) {
                this.f72796c = eVar;
                this.f72794a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public u0(io.reactivex.j<T> jVar, long j4) {
        this.f72792a = jVar;
        this.f72793b = j4;
    }

    @Override // o7.b
    public io.reactivex.j<T> c() {
        return io.reactivex.plugins.a.P(new t0(this.f72792a, this.f72793b, null, false));
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f72792a.j6(new a(tVar, this.f72793b));
    }
}
