package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableRange.java */
/* loaded from: classes3.dex */
public final class t2 extends io.reactivex.j<Integer> {

    /* renamed from: b  reason: collision with root package name */
    final int f72733b;

    /* renamed from: c  reason: collision with root package name */
    final int f72734c;

    /* compiled from: FlowableRange.java */
    /* loaded from: classes3.dex */
    static abstract class a extends BasicQueueSubscription<Integer> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f72735e = -2252972430506210021L;

        /* renamed from: b  reason: collision with root package name */
        final int f72736b;

        /* renamed from: c  reason: collision with root package name */
        int f72737c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f72738d;

        a(int i4, int i10) {
            this.f72737c = i4;
            this.f72736b = i10;
        }

        abstract void a();

        @Override // o7.o
        @m7.f
        /* renamed from: b */
        public final Integer poll() {
            int i4 = this.f72737c;
            if (i4 == this.f72736b) {
                return null;
            }
            this.f72737c = i4 + 1;
            return Integer.valueOf(i4);
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f72738d = true;
        }

        @Override // o7.o
        public final void clear() {
            this.f72737c = this.f72736b;
        }

        abstract void h(long j4);

        @Override // o7.o
        public final boolean isEmpty() {
            return this.f72737c == this.f72736b;
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

    /* compiled from: FlowableRange.java */
    /* loaded from: classes3.dex */
    static final class b extends a {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72739g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final o7.a<? super Integer> f72740f;

        b(o7.a<? super Integer> aVar, int i4, int i10) {
            super(i4, i10);
            this.f72740f = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.t2.a
        void a() {
            int i4 = this.f72736b;
            o7.a<? super Integer> aVar = this.f72740f;
            for (int i10 = this.f72737c; i10 != i4; i10++) {
                if (this.f72738d) {
                    return;
                }
                aVar.h(Integer.valueOf(i10));
            }
            if (this.f72738d) {
                return;
            }
            aVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.t2.a
        void h(long j4) {
            int i4 = this.f72736b;
            int i10 = this.f72737c;
            o7.a<? super Integer> aVar = this.f72740f;
            do {
                long j10 = 0;
                while (true) {
                    if (j10 == j4 || i10 == i4) {
                        if (i10 == i4) {
                            if (this.f72738d) {
                                return;
                            }
                            aVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j10 == j4) {
                            this.f72737c = i10;
                            j4 = addAndGet(-j10);
                        }
                    } else if (this.f72738d) {
                        return;
                    } else {
                        if (aVar.h(Integer.valueOf(i10))) {
                            j10++;
                        }
                        i10++;
                    }
                }
            } while (j4 != 0);
        }
    }

    /* compiled from: FlowableRange.java */
    /* loaded from: classes3.dex */
    static final class c extends a {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72741g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final org.reactivestreams.d<? super Integer> f72742f;

        c(org.reactivestreams.d<? super Integer> dVar, int i4, int i10) {
            super(i4, i10);
            this.f72742f = dVar;
        }

        @Override // io.reactivex.internal.operators.flowable.t2.a
        void a() {
            int i4 = this.f72736b;
            org.reactivestreams.d<? super Integer> dVar = this.f72742f;
            for (int i10 = this.f72737c; i10 != i4; i10++) {
                if (this.f72738d) {
                    return;
                }
                dVar.onNext(Integer.valueOf(i10));
            }
            if (this.f72738d) {
                return;
            }
            dVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.t2.a
        void h(long j4) {
            int i4 = this.f72736b;
            int i10 = this.f72737c;
            org.reactivestreams.d<? super Integer> dVar = this.f72742f;
            do {
                long j10 = 0;
                while (true) {
                    if (j10 == j4 || i10 == i4) {
                        if (i10 == i4) {
                            if (this.f72738d) {
                                return;
                            }
                            dVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j10 == j4) {
                            this.f72737c = i10;
                            j4 = addAndGet(-j10);
                        }
                    } else if (this.f72738d) {
                        return;
                    } else {
                        dVar.onNext(Integer.valueOf(i10));
                        j10++;
                        i10++;
                    }
                }
            } while (j4 != 0);
        }
    }

    public t2(int i4, int i10) {
        this.f72733b = i4;
        this.f72734c = i4 + i10;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super Integer> dVar) {
        if (dVar instanceof o7.a) {
            dVar.onSubscribe(new b((o7.a) dVar, this.f72733b, this.f72734c));
        } else {
            dVar.onSubscribe(new c(dVar, this.f72733b, this.f72734c));
        }
    }
}
