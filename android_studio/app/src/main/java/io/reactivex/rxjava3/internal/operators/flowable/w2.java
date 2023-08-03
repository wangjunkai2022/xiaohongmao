package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableRange.java */
/* loaded from: classes4.dex */
public final class w2 extends io.reactivex.rxjava3.core.m<Integer> {

    /* renamed from: b  reason: collision with root package name */
    final int f78177b;

    /* renamed from: c  reason: collision with root package name */
    final int f78178c;

    /* compiled from: FlowableRange.java */
    /* loaded from: classes4.dex */
    static abstract class a extends BasicQueueSubscription<Integer> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78179e = -2252972430506210021L;

        /* renamed from: b  reason: collision with root package name */
        final int f78180b;

        /* renamed from: c  reason: collision with root package name */
        int f78181c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f78182d;

        a(int index, int end) {
            this.f78181c = index;
            this.f78180b = end;
        }

        abstract void a();

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        /* renamed from: b */
        public final Integer poll() {
            int i4 = this.f78181c;
            if (i4 == this.f78180b) {
                return null;
            }
            this.f78181c = i4 + 1;
            return Integer.valueOf(i4);
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f78182d = true;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public final void clear() {
            this.f78181c = this.f78180b;
        }

        abstract void h(long r9);

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public final boolean isEmpty() {
            return this.f78181c == this.f78180b;
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

    /* compiled from: FlowableRange.java */
    /* loaded from: classes4.dex */
    static final class b extends a {

        /* renamed from: g  reason: collision with root package name */
        private static final long f78183g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super Integer> f78184f;

        b(io.reactivex.rxjava3.internal.fuseable.c<? super Integer> actual, int index, int end) {
            super(index, end);
            this.f78184f = actual;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.w2.a
        void a() {
            int i4 = this.f78180b;
            io.reactivex.rxjava3.internal.fuseable.c<? super Integer> cVar = this.f78184f;
            for (int i10 = this.f78181c; i10 != i4; i10++) {
                if (this.f78182d) {
                    return;
                }
                cVar.h(Integer.valueOf(i10));
            }
            if (this.f78182d) {
                return;
            }
            cVar.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.w2.a
        void h(long r9) {
            int i4 = this.f78180b;
            int i10 = this.f78181c;
            io.reactivex.rxjava3.internal.fuseable.c<? super Integer> cVar = this.f78184f;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 == r9 || i10 == i4) {
                        if (i10 == i4) {
                            if (this.f78182d) {
                                return;
                            }
                            cVar.onComplete();
                            return;
                        }
                        r9 = get();
                        if (j4 == r9) {
                            this.f78181c = i10;
                            r9 = addAndGet(-j4);
                        }
                    } else if (this.f78182d) {
                        return;
                    } else {
                        if (cVar.h(Integer.valueOf(i10))) {
                            j4++;
                        }
                        i10++;
                    }
                }
            } while (r9 != 0);
        }
    }

    /* compiled from: FlowableRange.java */
    /* loaded from: classes4.dex */
    static final class c extends a {

        /* renamed from: g  reason: collision with root package name */
        private static final long f78185g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final org.reactivestreams.d<? super Integer> f78186f;

        c(org.reactivestreams.d<? super Integer> actual, int index, int end) {
            super(index, end);
            this.f78186f = actual;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.w2.a
        void a() {
            int i4 = this.f78180b;
            org.reactivestreams.d<? super Integer> dVar = this.f78186f;
            for (int i10 = this.f78181c; i10 != i4; i10++) {
                if (this.f78182d) {
                    return;
                }
                dVar.onNext(Integer.valueOf(i10));
            }
            if (this.f78182d) {
                return;
            }
            dVar.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.w2.a
        void h(long r9) {
            int i4 = this.f78180b;
            int i10 = this.f78181c;
            org.reactivestreams.d<? super Integer> dVar = this.f78186f;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 == r9 || i10 == i4) {
                        if (i10 == i4) {
                            if (this.f78182d) {
                                return;
                            }
                            dVar.onComplete();
                            return;
                        }
                        r9 = get();
                        if (j4 == r9) {
                            this.f78181c = i10;
                            r9 = addAndGet(-j4);
                        }
                    } else if (this.f78182d) {
                        return;
                    } else {
                        dVar.onNext(Integer.valueOf(i10));
                        j4++;
                        i10++;
                    }
                }
            } while (r9 != 0);
        }
    }

    public w2(int start, int count) {
        this.f78177b = start;
        this.f78178c = start + count;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super Integer> s9) {
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            s9.onSubscribe(new b((io.reactivex.rxjava3.internal.fuseable.c) s9, this.f78177b, this.f78178c));
        } else {
            s9.onSubscribe(new c(s9, this.f78177b, this.f78178c));
        }
    }
}
