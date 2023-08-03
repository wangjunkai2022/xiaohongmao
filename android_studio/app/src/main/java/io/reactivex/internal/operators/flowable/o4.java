package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: FlowableToList.java */
/* loaded from: classes3.dex */
public final class o4<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final Callable<U> f72423c;

    /* compiled from: FlowableToList.java */
    /* loaded from: classes3.dex */
    static final class a<T, U extends Collection<? super T>> extends DeferredScalarSubscription<U> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: n  reason: collision with root package name */
        private static final long f72424n = -8134157938864266736L;

        /* renamed from: m  reason: collision with root package name */
        org.reactivestreams.e f72425m;

        /* JADX WARN: Multi-variable type inference failed */
        a(org.reactivestreams.d<? super U> dVar, U u9) {
            super(dVar);
            this.f75877c = u9;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f72425m.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            complete(this.f75877c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75877c = null;
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            Collection collection = (Collection) this.f75877c;
            if (collection != null) {
                collection.add(t9);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72425m, eVar)) {
                this.f72425m = eVar;
                this.f75876b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public o4(io.reactivex.j<T> jVar, Callable<U> callable) {
        super(jVar);
        this.f72423c = callable;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super U> dVar) {
        try {
            this.f71538b.j6(new a(dVar, (Collection) io.reactivex.internal.functions.b.g(this.f72423c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }
}
