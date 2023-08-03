package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: FlowableWindowTimed.java */
/* loaded from: classes3.dex */
public final class w4<T> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.j<T>> {

    /* renamed from: c  reason: collision with root package name */
    final long f72947c;

    /* renamed from: d  reason: collision with root package name */
    final long f72948d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f72949e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.h0 f72950f;

    /* renamed from: g  reason: collision with root package name */
    final long f72951g;

    /* renamed from: h  reason: collision with root package name */
    final int f72952h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f72953i;

    /* compiled from: FlowableWindowTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.internal.subscribers.h<T, Object, io.reactivex.j<T>> implements org.reactivestreams.e {
        org.reactivestreams.e E2;
        io.reactivex.processors.h<T> F2;
        volatile boolean G2;
        final SequentialDisposable H2;
        final io.reactivex.h0 T1;
        final int V1;

        /* renamed from: b2  reason: collision with root package name */
        final boolean f72954b2;

        /* renamed from: g2  reason: collision with root package name */
        final long f72955g2;

        /* renamed from: p2  reason: collision with root package name */
        final h0.c f72956p2;

        /* renamed from: x1  reason: collision with root package name */
        final long f72957x1;

        /* renamed from: x2  reason: collision with root package name */
        long f72958x2;

        /* renamed from: y1  reason: collision with root package name */
        final TimeUnit f72959y1;

        /* renamed from: y2  reason: collision with root package name */
        long f72960y2;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowTimed.java */
        /* renamed from: io.reactivex.internal.operators.flowable.w4$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class RunnableC0562a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final long f72961a;

            /* renamed from: b  reason: collision with root package name */
            final a<?> f72962b;

