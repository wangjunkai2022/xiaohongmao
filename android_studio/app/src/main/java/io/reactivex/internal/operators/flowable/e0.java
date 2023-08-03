package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableCountSingle.java */
/* loaded from: classes3.dex */
public final class e0<T> extends io.reactivex.i0<Long> implements o7.b<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f71781a;

    /* compiled from: FlowableCountSingle.java */
    /* loaded from: classes3.dex */
    static final class a implements io.reactivex.o<Object>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Long> f71782a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f71783b;

        /* renamed from: c  reason: collision with root package name */
        long f71784c;

        a(io.reactivex.l0<? super Long> l0Var) {
            this.f71782a = l0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71783b.cancel();
            this.f71783b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71783b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71783b = SubscriptionHelper.CANCELLED;
            this.f71782a.onSuccess(Long.valueOf(this.f71784c));
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71783b = SubscriptionHelper.CANCELLED;
            this.f71782a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            this.f71784c++;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71783b, eVar)) {
                this.f71783b = eVar;
                this.f71782a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public e0(io.reactivex.j<T> jVar) {
        this.f71781a = jVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Long> l0Var) {
        this.f71781a.j6(new a(l0Var));
    }

    @Override // o7.b
    public io.reactivex.j<Long> c() {
        return io.reactivex.plugins.a.P(new d0(this.f71781a));
    }
}
