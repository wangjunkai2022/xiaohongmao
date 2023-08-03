package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;

/* compiled from: ParallelCollect.java */
/* loaded from: classes3.dex */
public final class a<T, C> extends io.reactivex.parallel.a<C> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f75133a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends C> f75134b;

    /* renamed from: c  reason: collision with root package name */
    final n7.b<? super C, ? super T> f75135c;

    /* compiled from: ParallelCollect.java */
    /* renamed from: io.reactivex.internal.operators.parallel.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0603a<T, C> extends DeferredScalarSubscriber<T, C> {

        /* renamed from: s  reason: collision with root package name */
        private static final long f75136s = -4767392946044436228L;

        /* renamed from: p  reason: collision with root package name */
        final n7.b<? super C, ? super T> f75137p;

        /* renamed from: q  reason: collision with root package name */
        C f75138q;

        /* renamed from: r  reason: collision with root package name */
        boolean f75139r;

        C0603a(org.reactivestreams.d<? super C> dVar, C c10, n7.b<? super C, ? super T> bVar) {
            super(dVar);
            this.f75138q = c10;
            this.f75137p = bVar;
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f75777m.cancel();
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.d
        public void onComplete() {
            if (this.f75139r) {
                return;
            }
            this.f75139r = true;
            C c10 = this.f75138q;
            this.f75138q = null;
            complete(c10);
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75139r) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75139r = true;
            this.f75138q = null;
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75139r) {
                return;
            }
            try {
                this.f75137p.accept((C) this.f75138q, t9);
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

    public a(io.reactivex.parallel.a<? extends T> aVar, Callable<? extends C> callable, n7.b<? super C, ? super T> bVar) {
        this.f75133a = aVar;
        this.f75134b = callable;
        this.f75135c = bVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75133a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super C>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<? super Object>[] dVarArr2 = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                try {
                    dVarArr2[i4] = new C0603a(dVarArr[i4], io.reactivex.internal.functions.b.g(this.f75134b.call(), "The initialSupplier returned a null value"), this.f75135c);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    V(dVarArr, th);
                    return;
                }
            }
            this.f75133a.Q(dVarArr2);
        }
    }

    void V(org.reactivestreams.d<?>[] dVarArr, Throwable th) {
        for (org.reactivestreams.d<?> dVar : dVarArr) {
            EmptySubscription.error(th, dVar);
        }
    }
}
