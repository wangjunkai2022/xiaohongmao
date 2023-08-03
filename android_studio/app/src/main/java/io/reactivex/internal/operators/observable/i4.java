package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.util.NotificationLite;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableWindowTimed.java */
/* loaded from: classes3.dex */
public final class i4<T> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final long f74249b;

    /* renamed from: c  reason: collision with root package name */
    final long f74250c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f74251d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f74252e;

    /* renamed from: f  reason: collision with root package name */
    final long f74253f;

    /* renamed from: g  reason: collision with root package name */
    final int f74254g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f74255h;

    /* compiled from: ObservableWindowTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.internal.observers.k<T, Object, io.reactivex.z<T>> implements io.reactivex.disposables.c {
        final long K;
        final TimeUnit L;
        final io.reactivex.h0 M;
        final int N;
        final boolean O;
        final long P;
        final h0.c Q;
        long R;
        long S;
        io.reactivex.disposables.c T;
        io.reactivex.subjects.j<T> U;
        volatile boolean V;
        final SequentialDisposable W;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowTimed.java */
        /* renamed from: io.reactivex.internal.operators.observable.i4$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class RunnableC0592a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final long f74256a;

            /* renamed from: b  reason: collision with root package name */
            final a<?> f74257b;

            RunnableC0592a(long j4, a<?> aVar) {
                this.f74256a = j4;
                this.f74257b = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a<?> aVar = this.f74257b;
                if (!((io.reactivex.internal.observers.k) aVar).H) {
                    ((io.reactivex.internal.observers.k) aVar).G.offer(this);
                } else {
                    aVar.V = true;
                }
                if (aVar.b()) {
                    aVar.m();
                }
            }
        }

        a(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4, long j10, boolean z9) {
            super(g0Var, new io.reactivex.internal.queue.a());
            this.W = new SequentialDisposable();
            this.K = j4;
            this.L = timeUnit;
            this.M = h0Var;
            this.N = i4;
            this.P = j10;
            this.O = z9;
            if (z9) {
                this.Q = h0Var.d();
            } else {
                this.Q = null;
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.H = true;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.H;
        }

        void l() {
            DisposableHelper.dispose(this.W);
            h0.c cVar = this.Q;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void m() {
            io.reactivex.internal.queue.a aVar = (io.reactivex.internal.queue.a) this.G;
            io.reactivex.g0<? super V> g0Var = this.F;
            io.reactivex.subjects.j<T> jVar = this.U;
            int i4 = 1;
            while (!this.V) {
                boolean z9 = this.I;
                Object poll = aVar.poll();
                boolean z10 = poll == null;
                boolean z11 = poll instanceof RunnableC0592a;
                if (z9 && (z10 || z11)) {
                    this.U = null;
                    aVar.clear();
                    Throwable th = this.J;
                    if (th != null) {
                        jVar.onError(th);
                    } else {
                        jVar.onComplete();
                    }
                    l();
                    return;
                } else if (z10) {
                    i4 = a(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (z11) {
                    RunnableC0592a runnableC0592a = (RunnableC0592a) poll;
                    if (!this.O || this.S == runnableC0592a.f74256a) {
                        jVar.onComplete();
                        this.R = 0L;
                        jVar = (io.reactivex.subjects.j<T>) io.reactivex.subjects.j.i(this.N);
                        this.U = jVar;
                        g0Var.onNext(jVar);
                    }
                } else {
                    jVar.onNext(NotificationLite.getValue(poll));
                    long j4 = this.R + 1;
                    if (j4 >= this.P) {
                        this.S++;
                        this.R = 0L;
                        jVar.onComplete();
                        jVar = (io.reactivex.subjects.j<T>) io.reactivex.subjects.j.i(this.N);
                        this.U = jVar;
                        this.F.onNext(jVar);
                        if (this.O) {
                            io.reactivex.disposables.c cVar = this.W.get();
                            cVar.dispose();
                            h0.c cVar2 = this.Q;
                            RunnableC0592a runnableC0592a2 = new RunnableC0592a(this.S, this);
                            long j10 = this.K;
                            io.reactivex.disposables.c d4 = cVar2.d(runnableC0592a2, j10, j10, this.L);
                            if (!this.W.compareAndSet(cVar, d4)) {
                                d4.dispose();
                            }
                        }
                    } else {
                        this.R = j4;
                    }
                }
            }
            this.T.dispose();
            aVar.clear();
            l();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.I = true;
            if (b()) {
                m();
            }
            this.F.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.J = th;
            this.I = true;
            if (b()) {
                m();
            }
            this.F.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.V) {
                return;
            }
            if (e()) {
                io.reactivex.subjects.j<T> jVar = this.U;
                jVar.onNext(t9);
                long j4 = this.R + 1;
                if (j4 >= this.P) {
                    this.S++;
                    this.R = 0L;
                    jVar.onComplete();
                    io.reactivex.subjects.j<T> i4 = io.reactivex.subjects.j.i(this.N);
                    this.U = i4;
                    this.F.onNext(i4);
                    if (this.O) {
                        this.W.get().dispose();
                        h0.c cVar = this.Q;
                        RunnableC0592a runnableC0592a = new RunnableC0592a(this.S, this);
                        long j10 = this.K;
                        DisposableHelper.replace(this.W, cVar.d(runnableC0592a, j10, j10, this.L));
                    }
                } else {
                    this.R = j4;
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.G.offer(NotificationLite.next(t9));
                if (!b()) {
                    return;
                }
            }
            m();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            io.reactivex.disposables.c h4;
            if (DisposableHelper.validate(this.T, cVar)) {
                this.T = cVar;
                io.reactivex.g0<? super V> g0Var = this.F;
                g0Var.onSubscribe(this);
                if (this.H) {
                    return;
                }
                io.reactivex.subjects.j<T> i4 = io.reactivex.subjects.j.i(this.N);
                this.U = i4;
                g0Var.onNext(i4);
                RunnableC0592a runnableC0592a = new RunnableC0592a(this.S, this);
                if (this.O) {
                    h0.c cVar2 = this.Q;
                    long j4 = this.K;
                    h4 = cVar2.d(runnableC0592a, j4, j4, this.L);
                } else {
                    io.reactivex.h0 h0Var = this.M;
                    long j10 = this.K;
                    h4 = h0Var.h(runnableC0592a, j10, j10, this.L);
                }
                this.W.replace(h4);
            }
        }
    }

    /* compiled from: ObservableWindowTimed.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends io.reactivex.internal.observers.k<T, Object, io.reactivex.z<T>> implements io.reactivex.g0<T>, io.reactivex.disposables.c, Runnable {
        static final Object S = new Object();
        final long K;
        final TimeUnit L;
        final io.reactivex.h0 M;
        final int N;
        io.reactivex.disposables.c O;
        io.reactivex.subjects.j<T> P;
        final SequentialDisposable Q;
        volatile boolean R;

        b(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4) {
            super(g0Var, new io.reactivex.internal.queue.a());
            this.Q = new SequentialDisposable();
            this.K = j4;
            this.L = timeUnit;
            this.M = h0Var;
            this.N = i4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.H = true;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.H;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
            r2.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
            r7.Q.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
            r7.P = null;
            r0.clear();
            r0 = r7.J;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
            if (r0 == null) goto L14;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void j() {
            /*
                r7 = this;
                o7.n<U> r0 = r7.G
                io.reactivex.internal.queue.a r0 = (io.reactivex.internal.queue.a) r0
                io.reactivex.g0<? super V> r1 = r7.F
                io.reactivex.subjects.j<T> r2 = r7.P
                r3 = 1
            L9:
                boolean r4 = r7.R
                boolean r5 = r7.I
                java.lang.Object r6 = r0.poll()
                if (r5 == 0) goto L30
                if (r6 == 0) goto L19
                java.lang.Object r5 = io.reactivex.internal.operators.observable.i4.b.S
                if (r6 != r5) goto L30
            L19:
                r1 = 0
                r7.P = r1
                r0.clear()
                java.lang.Throwable r0 = r7.J
                if (r0 == 0) goto L27
                r2.onError(r0)
                goto L2a
            L27:
                r2.onComplete()
            L2a:
                io.reactivex.internal.disposables.SequentialDisposable r0 = r7.Q
                r0.dispose()
                return
            L30:
                if (r6 != 0) goto L3a
                int r3 = -r3
                int r3 = r7.a(r3)
                if (r3 != 0) goto L9
                return
            L3a:
                java.lang.Object r5 = io.reactivex.internal.operators.observable.i4.b.S
                if (r6 != r5) goto L55
                r2.onComplete()
                if (r4 != 0) goto L4f
                int r2 = r7.N
                io.reactivex.subjects.j r2 = io.reactivex.subjects.j.i(r2)
                r7.P = r2
                r1.onNext(r2)
                goto L9
            L4f:
                io.reactivex.disposables.c r4 = r7.O
                r4.dispose()
                goto L9
            L55:
                java.lang.Object r4 = io.reactivex.internal.util.NotificationLite.getValue(r6)
                r2.onNext(r4)
                goto L9
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.i4.b.j():void");
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.I = true;
            if (b()) {
                j();
            }
            this.F.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.J = th;
            this.I = true;
            if (b()) {
                j();
            }
            this.F.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.R) {
                return;
            }
            if (e()) {
                this.P.onNext(t9);
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.G.offer(NotificationLite.next(t9));
                if (!b()) {
                    return;
                }
            }
            j();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.O, cVar)) {
                this.O = cVar;
                this.P = io.reactivex.subjects.j.i(this.N);
                io.reactivex.g0<? super V> g0Var = this.F;
                g0Var.onSubscribe(this);
                g0Var.onNext(this.P);
                if (this.H) {
                    return;
                }
                io.reactivex.h0 h0Var = this.M;
                long j4 = this.K;
                this.Q.replace(h0Var.h(this, j4, j4, this.L));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.H) {
                this.R = true;
            }
            this.G.offer(S);
            if (b()) {
                j();
            }
        }
    }

    /* compiled from: ObservableWindowTimed.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends io.reactivex.internal.observers.k<T, Object, io.reactivex.z<T>> implements io.reactivex.disposables.c, Runnable {
        final long K;
        final long L;
        final TimeUnit M;
        final h0.c N;
        final int O;
        final List<io.reactivex.subjects.j<T>> P;
        io.reactivex.disposables.c Q;
        volatile boolean R;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowTimed.java */
        /* loaded from: classes3.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final io.reactivex.subjects.j<T> f74258a;

            a(io.reactivex.subjects.j<T> jVar) {
                this.f74258a = jVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.j(this.f74258a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowTimed.java */
        /* loaded from: classes3.dex */
        public static final class b<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.subjects.j<T> f74260a;

            /* renamed from: b  reason: collision with root package name */
            final boolean f74261b;

            b(io.reactivex.subjects.j<T> jVar, boolean z9) {
                this.f74260a = jVar;
                this.f74261b = z9;
            }
        }

        c(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, long j4, long j10, TimeUnit timeUnit, h0.c cVar, int i4) {
            super(g0Var, new io.reactivex.internal.queue.a());
            this.K = j4;
            this.L = j10;
            this.M = timeUnit;
            this.N = cVar;
            this.O = i4;
            this.P = new LinkedList();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.H = true;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.H;
        }

        void j(io.reactivex.subjects.j<T> jVar) {
            this.G.offer(new b(jVar, false));
            if (b()) {
                k();
            }
        }

        void k() {
            io.reactivex.internal.queue.a aVar = (io.reactivex.internal.queue.a) this.G;
            io.reactivex.g0<? super V> g0Var = this.F;
            List<io.reactivex.subjects.j<T>> list = this.P;
            int i4 = 1;
            while (!this.R) {
                boolean z9 = this.I;
                T t9 = (T) aVar.poll();
                boolean z10 = t9 == null;
                boolean z11 = t9 instanceof b;
                if (z9 && (z10 || z11)) {
                    aVar.clear();
                    Throwable th = this.J;
                    if (th != null) {
                        for (io.reactivex.subjects.j<T> jVar : list) {
                            jVar.onError(th);
                        }
                    } else {
                        for (io.reactivex.subjects.j<T> jVar2 : list) {
                            jVar2.onComplete();
                        }
                    }
                    list.clear();
                    this.N.dispose();
                    return;
                } else if (z10) {
                    i4 = a(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (z11) {
                    b bVar = (b) t9;
                    if (bVar.f74261b) {
                        if (!this.H) {
                            io.reactivex.subjects.j<T> i10 = io.reactivex.subjects.j.i(this.O);
                            list.add(i10);
                            g0Var.onNext(i10);
                            this.N.c(new a(i10), this.K, this.M);
                        }
                    } else {
                        list.remove(bVar.f74260a);
                        bVar.f74260a.onComplete();
                        if (list.isEmpty() && this.H) {
                            this.R = true;
                        }
                    }
                } else {
                    for (io.reactivex.subjects.j<T> jVar3 : list) {
                        jVar3.onNext(t9);
                    }
                }
            }
            this.Q.dispose();
            aVar.clear();
            list.clear();
            this.N.dispose();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.I = true;
            if (b()) {
                k();
            }
            this.F.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.J = th;
            this.I = true;
            if (b()) {
                k();
            }
            this.F.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (e()) {
                for (io.reactivex.subjects.j<T> jVar : this.P) {
                    jVar.onNext(t9);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.G.offer(t9);
                if (!b()) {
                    return;
                }
            }
            k();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.Q, cVar)) {
                this.Q = cVar;
                this.F.onSubscribe(this);
                if (this.H) {
                    return;
                }
                io.reactivex.subjects.j<T> i4 = io.reactivex.subjects.j.i(this.O);
                this.P.add(i4);
                this.F.onNext(i4);
                this.N.c(new a(i4), this.K, this.M);
                h0.c cVar2 = this.N;
                long j4 = this.L;
                cVar2.d(this, j4, j4, this.M);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = new b(io.reactivex.subjects.j.i(this.O), true);
            if (!this.H) {
                this.G.offer(bVar);
            }
            if (b()) {
                k();
            }
        }
    }

    public i4(io.reactivex.e0<T> e0Var, long j4, long j10, TimeUnit timeUnit, io.reactivex.h0 h0Var, long j11, int i4, boolean z9) {
        super(e0Var);
        this.f74249b = j4;
        this.f74250c = j10;
        this.f74251d = timeUnit;
        this.f74252e = h0Var;
        this.f74253f = j11;
        this.f74254g = i4;
        this.f74255h = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super io.reactivex.z<T>> g0Var) {
        io.reactivex.observers.l lVar = new io.reactivex.observers.l(g0Var);
        long j4 = this.f74249b;
        long j10 = this.f74250c;
        if (j4 == j10) {
            long j11 = this.f74253f;
            if (j11 == Long.MAX_VALUE) {
                this.f73827a.subscribe(new b(lVar, this.f74249b, this.f74251d, this.f74252e, this.f74254g));
                return;
            } else {
                this.f73827a.subscribe(new a(lVar, j4, this.f74251d, this.f74252e, this.f74254g, j11, this.f74255h));
                return;
            }
        }
        this.f73827a.subscribe(new c(lVar, j4, j10, this.f74251d, this.f74252e.d(), this.f74254g));
    }
}
