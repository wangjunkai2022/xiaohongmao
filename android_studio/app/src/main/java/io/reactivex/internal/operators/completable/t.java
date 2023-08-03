package io.reactivex.internal.operators.completable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: CompletableFromPublisher.java */
/* loaded from: classes3.dex */
public final class t<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f71460a;

    /* compiled from: CompletableFromPublisher.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71461a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f71462b;

        a(io.reactivex.d dVar) {
            this.f71461a = dVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71462b.cancel();
            this.f71462b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71462b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71461a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71461a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71462b, eVar)) {
                this.f71462b = eVar;
                this.f71461a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public t(org.reactivestreams.c<T> cVar) {
        this.f71460a = cVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71460a.i(new a(dVar));
    }
}
