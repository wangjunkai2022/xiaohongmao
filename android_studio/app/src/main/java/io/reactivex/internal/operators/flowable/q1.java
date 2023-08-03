package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableIgnoreElementsCompletable.java */
/* loaded from: classes3.dex */
public final class q1<T> extends io.reactivex.a implements o7.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f72510a;

    /* compiled from: FlowableIgnoreElementsCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f72511a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f72512b;

        a(io.reactivex.d dVar) {
            this.f72511a = dVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72512b.cancel();
            this.f72512b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72512b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72512b = SubscriptionHelper.CANCELLED;
            this.f72511a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72512b = SubscriptionHelper.CANCELLED;
            this.f72511a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72512b, eVar)) {
                this.f72512b = eVar;
                this.f72511a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public q1(io.reactivex.j<T> jVar) {
        this.f72510a = jVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f72510a.j6(new a(dVar));
    }

    @Override // o7.b
    public io.reactivex.j<T> c() {
        return io.reactivex.plugins.a.P(new p1(this.f72510a));
    }
}
