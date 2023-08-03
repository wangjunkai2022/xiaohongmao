package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EmptyComponent;

/* compiled from: FlowableDetach.java */
/* loaded from: classes3.dex */
public final class m0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableDetach.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        org.reactivestreams.d<? super T> f72250a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f72251b;

        a(org.reactivestreams.d<? super T> dVar) {
            this.f72250a = dVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            org.reactivestreams.e eVar = this.f72251b;
            this.f72251b = EmptyComponent.INSTANCE;
            this.f72250a = EmptyComponent.asSubscriber();
            eVar.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.d<? super T> dVar = this.f72250a;
            this.f72251b = EmptyComponent.INSTANCE;
            this.f72250a = EmptyComponent.asSubscriber();
            dVar.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            org.reactivestreams.d<? super T> dVar = this.f72250a;
            this.f72251b = EmptyComponent.INSTANCE;
            this.f72250a = EmptyComponent.asSubscriber();
            dVar.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72250a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72251b, eVar)) {
                this.f72251b = eVar;
                this.f72250a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72251b.request(j4);
        }
    }

    public m0(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar));
    }
}
