package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: CompletableFromPublisher.java */
/* loaded from: classes4.dex */
public final class t<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f76722a;

    /* compiled from: CompletableFromPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76723a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f76724b;

        a(io.reactivex.rxjava3.core.d downstream) {
            this.f76723a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76724b.cancel();
            this.f76724b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76724b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f76723a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f76723a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76724b, s9)) {
                this.f76724b = s9;
                this.f76723a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public t(org.reactivestreams.c<T> flowable) {
        this.f76722a = flowable;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d downstream) {
        this.f76722a.i(new a(downstream));
    }
}
