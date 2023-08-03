package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableAnySingle.java */
/* loaded from: classes3.dex */
public final class j<T> extends io.reactivex.i0<Boolean> implements o7.b<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f72073a;

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f72074b;

    /* compiled from: FlowableAnySingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f72075a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f72076b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72077c;

        /* renamed from: d  reason: collision with root package name */
        boolean f72078d;

        a(io.reactivex.l0<? super Boolean> l0Var, n7.r<? super T> rVar) {
            this.f72075a = l0Var;
            this.f72076b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72077c.cancel();
            this.f72077c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72077c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72078d) {
                return;
            }
            this.f72078d = true;
            this.f72077c = SubscriptionHelper.CANCELLED;
            this.f72075a.onSuccess(Boolean.FALSE);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72078d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72078d = true;
            this.f72077c = SubscriptionHelper.CANCELLED;
            this.f72075a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72078d) {
                return;
            }
            try {
                if (this.f72076b.test(t9)) {
                    this.f72078d = true;
                    this.f72077c.cancel();
                    this.f72077c = SubscriptionHelper.CANCELLED;
                    this.f72075a.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72077c.cancel();
                this.f72077c = SubscriptionHelper.CANCELLED;
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72077c, eVar)) {
                this.f72077c = eVar;
                this.f72075a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public j(io.reactivex.j<T> jVar, n7.r<? super T> rVar) {
        this.f72073a = jVar;
        this.f72074b = rVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Boolean> l0Var) {
        this.f72073a.j6(new a(l0Var, this.f72074b));
    }

    @Override // o7.b
    public io.reactivex.j<Boolean> c() {
        return io.reactivex.plugins.a.P(new i(this.f72073a, this.f72074b));
    }
}
