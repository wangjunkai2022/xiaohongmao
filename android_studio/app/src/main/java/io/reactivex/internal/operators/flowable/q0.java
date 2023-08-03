package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableDoFinally.java */
/* loaded from: classes3.dex */
public final class q0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.a f72497c;

    /* compiled from: FlowableDoFinally.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends BasicIntQueueSubscription<T> implements o7.a<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72498g = 4109457741734051389L;

        /* renamed from: b  reason: collision with root package name */
        final o7.a<? super T> f72499b;

        /* renamed from: c  reason: collision with root package name */
        final n7.a f72500c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f72501d;

        /* renamed from: e  reason: collision with root package name */
        o7.l<T> f72502e;

        /* renamed from: f  reason: collision with root package name */
        boolean f72503f;

        a(o7.a<? super T> aVar, n7.a aVar2) {
            this.f72499b = aVar;
            this.f72500c = aVar2;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72501d.cancel();
            j();
        }

        @Override // o7.o
        public void clear() {
            this.f72502e.clear();
        }

        @Override // o7.a
        public boolean h(T t9) {
            return this.f72499b.h(t9);
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f72502e.isEmpty();
        }

        void j() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f72500c.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72499b.onComplete();
            j();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72499b.onError(th);
            j();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72499b.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72501d, eVar)) {
                this.f72501d = eVar;
                if (eVar instanceof o7.l) {
                    this.f72502e = (o7.l) eVar;
                }
                this.f72499b.onSubscribe(this);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll = this.f72502e.poll();
            if (poll == null && this.f72503f) {
                j();
            }
            return poll;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72501d.request(j4);
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            o7.l<T> lVar = this.f72502e;
            if (lVar == null || (i4 & 4) != 0) {
                return 0;
            }
            int requestFusion = lVar.requestFusion(i4);
            if (requestFusion != 0) {
                this.f72503f = requestFusion == 1;
            }
            return requestFusion;
        }
    }

    /* compiled from: FlowableDoFinally.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends BasicIntQueueSubscription<T> implements io.reactivex.o<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72504g = 4109457741734051389L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72505b;

        /* renamed from: c  reason: collision with root package name */
        final n7.a f72506c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f72507d;

        /* renamed from: e  reason: collision with root package name */
        o7.l<T> f72508e;

        /* renamed from: f  reason: collision with root package name */
        boolean f72509f;

        b(org.reactivestreams.d<? super T> dVar, n7.a aVar) {
            this.f72505b = dVar;
            this.f72506c = aVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72507d.cancel();
            j();
        }

        @Override // o7.o
        public void clear() {
            this.f72508e.clear();
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f72508e.isEmpty();
        }

        void j() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f72506c.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72505b.onComplete();
            j();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72505b.onError(th);
            j();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72505b.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72507d, eVar)) {
                this.f72507d = eVar;
                if (eVar instanceof o7.l) {
                    this.f72508e = (o7.l) eVar;
                }
                this.f72505b.onSubscribe(this);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll = this.f72508e.poll();
            if (poll == null && this.f72509f) {
                j();
            }
            return poll;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72507d.request(j4);
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            o7.l<T> lVar = this.f72508e;
            if (lVar == null || (i4 & 4) != 0) {
                return 0;
            }
            int requestFusion = lVar.requestFusion(i4);
            if (requestFusion != 0) {
                this.f72509f = requestFusion == 1;
            }
            return requestFusion;
        }
    }

    public q0(io.reactivex.j<T> jVar, n7.a aVar) {
        super(jVar);
        this.f72497c = aVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        if (dVar instanceof o7.a) {
            this.f71538b.j6(new a((o7.a) dVar, this.f72497c));
        } else {
            this.f71538b.j6(new b(dVar, this.f72497c));
        }
    }
}
