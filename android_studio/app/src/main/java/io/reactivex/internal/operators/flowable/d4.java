package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableTakeLastTimed.java */
/* loaded from: classes3.dex */
public final class d4<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f71752c;

    /* renamed from: d  reason: collision with root package name */
    final long f71753d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f71754e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.h0 f71755f;

    /* renamed from: g  reason: collision with root package name */
    final int f71756g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f71757h;

    /* compiled from: FlowableTakeLastTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: m  reason: collision with root package name */
        private static final long f71758m = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71759a;

        /* renamed from: b  reason: collision with root package name */
        final long f71760b;

        /* renamed from: c  reason: collision with root package name */
        final long f71761c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f71762d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.h0 f71763e;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f71764f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f71765g;

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f71766h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f71767i = new AtomicLong();

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f71768j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f71769k;

        /* renamed from: l  reason: collision with root package name */
        Throwable f71770l;

        a(org.reactivestreams.d<? super T> dVar, long j4, long j10, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4, boolean z9) {
            this.f71759a = dVar;
            this.f71760b = j4;
            this.f71761c = j10;
            this.f71762d = timeUnit;
            this.f71763e = h0Var;
            this.f71764f = new io.reactivex.internal.queue.b<>(i4);
            this.f71765g = z9;
        }

        boolean a(boolean z9, org.reactivestreams.d<? super T> dVar, boolean z10) {
            if (this.f71768j) {
                this.f71764f.clear();
                return true;
            } else if (z10) {
                if (z9) {
                    Throwable th = this.f71770l;
                    if (th != null) {
                        dVar.onError(th);
                    } else {
                        dVar.onComplete();
                    }
                    return true;
                }
                return false;
            } else {
                Throwable th2 = this.f71770l;
                if (th2 != null) {
                    this.f71764f.clear();
                    dVar.onError(th2);
                    return true;
                } else if (z9) {
                    dVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f71759a;
            io.reactivex.internal.queue.b<Object> bVar = this.f71764f;
            boolean z9 = this.f71765g;
            int i4 = 1;
            do {
                if (this.f71769k) {
                    if (a(bVar.isEmpty(), dVar, z9)) {
                        return;
                    }
                    long j4 = this.f71767i.get();
                    long j10 = 0;
                    while (true) {
                        if (a(bVar.peek() == null, dVar, z9)) {
                            return;
                        }
                        if (j4 != j10) {
                            bVar.poll();
                            dVar.onNext(bVar.poll());
                            j10++;
                        } else if (j10 != 0) {
                            io.reactivex.internal.util.b.e(this.f71767i, j10);
                        }
                    }
                }
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        void c(long j4, io.reactivex.internal.queue.b<Object> bVar) {
            long j10 = this.f71761c;
            long j11 = this.f71760b;
            boolean z9 = j11 == Long.MAX_VALUE;
            while (!bVar.isEmpty()) {
                if (((Long) bVar.peek()).longValue() >= j4 - j10 && (z9 || (bVar.p() >> 1) <= j11)) {
                    return;
                }
                bVar.poll();
                bVar.poll();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f71768j) {
                return;
            }
            this.f71768j = true;
            this.f71766h.cancel();
            if (getAndIncrement() == 0) {
                this.f71764f.clear();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            c(this.f71763e.e(this.f71762d), this.f71764f);
            this.f71769k = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71765g) {
                c(this.f71763e.e(this.f71762d), this.f71764f);
            }
            this.f71770l = th;
            this.f71769k = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            io.reactivex.internal.queue.b<Object> bVar = this.f71764f;
            long e4 = this.f71763e.e(this.f71762d);
            bVar.offer(Long.valueOf(e4), t9);
            c(e4, bVar);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71766h, eVar)) {
                this.f71766h = eVar;
                this.f71759a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f71767i, j4);
                b();
            }
        }
    }

    public d4(io.reactivex.j<T> jVar, long j4, long j10, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4, boolean z9) {
        super(jVar);
        this.f71752c = j4;
        this.f71753d = j10;
        this.f71754e = timeUnit;
        this.f71755f = h0Var;
        this.f71756g = i4;
        this.f71757h = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f71752c, this.f71753d, this.f71754e, this.f71755f, this.f71756g, this.f71757h));
    }
}
