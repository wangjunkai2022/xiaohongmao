package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableRangeLong.java */
/* loaded from: classes4.dex */
public final class x2 extends io.reactivex.rxjava3.core.m<Long> {

    /* renamed from: b  reason: collision with root package name */
    final long f78227b;

    /* renamed from: c  reason: collision with root package name */
    final long f78228c;

    /* compiled from: FlowableRangeLong.java */
    /* loaded from: classes4.dex */
    static abstract class a extends BasicQueueSubscription<Long> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78229e = -2252972430506210021L;

        /* renamed from: b  reason: collision with root package name */
        final long f78230b;

        /* renamed from: c  reason: collision with root package name */
        long f78231c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f78232d;

        a(long index, long end) {
            this.f78231c = index;
            this.f78230b = end;
        }

        abstract void a();

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        /* renamed from: b */
        public final Long poll() {
            long j4 = this.f78231c;
            if (j4 == this.f78230b) {
                return null;
            }
            this.f78231c = 1 + j4;
            return Long.valueOf(j4);
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f78232d = true;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public final void clear() {
            this.f78231c = this.f78230b;
        }

        abstract void h(long r9);

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public final boolean isEmpty() {
            return this.f78231c == this.f78230b;
        }

        @Override // org.reactivestreams.e
        public final void request(long n9) {
            if (SubscriptionHelper.validate(n9) && io.reactivex.rxjava3.internal.util.b.a(this, n9) == 0) {
                if (n9 == Long.MAX_VALUE) {
                    a();
                } else {
                    h(n9);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public final int requestFusion(int mode) {
            return mode & 1;
        }
    }

    /* compiled from: FlowableRangeLong.java */
    /* loaded from: classes4.dex */
    static final class b extends a {

        /* renamed from: g  reason: collision with root package name */
        private static final long f78233g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super Long> f78234f;

        b(io.reactivex.rxjava3.internal.fuseable.c<? super Long> actual, long index, long end) {
            super(index, end);
            this.f78234f = actual;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.x2.a
        void a() {
            long j4 = this.f78230b;
            io.reactivex.rxjava3.internal.fuseable.c<? super Long> cVar = this.f78234f;
            for (long j10 = this.f78231c; j10 != j4; j10++) {
                if (this.f78232d) {
                    return;
                }
                cVar.h(Long.valueOf(j10));
            }
            if (this.f78232d) {
                return;
            }
            cVar.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.x2.a
        void h(long r9) {
            long j4 = this.f78230b;
            long j10 = this.f78231c;
            io.reactivex.rxjava3.internal.fuseable.c<? super Long> cVar = this.f78234f;
            do {
                long j11 = 0;
                while (true) {
                    if (j11 == r9 || j10 == j4) {
                        if (j10 == j4) {
                            if (this.f78232d) {
                                return;
                            }
                            cVar.onComplete();
                            return;
                        }
                        r9 = get();
                        if (j11 == r9) {
                            this.f78231c = j10;
                            r9 = addAndGet(-j11);
                        }
                    } else if (this.f78232d) {
                        return;
                    } else {
                        if (cVar.h(Long.valueOf(j10))) {
                            j11++;
                        }
                        j10++;
                    }
                }
            } while (r9 != 0);
        }
    }

    /* compiled from: FlowableRangeLong.java */
    /* loaded from: classes4.dex */
    static final class c extends a {

        /* renamed from: g  reason: collision with root package name */
        private static final long f78235g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final org.reactivestreams.d<? super Long> f78236f;

        c(org.reactivestreams.d<? super Long> actual, long index, long end) {
            super(index, end);
            this.f78236f = actual;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.x2.a
        void a() {
            long j4 = this.f78230b;
            org.reactivestreams.d<? super Long> dVar = this.f78236f;
            for (long j10 = this.f78231c; j10 != j4; j10++) {
                if (this.f78232d) {
                    return;
                }
                dVar.onNext(Long.valueOf(j10));
            }
            if (this.f78232d) {
                return;
            }
            dVar.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.x2.a
        void h(long r9) {
            long j4 = this.f78230b;
            long j10 = this.f78231c;
            org.reactivestreams.d<? super Long> dVar = this.f78236f;
            do {
                long j11 = 0;
                while (true) {
                    if (j11 == r9 || j10 == j4) {
                        if (j10 == j4) {
                            if (this.f78232d) {
                                return;
                            }
                            dVar.onComplete();
                            return;
                        }
                        r9 = get();
                        if (j11 == r9) {
                            this.f78231c = j10;
                            r9 = addAndGet(-j11);
                        }
                    } else if (this.f78232d) {
                        return;
                    } else {
                        dVar.onNext(Long.valueOf(j10));
                        j11++;
                        j10++;
                    }
                }
            } while (r9 != 0);
        }
    }

    public x2(long start, long count) {
        this.f78227b = start;
        this.f78228c = start + count;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super Long> s9) {
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            s9.onSubscribe(new b((io.reactivex.rxjava3.internal.fuseable.c) s9, this.f78227b, this.f78228c));
        } else {
            s9.onSubscribe(new c(s9, this.f78227b, this.f78228c));
        }
    }
}
