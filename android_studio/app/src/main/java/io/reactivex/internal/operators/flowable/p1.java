package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableIgnoreElements.java */
/* loaded from: classes3.dex */
public final class p1<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableIgnoreElements.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, o7.l<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72435a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f72436b;

        a(org.reactivestreams.d<? super T> dVar) {
            this.f72435a = dVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72436b.cancel();
        }

        @Override // o7.o
        public void clear() {
        }

        @Override // o7.o
        public boolean isEmpty() {
            return true;
        }

        @Override // o7.o
        public boolean offer(T t9) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72435a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72435a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72436b, eVar)) {
                this.f72436b = eVar;
                this.f72435a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() {
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return i4 & 2;
        }

        @Override // o7.o
        public boolean offer(T t9, T t10) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    public p1(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar));
    }
}
