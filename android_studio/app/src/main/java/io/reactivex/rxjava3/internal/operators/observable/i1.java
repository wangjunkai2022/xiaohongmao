package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: ObservableFromPublisher.java */
/* loaded from: classes4.dex */
public final class i1<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f79544a;

    /* compiled from: ObservableFromPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79545a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f79546b;

        a(io.reactivex.rxjava3.core.n0<? super T> o9) {
            this.f79545a = o9;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79546b.cancel();
            this.f79546b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79546b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f79545a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f79545a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f79545a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f79546b, s9)) {
                this.f79546b = s9;
                this.f79545a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public i1(org.reactivestreams.c<? extends T> publisher) {
        this.f79544a = publisher;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(final io.reactivex.rxjava3.core.n0<? super T> o9) {
        this.f79544a.i(new a(o9));
    }
}
