package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;

/* compiled from: FlowableOnErrorNext.java */
/* loaded from: classes3.dex */
public final class n2<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends org.reactivestreams.c<? extends T>> f72374c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f72375d;

    /* compiled from: FlowableOnErrorNext.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends SubscriptionArbiter implements io.reactivex.o<T> {

        /* renamed from: p  reason: collision with root package name */
        private static final long f72376p = 4063763155303814625L;

        /* renamed from: j  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72377j;

        /* renamed from: k  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends org.reactivestreams.c<? extends T>> f72378k;

        /* renamed from: l  reason: collision with root package name */
        final boolean f72379l;

        /* renamed from: m  reason: collision with root package name */
        boolean f72380m;

        /* renamed from: n  reason: collision with root package name */
        boolean f72381n;

        /* renamed from: o  reason: collision with root package name */
        long f72382o;

        a(org.reactivestreams.d<? super T> dVar, n7.o<? super Throwable, ? extends org.reactivestreams.c<? extends T>> oVar, boolean z9) {
            super(false);
            this.f72377j = dVar;
            this.f72378k = oVar;
            this.f72379l = z9;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72381n) {
                return;
            }
            this.f72381n = true;
            this.f72380m = true;
            this.f72377j.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72380m) {
                if (this.f72381n) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                } else {
                    this.f72377j.onError(th);
                    return;
                }
            }
            this.f72380m = true;
            if (this.f72379l && !(th instanceof Exception)) {
                this.f72377j.onError(th);
                return;
            }
            try {
                org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72378k.apply(th), "The nextSupplier returned a null Publisher");
                long j4 = this.f72382o;
                if (j4 != 0) {
                    produced(j4);
                }
                cVar.i(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f72377j.onError(new CompositeException(th, th2));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72381n) {
                return;
            }
            if (!this.f72380m) {
                this.f72382o++;
            }
            this.f72377j.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            setSubscription(eVar);
        }
    }

    public n2(io.reactivex.j<T> jVar, n7.o<? super Throwable, ? extends org.reactivestreams.c<? extends T>> oVar, boolean z9) {
        super(jVar);
        this.f72374c = oVar;
        this.f72375d = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar = new a(dVar, this.f72374c, this.f72375d);
        dVar.onSubscribe(aVar);
        this.f71538b.j6(aVar);
    }
}
