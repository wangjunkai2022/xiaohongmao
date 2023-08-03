package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;

/* compiled from: ParallelReduce.java */
/* loaded from: classes3.dex */
public final class m<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f75257a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<R> f75258b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<R, ? super T, R> f75259c;

    /* compiled from: ParallelReduce.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends DeferredScalarSubscriber<T, R> {

        /* renamed from: s  reason: collision with root package name */
        private static final long f75260s = 8200530050639449080L;

        /* renamed from: p  reason: collision with root package name */
        final n7.c<R, ? super T, R> f75261p;

        /* renamed from: q  reason: collision with root package name */
        R f75262q;

        /* renamed from: r  reason: collision with root package name */
        boolean f75263r;

        a(org.reactivestreams.d<? super R> dVar, R r9, n7.c<R, ? super T, R> cVar) {
            super(dVar);
            this.f75262q = r9;
            this.f75261p = cVar;
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f75777m.cancel();
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.d
        public void onComplete() {
            if (this.f75263r) {
                return;
            }
            this.f75263r = true;
            R r9 = this.f75262q;
            this.f75262q = null;
            complete(r9);
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75263r) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75263r = true;
            this.f75262q = null;
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75263r) {
                return;
            }
            try {
                this.f75262q = (R) io.reactivex.internal.functions.b.g(this.f75261p.apply(this.f75262q, t9), "The reducer returned a null value");
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75777m, eVar)) {
                this.f75777m = eVar;
                this.f75876b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public m(io.reactivex.parallel.a<? extends T> aVar, Callable<R> callable, n7.c<R, ? super T, R> cVar) {
        this.f75257a = aVar;
        this.f75258b = callable;
        this.f75259c = cVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75257a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super R>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<? super Object>[] dVarArr2 = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                try {
                    dVarArr2[i4] = new a(dVarArr[i4], io.reactivex.internal.functions.b.g(this.f75258b.call(), "The initialSupplier returned a null value"), this.f75259c);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    V(dVarArr, th);
                    return;
                }
            }
            this.f75257a.Q(dVarArr2);
        }
    }

    void V(org.reactivestreams.d<?>[] dVarArr, Throwable th) {
        for (org.reactivestreams.d<?> dVar : dVarArr) {
            EmptySubscription.error(th, dVar);
        }
    }
}
