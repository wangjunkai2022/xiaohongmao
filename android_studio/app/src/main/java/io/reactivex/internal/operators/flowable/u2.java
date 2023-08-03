package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableRangeLong.java */
/* loaded from: classes3.dex */
public final class u2 extends io.reactivex.j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final long f72800b;

    /* renamed from: c  reason: collision with root package name */
    final long f72801c;

    /* compiled from: FlowableRangeLong.java */
    /* loaded from: classes3.dex */
    static abstract class a extends BasicQueueSubscription<Long> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f72802e = -2252972430506210021L;

        /* renamed from: b  reason: collision with root package name */
        final long f72803b;

        /* renamed from: c  reason: collision with root package name */
        long f72804c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f72805d;

        a(long j4, long j10) {
            this.f72804c = j4;
            this.f72803b = j10;
        }

        abstract void a();

        @Override // o7.o
        @m7.f
        /* renamed from: b */
        public final Long poll() {
            long j4 = this.f72804c;
            if (j4 == this.f72803b) {
                return null;
            }
            this.f72804c = 1 + j4;
            return Long.valueOf(j4);
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f72805d = true;
        }

        @Override // o7.o
        public final void clear() {
            this.f72804c = this.f72803b;
        }

        abstract void h(long j4);

        @Override // o7.o
        public final boolean isEmpty() {
            return this.f72804c == this.f72803b;
        }

        @Override // org.reactivestreams.e
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4) && io.reactivex.internal.util.b.a(this, j4) == 0) {
                if (j4 == Long.MAX_VALUE) {
                    a();
                } else {
                    h(j4);
                }
            }
        }

        @Override // o7.k
        public final int requestFusion(int i4) {
            return i4 & 1;
        }
    }

    /* compiled from: FlowableRangeLong.java */
    /* loaded from: classes3.dex */
    static final class b extends a {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72806g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final o7.a<? super Long> f72807f;

        b(o7.a<? super Long> aVar, long j4, long j10) {
            super(j4, j10);
            this.f72807f = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.u2.a
        void a() {
            long j4 = this.f72803b;
            o7.a<? super Long> aVar = this.f72807f;
            for (long j10 = this.f72804c; j10 != j4; j10++) {
                if (this.f72805d) {
                    return;
                }
                aVar.h(Long.valueOf(j10));
            }
            if (this.f72805d) {
                return;
            }
            aVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.u2.a
        void h(long j4) {
            long j10 = this.f72803b;
            long j11 = this.f72804c;
            o7.a<? super Long> aVar = this.f72807f;
            do {
                long j12 = 0;
                while (true) {
                    if (j12 == j4 || j11 == j10) {
                        if (j11 == j10) {
                            if (this.f72805d) {
                                return;
                            }
                            aVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j12 == j4) {
                            this.f72804c = j11;
                            j4 = addAndGet(-j12);
                        }
                    } else if (this.f72805d) {
                        return;
                    } else {
                        if (aVar.h(Long.valueOf(j11))) {
                            j12++;
                        }
                        j11++;
                    }
                }
            } while (j4 != 0);
        }
    }

    /* compiled from: FlowableRangeLong.java */
    /* loaded from: classes3.dex */
    static final class c extends a {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72808g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final org.reactivestreams.d<? super Long> f72809f;

        c(org.reactivestreams.d<? super Long> dVar, long j4, long j10) {
            super(j4, j10);
            this.f72809f = dVar;
        }

        @Override // io.reactivex.internal.operators.flowable.u2.a
        void a() {
            long j4 = this.f72803b;
            org.reactivestreams.d<? super Long> dVar = this.f72809f;
            for (long j10 = this.f72804c; j10 != j4; j10++) {
                if (this.f72805d) {
                    return;
                }
                dVar.onNext(Long.valueOf(j10));
            }
            if (this.f72805d) {
                return;
            }
            dVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.u2.a
        void h(long j4) {
            long j10 = this.f72803b;
            long j11 = this.f72804c;
            org.reactivestreams.d<? super Long> dVar = this.f72809f;
            do {
                long j12 = 0;
                while (true) {
                    if (j12 == j4 || j11 == j10) {
                        if (j11 == j10) {
                            if (this.f72805d) {
                                return;
                            }
                            dVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j12 == j4) {
                            this.f72804c = j11;
                            j4 = addAndGet(-j12);
                        }
                    } else if (this.f72805d) {
                        return;
                    } else {
                        dVar.onNext(Long.valueOf(j11));
                        j12++;
                        j11++;
                    }
                }
            } while (j4 != 0);
        }
    }

    public u2(long j4, long j10) {
        this.f72800b = j4;
        this.f72801c = j4 + j10;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super Long> dVar) {
        if (dVar instanceof o7.a) {
            dVar.onSubscribe(new b((o7.a) dVar, this.f72800b, this.f72801c));
        } else {
            dVar.onSubscribe(new c(dVar, this.f72800b, this.f72801c));
        }
    }
}
