package io.reactivex.internal.operators.observable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: ObservableFromPublisher.java */
/* loaded from: classes3.dex */
public final class g1<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f74132a;

    /* compiled from: ObservableFromPublisher.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74133a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f74134b;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f74133a = g0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74134b.cancel();
            this.f74134b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74134b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f74133a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f74133a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f74133a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f74134b, eVar)) {
                this.f74134b = eVar;
                this.f74133a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public g1(org.reactivestreams.c<? extends T> cVar) {
        this.f74132a = cVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f74132a.i(new a(g0Var));
    }
}