            RunnableC0562a(long j4, a<?> aVar) {
                this.f72961a = j4;
                this.f72962b = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a<?> aVar = this.f72962b;
                if (!((io.reactivex.internal.subscribers.h) aVar).f75831b1) {
                    ((io.reactivex.internal.subscribers.h) aVar).W.offer(this);
                } else {
                    aVar.G2 = true;
                }
                if (aVar.b()) {
                    aVar.q();
                }
            }
        }

        a(org.reactivestreams.d<? super io.reactivex.j<T>> dVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4, long j10, boolean z9) {
            super(dVar, new io.reactivex.internal.queue.a());
            this.H2 = new SequentialDisposable();
            this.f72957x1 = j4;
            this.f72959y1 = timeUnit;
            this.T1 = h0Var;
            this.V1 = i4;
            this.f72955g2 = j10;
            this.f72954b2 = z9;
            if (z9) {
                this.f72956p2 = h0Var.d();
            } else {
                this.f72956p2 = null;
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75831b1 = true;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f75832g1 = true;
            if (b()) {
                q();
            }
            this.V.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75833p1 = th;
            this.f75832g1 = true;
            if (b()) {
                q();
            }
            this.V.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.G2) {
                return;
            }
            if (j()) {
                io.reactivex.processors.h<T> hVar = this.F2;
                hVar.onNext(t9);
                long j4 = this.f72958x2 + 1;
                if (j4 >= this.f72955g2) {
                    this.f72960y2++;
                    this.f72958x2 = 0L;
                    hVar.onComplete();
                    long e4 = e();
                    if (e4 != 0) {
                        io.reactivex.processors.h<T> T8 = io.reactivex.processors.h.T8(this.V1);
                        this.F2 = T8;
                        this.V.onNext(T8);
                        if (e4 != Long.MAX_VALUE) {
                            i(1L);
                        }
                        if (this.f72954b2) {
                            this.H2.get().dispose();
                            h0.c cVar = this.f72956p2;
                            RunnableC0562a runnableC0562a = new RunnableC0562a(this.f72960y2, this);
                            long j10 = this.f72957x1;
                            this.H2.replace(cVar.d(runnableC0562a, j10, j10, this.f72959y1));
                        }
                    } else {
                        this.F2 = null;
                        this.E2.cancel();
                        this.V.onError(new MissingBackpressureException("Could not deliver window due to lack of requests"));
                        p();
                        return;
                    }
                } else {
                    this.f72958x2 = j4;
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.W.offer(NotificationLite.next(t9));
                if (!b()) {
                    return;
                }
            }
            q();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            io.reactivex.disposables.c h4;
            if (SubscriptionHelper.validate(this.E2, eVar)) {
                this.E2 = eVar;
                org.reactivestreams.d<? super V> dVar = this.V;
                dVar.onSubscribe(this);
                if (this.f75831b1) {
                    return;
                }
                io.reactivex.processors.h<T> T8 = io.reactivex.processors.h.T8(this.V1);
                this.F2 = T8;
                long e4 = e();
                if (e4 != 0) {
                    dVar.onNext(T8);
                    if (e4 != Long.MAX_VALUE) {
                        i(1L);
                    }
                    RunnableC0562a runnableC0562a = new RunnableC0562a(this.f72960y2, this);
                    if (this.f72954b2) {
                        h0.c cVar = this.f72956p2;
                        long j4 = this.f72957x1;
                        h4 = cVar.d(runnableC0562a, j4, j4, this.f72959y1);
                    } else {
                        io.reactivex.h0 h0Var = this.T1;
                        long j10 = this.f72957x1;
                        h4 = h0Var.h(runnableC0562a, j10, j10, this.f72959y1);
                    }
                    if (this.H2.replace(h4)) {
                        eVar.request(Long.MAX_VALUE);
                        return;
                    }
                    return;
                }
                this.f75831b1 = true;
                eVar.cancel();
                dVar.onError(new MissingBackpressureException("Could not deliver initial window due to lack of requests."));
            }
        }

        public void p() {
            this.H2.dispose();
            h0.c cVar = this.f72956p2;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        void q() {
            o7.o oVar = this.W;
            org.reactivestreams.d<? super V> dVar = this.V;
            io.reactivex.processors.h<T> hVar = this.F2;
            int i4 = 1;
            while (!this.G2) {
                boolean z9 = this.f75832g1;
                Object poll = oVar.poll();
                boolean z10 = poll == null;
                boolean z11 = poll instanceof RunnableC0562a;
                if (z9 && (z10 || z11)) {
                    this.F2 = null;
                    oVar.clear();
                    Throwable th = this.f75833p1;
                    if (th != null) {
                        hVar.onError(th);
                    } else {
                        hVar.onComplete();
                    }
                    p();
                    return;
                } else if (z10) {
                    i4 = a(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    int i10 = i4;
                    if (z11) {
                        RunnableC0562a runnableC0562a = (RunnableC0562a) poll;
                        if (!this.f72954b2 || this.f72960y2 == runnableC0562a.f72961a) {
                            hVar.onComplete();
                            this.f72958x2 = 0L;
                            hVar = io.reactivex.processors.h.T8(this.V1);
                            this.F2 = hVar;
                            long e4 = e();
                            if (e4 != 0) {
                                dVar.onNext(hVar);
                                if (e4 != Long.MAX_VALUE) {
                                    i(1L);
                                }
                            } else {
                                this.F2 = null;
                                this.W.clear();
                                this.E2.cancel();
                                dVar.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
                                p();
                                return;
                            }
                        }
                    } else {
                        hVar.onNext(NotificationLite.getValue(poll));
                        long j4 = this.f72958x2 + 1;
                        if (j4 >= this.f72955g2) {
                            this.f72960y2++;
                            this.f72958x2 = 0L;
                            hVar.onComplete();
                            long e10 = e();
                            if (e10 != 0) {
                                io.reactivex.processors.h<T> T8 = io.reactivex.processors.h.T8(this.V1);
                                this.F2 = T8;
                                this.V.onNext(T8);
                                if (e10 != Long.MAX_VALUE) {
                                    i(1L);
                                }
                                if (this.f72954b2) {
                                    this.H2.get().dispose();
                                    h0.c cVar = this.f72956p2;
                                    RunnableC0562a runnableC0562a2 = new RunnableC0562a(this.f72960y2, this);
                                    long j10 = this.f72957x1;
                                    this.H2.replace(cVar.d(runnableC0562a2, j10, j10, this.f72959y1));
                                }
                                hVar = T8;
                            } else {
                                this.F2 = null;
                                this.E2.cancel();
                                this.V.onError(new MissingBackpressureException("Could not deliver window due to lack of requests"));
                                p();
                                return;
                            }
                        } else {
                            this.f72958x2 = j4;
                        }
                    }
                    i4 = i10;
                }
            }
            this.E2.cancel();
            oVar.clear();
            p();
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            m(j4);
        }
    }

    /* compiled from: FlowableWindowTimed.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends io.reactivex.internal.subscribers.h<T, Object, io.reactivex.j<T>> implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: y2  reason: collision with root package name */
        static final Object f72963y2 = new Object();
        final io.reactivex.h0 T1;
        final int V1;

        /* renamed from: b2  reason: collision with root package name */
        org.reactivestreams.e f72964b2;

        /* renamed from: g2  reason: collision with root package name */
        io.reactivex.processors.h<T> f72965g2;

        /* renamed from: p2  reason: collision with root package name */
        final SequentialDisposable f72966p2;

        /* renamed from: x1  reason: collision with root package name */
        final long f72967x1;

        /* renamed from: x2  reason: collision with root package name */
        volatile boolean f72968x2;

        /* renamed from: y1  reason: collision with root package name */
        final TimeUnit f72969y1;

        b(org.reactivestreams.d<? super io.reactivex.j<T>> dVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4) {
            super(dVar, new io.reactivex.internal.queue.a());
            this.f72966p2 = new SequentialDisposable();
            this.f72967x1 = j4;
            this.f72969y1 = timeUnit;
            this.T1 = h0Var;
            this.V1 = i4;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75831b1 = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
            r2.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
            r10.f72966p2.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
            r10.f72965g2 = null;
            r0.clear();
            r0 = r10.f75833p1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
            if (r0 == null) goto L14;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void n() {
            /*
                r10 = this;
                o7.n<U> r0 = r10.W
                org.reactivestreams.d<? super V> r1 = r10.V
                io.reactivex.processors.h<T> r2 = r10.f72965g2
                r3 = 1
            L7:
                boolean r4 = r10.f72968x2
                boolean r5 = r10.f75832g1
                java.lang.Object r6 = r0.poll()
                r7 = 0
                if (r5 == 0) goto L2e
                if (r6 == 0) goto L18
                java.lang.Object r5 = io.reactivex.internal.operators.flowable.w4.b.f72963y2
                if (r6 != r5) goto L2e
            L18:
                r10.f72965g2 = r7
                r0.clear()
                java.lang.Throwable r0 = r10.f75833p1
                if (r0 == 0) goto L25
                r2.onError(r0)
                goto L28
            L25:
                r2.onComplete()
            L28:
                io.reactivex.internal.disposables.SequentialDisposable r0 = r10.f72966p2
                r0.dispose()
                return
            L2e:
                if (r6 != 0) goto L38
                int r3 = -r3
                int r3 = r10.a(r3)
                if (r3 != 0) goto L7
                return
            L38:
                java.lang.Object r5 = io.reactivex.internal.operators.flowable.w4.b.f72963y2
                if (r6 != r5) goto L87
                r2.onComplete()
                if (r4 != 0) goto L81
                int r2 = r10.V1
                io.reactivex.processors.h r2 = io.reactivex.processors.h.T8(r2)
                r10.f72965g2 = r2
                long r4 = r10.e()
                r8 = 0
                int r6 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
                if (r6 == 0) goto L65
                r1.onNext(r2)
                r6 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r8 == 0) goto L7
                r4 = 1
                r10.i(r4)
                goto L7
            L65:
                r10.f72965g2 = r7
                o7.n<U> r0 = r10.W
                r0.clear()
                org.reactivestreams.e r0 = r10.f72964b2
                r0.cancel()
                io.reactivex.exceptions.MissingBackpressureException r0 = new io.reactivex.exceptions.MissingBackpressureException
                java.lang.String r2 = "Could not deliver first window due to lack of requests."
                r0.<init>(r2)
                r1.onError(r0)
                io.reactivex.internal.disposables.SequentialDisposable r0 = r10.f72966p2
                r0.dispose()
                return
            L81:
                org.reactivestreams.e r4 = r10.f72964b2
                r4.cancel()
                goto L7
            L87:
                java.lang.Object r4 = io.reactivex.internal.util.NotificationLite.getValue(r6)
                r2.onNext(r4)
                goto L7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.w4.b.n():void");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f75832g1 = true;
            if (b()) {
                n();
            }
            this.V.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75833p1 = th;
            this.f75832g1 = true;
            if (b()) {
                n();
            }
            this.V.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72968x2) {
                return;
            }
            if (j()) {
                this.f72965g2.onNext(t9);
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.W.offer(NotificationLite.next(t9));
                if (!b()) {
                    return;
                }
            }
            n();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72964b2, eVar)) {
                this.f72964b2 = eVar;
                this.f72965g2 = io.reactivex.processors.h.T8(this.V1);
                org.reactivestreams.d<? super V> dVar = this.V;
                dVar.onSubscribe(this);
                long e4 = e();
                if (e4 != 0) {
                    dVar.onNext(this.f72965g2);
                    if (e4 != Long.MAX_VALUE) {
                        i(1L);
                    }
                    if (this.f75831b1) {
                        return;
                    }
                    SequentialDisposable sequentialDisposable = this.f72966p2;
                    io.reactivex.h0 h0Var = this.T1;
                    long j4 = this.f72967x1;
                    if (sequentialDisposable.replace(h0Var.h(this, j4, j4, this.f72969y1))) {
                        eVar.request(Long.MAX_VALUE);
                        return;
                    }
                    return;
                }
                this.f75831b1 = true;
                eVar.cancel();
                dVar.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            m(j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f75831b1) {
                this.f72968x2 = true;
            }
            this.W.offer(f72963y2);
            if (b()) {
                n();
            }
        }
    }

    /* compiled from: FlowableWindowTimed.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends io.reactivex.internal.subscribers.h<T, Object, io.reactivex.j<T>> implements org.reactivestreams.e, Runnable {
        final TimeUnit T1;
        final h0.c V1;

        /* renamed from: b2  reason: collision with root package name */
        final int f72970b2;

        /* renamed from: g2  reason: collision with root package name */
        final List<io.reactivex.processors.h<T>> f72971g2;

        /* renamed from: p2  reason: collision with root package name */
        org.reactivestreams.e f72972p2;

        /* renamed from: x1  reason: collision with root package name */
        final long f72973x1;

        /* renamed from: x2  reason: collision with root package name */
        volatile boolean f72974x2;

        /* renamed from: y1  reason: collision with root package name */
        final long f72975y1;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowTimed.java */
        /* loaded from: classes3.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final io.reactivex.processors.h<T> f72976a;

            a(io.reactivex.processors.h<T> hVar) {
                this.f72976a = hVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.n(this.f72976a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowTimed.java */
        /* loaded from: classes3.dex */
        public static final class b<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.processors.h<T> f72978a;

            /* renamed from: b  reason: collision with root package name */
            final boolean f72979b;

            b(io.reactivex.processors.h<T> hVar, boolean z9) {
                this.f72978a = hVar;
                this.f72979b = z9;
            }
        }

        c(org.reactivestreams.d<? super io.reactivex.j<T>> dVar, long j4, long j10, TimeUnit timeUnit, h0.c cVar, int i4) {
            super(dVar, new io.reactivex.internal.queue.a());
            this.f72973x1 = j4;
            this.f72975y1 = j10;
            this.T1 = timeUnit;
            this.V1 = cVar;
            this.f72970b2 = i4;
            this.f72971g2 = new LinkedList();
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75831b1 = true;
        }

        void n(io.reactivex.processors.h<T> hVar) {
            this.W.offer(new b(hVar, false));
            if (b()) {
                o();
            }
        }

        void o() {
            o7.o oVar = this.W;
            org.reactivestreams.d<? super V> dVar = this.V;
            List<io.reactivex.processors.h<T>> list = this.f72971g2;
            int i4 = 1;
            while (!this.f72974x2) {
                boolean z9 = this.f75832g1;
                T t9 = (T) oVar.poll();
                boolean z10 = t9 == null;
                boolean z11 = t9 instanceof b;
                if (z9 && (z10 || z11)) {
                    oVar.clear();
                    Throwable th = this.f75833p1;
                    if (th != null) {
                        for (io.reactivex.processors.h<T> hVar : list) {
                            hVar.onError(th);
                        }
                    } else {
                        for (io.reactivex.processors.h<T> hVar2 : list) {
                            hVar2.onComplete();
                        }
                    }
                    list.clear();
                    this.V1.dispose();
                    return;
                } else if (z10) {
                    i4 = a(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (z11) {
                    b bVar = (b) t9;
                    if (bVar.f72979b) {
                        if (!this.f75831b1) {
                            long e4 = e();
                            if (e4 != 0) {
                                io.reactivex.processors.h<T> T8 = io.reactivex.processors.h.T8(this.f72970b2);
                                list.add(T8);
                                dVar.onNext(T8);
                                if (e4 != Long.MAX_VALUE) {
                                    i(1L);
                                }
                                this.V1.c(new a(T8), this.f72973x1, this.T1);
                            } else {
                                dVar.onError(new MissingBackpressureException("Can't emit window due to lack of requests"));
                            }
                        }
                    } else {
                        list.remove(bVar.f72978a);
                        bVar.f72978a.onComplete();
                        if (list.isEmpty() && this.f75831b1) {
                            this.f72974x2 = true;
                        }
                    }
                } else {
                    for (io.reactivex.processors.h<T> hVar3 : list) {
                        hVar3.onNext(t9);
                    }
                }
            }
            this.f72972p2.cancel();
            oVar.clear();
            list.clear();
            this.V1.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f75832g1 = true;
            if (b()) {
                o();
            }
            this.V.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75833p1 = th;
            this.f75832g1 = true;
            if (b()) {
                o();
            }
            this.V.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (j()) {
                for (io.reactivex.processors.h<T> hVar : this.f72971g2) {
                    hVar.onNext(t9);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.W.offer(t9);
                if (!b()) {
                    return;
                }
            }
            o();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72972p2, eVar)) {
                this.f72972p2 = eVar;
                this.V.onSubscribe(this);
                if (this.f75831b1) {
                    return;
                }
                long e4 = e();
                if (e4 != 0) {
                    io.reactivex.processors.h<T> T8 = io.reactivex.processors.h.T8(this.f72970b2);
                    this.f72971g2.add(T8);
                    this.V.onNext(T8);
                    if (e4 != Long.MAX_VALUE) {
                        i(1L);
                    }
                    this.V1.c(new a(T8), this.f72973x1, this.T1);
                    h0.c cVar = this.V1;
                    long j4 = this.f72975y1;
                    cVar.d(this, j4, j4, this.T1);
                    eVar.request(Long.MAX_VALUE);
                    return;
                }
                eVar.cancel();
                this.V.onError(new MissingBackpressureException("Could not emit the first window due to lack of requests"));
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            m(j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = new b(io.reactivex.processors.h.T8(this.f72970b2), true);
            if (!this.f75831b1) {
                this.W.offer(bVar);
            }
            if (b()) {
                o();
            }
        }
    }

    public w4(io.reactivex.j<T> jVar, long j4, long j10, TimeUnit timeUnit, io.reactivex.h0 h0Var, long j11, int i4, boolean z9) {
        super(jVar);
        this.f72947c = j4;
        this.f72948d = j10;
        this.f72949e = timeUnit;
        this.f72950f = h0Var;
        this.f72951g = j11;
        this.f72952h = i4;
        this.f72953i = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super io.reactivex.j<T>> dVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(dVar);
        long j4 = this.f72947c;
        long j10 = this.f72948d;
        if (j4 == j10) {
            long j11 = this.f72951g;
            if (j11 == Long.MAX_VALUE) {
                this.f71538b.j6(new b(eVar, this.f72947c, this.f72949e, this.f72950f, this.f72952h));
                return;
            } else {
                this.f71538b.j6(new a(eVar, j4, this.f72949e, this.f72950f, this.f72952h, j11, this.f72953i));
                return;
            }
        }
        this.f71538b.j6(new c(eVar, j4, j10, this.f72949e, this.f72950f.d(), this.f72952h));
    }
}
