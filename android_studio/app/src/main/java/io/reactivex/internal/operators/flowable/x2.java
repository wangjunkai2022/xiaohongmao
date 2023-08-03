package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableReduceSeedSingle.java */
/* loaded from: classes3.dex */
public final class x2<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f72999a;

    /* renamed from: b  reason: collision with root package name */
    final R f73000b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<R, ? super T, R> f73001c;

    /* compiled from: FlowableReduceSeedSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super R> f73002a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<R, ? super T, R> f73003b;

        /* renamed from: c  reason: collision with root package name */
        R f73004c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f73005d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.l0<? super R> l0Var, n7.c<R, ? super T, R> cVar, R r9) {
            this.f73002a = l0Var;
            this.f73004c = r9;
            this.f73003b = cVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73005d.cancel();
            this.f73005d = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73005d == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            R r9 = this.f73004c;
            if (r9 != null) {
                this.f73004c = null;
                this.f73005d = SubscriptionHelper.CANCELLED;
                this.f73002a.onSuccess(r9);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f73004c != null) {
                this.f73004c = null;
                this.f73005d = SubscriptionHelper.CANCELLED;
                this.f73002a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            R r9 = this.f73004c;
            if (r9 != null) {
                try {
                    this.f73004c = (R) io.reactivex.internal.functions.b.g(this.f73003b.apply(r9, t9), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f73005d.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73005d, eVar)) {
                this.f73005d = eVar;
                this.f73002a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public x2(org.reactivestreams.c<T> cVar, R r9, n7.c<R, ? super T, R> cVar2) {
        this.f72999a = cVar;
        this.f73000b = r9;
        this.f73001c = cVar2;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super R> l0Var) {
        this.f72999a.i(new a(l0Var, this.f73001c, this.f73000b));
    }
}
