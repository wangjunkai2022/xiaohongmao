package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableLastMaybe.java */
/* loaded from: classes3.dex */
public final class v1<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f72862a;

    /* compiled from: FlowableLastMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f72863a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f72864b;

        /* renamed from: c  reason: collision with root package name */
        T f72865c;

        a(io.reactivex.t<? super T> tVar) {
            this.f72863a = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72864b.cancel();
            this.f72864b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72864b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72864b = SubscriptionHelper.CANCELLED;
            T t9 = this.f72865c;
            if (t9 != null) {
                this.f72865c = null;
                this.f72863a.onSuccess(t9);
                return;
            }
            this.f72863a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72864b = SubscriptionHelper.CANCELLED;
            this.f72865c = null;
            this.f72863a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72865c = t9;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72864b, eVar)) {
                this.f72864b = eVar;
                this.f72863a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public v1(org.reactivestreams.c<T> cVar) {
        this.f72862a = cVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f72862a.i(new a(tVar));
    }
}
