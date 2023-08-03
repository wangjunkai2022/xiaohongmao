package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;

/* compiled from: FlowableToList.java */
/* loaded from: classes4.dex */
public final class r4<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final q7.s<U> f77875c;

    /* compiled from: FlowableToList.java */
    /* loaded from: classes4.dex */
    static final class a<T, U extends Collection<? super T>> extends DeferredScalarSubscription<U> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: n  reason: collision with root package name */
        private static final long f77876n = -8134157938864266736L;

        /* renamed from: m  reason: collision with root package name */
        org.reactivestreams.e f77877m;

        /* JADX WARN: Multi-variable type inference failed */
        a(org.reactivestreams.d<? super U> actual, U collection) {
            super(actual);
            this.f81292c = collection;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f77877m.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            complete(this.f81292c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f81292c = null;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            Collection collection = (Collection) this.f81292c;
            if (collection != null) {
                collection.add(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77877m, s9)) {
                this.f77877m = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public r4(io.reactivex.rxjava3.core.m<T> source, q7.s<U> collectionSupplier) {
        super(source);
        this.f77875c = collectionSupplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super U> s9) {
        try {
            this.f76811b.G6(new a(s9, (Collection) io.reactivex.rxjava3.internal.util.g.d(this.f77875c.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
