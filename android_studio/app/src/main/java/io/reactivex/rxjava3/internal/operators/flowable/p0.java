package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableDoFinally.java */
/* loaded from: classes4.dex */
public final class p0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.a f77722c;

    /* compiled from: FlowableDoFinally.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends BasicIntQueueSubscription<T> implements io.reactivex.rxjava3.internal.fuseable.c<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77723g = 4109457741734051389L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super T> f77724b;

        /* renamed from: c  reason: collision with root package name */
        final q7.a f77725c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f77726d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.n<T> f77727e;

        /* renamed from: f  reason: collision with root package name */
        boolean f77728f;

        a(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, q7.a onFinally) {
            this.f77724b = actual;
            this.f77725c = onFinally;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77726d.cancel();
            j();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f77727e.clear();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            return this.f77724b.h(t9);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f77727e.isEmpty();
        }

        void j() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f77725c.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77724b.onComplete();
            j();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77724b.onError(t9);
            j();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77724b.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77726d, s9)) {
                this.f77726d = s9;
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    this.f77727e = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                }
                this.f77724b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll = this.f77727e.poll();
            if (poll == null && this.f77728f) {
                j();
            }
            return poll;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77726d.request(n9);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            io.reactivex.rxjava3.internal.fuseable.n<T> nVar = this.f77727e;
            if (nVar == null || (mode & 4) != 0) {
                return 0;
            }
            int requestFusion = nVar.requestFusion(mode);
            if (requestFusion != 0) {
                this.f77728f = requestFusion == 1;
            }
            return requestFusion;
        }
    }

    /* compiled from: FlowableDoFinally.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends BasicIntQueueSubscription<T> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77729g = 4109457741734051389L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77730b;

        /* renamed from: c  reason: collision with root package name */
        final q7.a f77731c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f77732d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.n<T> f77733e;

        /* renamed from: f  reason: collision with root package name */
        boolean f77734f;

        b(org.reactivestreams.d<? super T> actual, q7.a onFinally) {
            this.f77730b = actual;
            this.f77731c = onFinally;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77732d.cancel();
            j();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f77733e.clear();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f77733e.isEmpty();
        }

        void j() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f77731c.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77730b.onComplete();
            j();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77730b.onError(t9);
            j();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77730b.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77732d, s9)) {
                this.f77732d = s9;
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    this.f77733e = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                }
                this.f77730b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll = this.f77733e.poll();
            if (poll == null && this.f77734f) {
                j();
            }
            return poll;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77732d.request(n9);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            io.reactivex.rxjava3.internal.fuseable.n<T> nVar = this.f77733e;
            if (nVar == null || (mode & 4) != 0) {
                return 0;
            }
            int requestFusion = nVar.requestFusion(mode);
            if (requestFusion != 0) {
                this.f77734f = requestFusion == 1;
            }
            return requestFusion;
        }
    }

    public p0(io.reactivex.rxjava3.core.m<T> source, q7.a onFinally) {
        super(source);
        this.f77722c = onFinally;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            this.f76811b.G6(new a((io.reactivex.rxjava3.internal.fuseable.c) s9, this.f77722c));
        } else {
            this.f76811b.G6(new b(s9, this.f77722c));
        }
    }
}
