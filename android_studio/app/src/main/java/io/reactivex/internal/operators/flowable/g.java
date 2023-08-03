package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableAllSingle.java */
/* loaded from: classes3.dex */
public final class g<T> extends io.reactivex.i0<Boolean> implements o7.b<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f71916a;

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f71917b;

    /* compiled from: FlowableAllSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f71918a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f71919b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f71920c;

        /* renamed from: d  reason: collision with root package name */
        boolean f71921d;

        a(io.reactivex.l0<? super Boolean> l0Var, n7.r<? super T> rVar) {
            this.f71918a = l0Var;
            this.f71919b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71920c.cancel();
            this.f71920c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71920c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71921d) {
                return;
            }
            this.f71921d = true;
            this.f71920c = SubscriptionHelper.CANCELLED;
            this.f71918a.onSuccess(Boolean.TRUE);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71921d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f71921d = true;
            this.f71920c = SubscriptionHelper.CANCELLED;
            this.f71918a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71921d) {
                return;
            }
            try {
                if (this.f71919b.test(t9)) {
                    return;
                }
                this.f71921d = true;
                this.f71920c.cancel();
                this.f71920c = SubscriptionHelper.CANCELLED;
                this.f71918a.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71920c.cancel();
                this.f71920c = SubscriptionHelper.CANCELLED;
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71920c, eVar)) {
                this.f71920c = eVar;
                this.f71918a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public g(io.reactivex.j<T> jVar, n7.r<? super T> rVar) {
        this.f71916a = jVar;
        this.f71917b = rVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Boolean> l0Var) {
        this.f71916a.j6(new a(l0Var, this.f71917b));
    }

    @Override // o7.b
    public io.reactivex.j<Boolean> c() {
        return io.reactivex.plugins.a.P(new f(this.f71916a, this.f71917b));
    }
}
