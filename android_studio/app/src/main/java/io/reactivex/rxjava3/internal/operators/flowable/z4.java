package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableWindowTimed.java */
/* loaded from: classes4.dex */
public final class z4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, io.reactivex.rxjava3.core.m<T>> {

    /* renamed from: c  reason: collision with root package name */
    final long f78401c;

    /* renamed from: d  reason: collision with root package name */
    final long f78402d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f78403e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f78404f;

    /* renamed from: g  reason: collision with root package name */
    final long f78405g;

    /* renamed from: h  reason: collision with root package name */
    final int f78406h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f78407i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWindowTimed.java */
    /* loaded from: classes4.dex */
    public static abstract class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: n  reason: collision with root package name */
        private static final long f78408n = 5724293814035355511L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> f78409a;

        /* renamed from: c  reason: collision with root package name */
        final long f78411c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f78412d;

        /* renamed from: e  reason: collision with root package name */
        final int f78413e;

        /* renamed from: g  reason: collision with root package name */
        long f78415g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f78416h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f78417i;

        /* renamed from: j  reason: collision with root package name */
        org.reactivestreams.e f78418j;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f78420l;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<Object> f78410b = new io.reactivex.rxjava3.internal.queue.a();

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f78414f = new AtomicLong();

        /* renamed from: k  reason: collision with root package name */
        final AtomicBoolean f78419k = new AtomicBoolean();

        /* renamed from: m  reason: collision with root package name */
        final AtomicInteger f78421m = new AtomicInteger(1);

        a(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> downstream, long timespan, TimeUnit unit, int bufferSize) {
            this.f78409a = downstream;
            this.f78411c = timespan;
            this.f78412d = unit;
            this.f78413e = bufferSize;
        }

        abstract void a();

        abstract void b();

        abstract void c();

        @Override // org.reactivestreams.e
        public final void cancel() {
            if (this.f78419k.compareAndSet(false, true)) {
                d();
            }
        }

        final void d() {
            if (this.f78421m.decrementAndGet() == 0) {
                a();
                this.f78418j.cancel();
                this.f78420l = true;
                c();
            }
        }

        @Override // org.reactivestreams.d
        public final void onComplete() {
            this.f78416h = true;
            c();
        }

        @Override // org.reactivestreams.d
        public final void onError(Throwable t9) {
            this.f78417i = t9;
            this.f78416h = true;
            c();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            this.f78410b.offer(t9);
            c();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public final void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78418j, s9)) {
                this.f78418j = s9;
                this.f78409a.onSubscribe(this);
                b();
            }
        }

        @Override // org.reactivestreams.e
        public final void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78414f, n9);
            }
        }
    }

    /* compiled from: FlowableWindowTimed.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends a<T> implements Runnable {

        /* renamed from: v  reason: collision with root package name */
        private static final long f78422v = -6130475889925953722L;

        /* renamed from: o  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f78423o;

        /* renamed from: p  reason: collision with root package name */
        final boolean f78424p;

        /* renamed from: q  reason: collision with root package name */
        final long f78425q;

        /* renamed from: r  reason: collision with root package name */
        final o0.c f78426r;

        /* renamed from: s  reason: collision with root package name */
        long f78427s;

        /* renamed from: t  reason: collision with root package name */
        io.reactivex.rxjava3.processors.h<T> f78428t;

        /* renamed from: u  reason: collision with root package name */
        final SequentialDisposable f78429u;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowTimed.java */
        /* loaded from: classes4.dex */
        public static final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final b<?> f78430a;

            /* renamed from: b  reason: collision with root package name */
            final long f78431b;

            a(b<?> parent, long index) {
                this.f78430a = parent;
                this.f78431b = index;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f78430a.e(this);
            }
        }

        b(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> actual, long timespan, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize, long maxSize, boolean restartTimerOnMaxSize) {
            super(actual, timespan, unit, bufferSize);
            this.f78423o = scheduler;
            this.f78425q = maxSize;
            this.f78424p = restartTimerOnMaxSize;
            if (restartTimerOnMaxSize) {
                this.f78426r = scheduler.d();
            } else {
                this.f78426r = null;
            }
            this.f78429u = new SequentialDisposable();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.z4.a
        void a() {
            this.f78429u.dispose();
            o0.c cVar = this.f78426r;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.z4.a
        void b() {
            if (this.f78419k.get()) {
                return;
            }
            if (this.f78414f.get() != 0) {
                this.f78415g = 1L;
                this.f78421m.getAndIncrement();
                this.f78428t = io.reactivex.rxjava3.processors.h.o9(this.f78413e, this);
                y4 y4Var = new y4(this.f78428t);
                this.f78409a.onNext(y4Var);
                a aVar = new a(this, 1L);
                if (this.f78424p) {
                    SequentialDisposable sequentialDisposable = this.f78429u;
                    o0.c cVar = this.f78426r;
                    long j4 = this.f78411c;
                    sequentialDisposable.replace(cVar.d(aVar, j4, j4, this.f78412d));
                } else {
                    SequentialDisposable sequentialDisposable2 = this.f78429u;
                    io.reactivex.rxjava3.core.o0 o0Var = this.f78423o;
                    long j10 = this.f78411c;
                    sequentialDisposable2.replace(o0Var.h(aVar, j10, j10, this.f78412d));
                }
                if (y4Var.g9()) {
                    this.f78428t.onComplete();
                }
                this.f78418j.request(Long.MAX_VALUE);
                return;
            }
            this.f78418j.cancel();
            this.f78409a.onError(new MissingBackpressureException(z4.g9(this.f78415g)));
            a();
            this.f78420l = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.internal.operators.flowable.z4.a
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.fuseable.p<Object> pVar = this.f78410b;
            org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> dVar = this.f78409a;
            io.reactivex.rxjava3.processors.h<T> hVar = this.f78428t;
            int i4 = 1;
            while (true) {
                if (this.f78420l) {
                    pVar.clear();
                    this.f78428t = null;
                    hVar = null;
                } else {
                    boolean z9 = this.f78416h;
                    Object poll = pVar.poll();
                    boolean z10 = poll == null;
                    if (z9 && z10) {
                        Throwable th = this.f78417i;
                        if (th != null) {
                            if (hVar != 0) {
                                hVar.onError(th);
                            }
                            dVar.onError(th);
                        } else {
                            if (hVar != 0) {
                                hVar.onComplete();
                            }
                            dVar.onComplete();
                        }
                        a();
                        this.f78420l = true;
                    } else if (!z10) {
                        if (poll instanceof a) {
                            if (((a) poll).f78431b == this.f78415g || !this.f78424p) {
                                this.f78427s = 0L;
                                hVar = i(hVar);
                            }
                        } else if (hVar != null) {
                            hVar.onNext(poll);
                            long j4 = this.f78427s + 1;
                            if (j4 == this.f78425q) {
                                this.f78427s = 0L;
                                hVar = i(hVar);
                            } else {
                                this.f78427s = j4;
                            }
                        }
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        void e(a sender) {
            this.f78410b.offer(sender);
            c();
        }

        io.reactivex.rxjava3.processors.h<T> i(io.reactivex.rxjava3.processors.h<T> window) {
            if (window != null) {
                window.onComplete();
                window = null;
            }
            if (this.f78419k.get()) {
                a();
            } else {
                long j4 = this.f78415g;
                if (this.f78414f.get() == j4) {
                    this.f78418j.cancel();
                    a();
                    this.f78420l = true;
                    this.f78409a.onError(new MissingBackpressureException(z4.g9(j4)));
                } else {
                    long j10 = j4 + 1;
                    this.f78415g = j10;
                    this.f78421m.getAndIncrement();
                    window = io.reactivex.rxjava3.processors.h.o9(this.f78413e, this);
                    this.f78428t = window;
                    y4 y4Var = new y4(window);
                    this.f78409a.onNext(y4Var);
                    if (this.f78424p) {
                        SequentialDisposable sequentialDisposable = this.f78429u;
                        o0.c cVar = this.f78426r;
                        a aVar = new a(this, j10);
                        long j11 = this.f78411c;
                        sequentialDisposable.update(cVar.d(aVar, j11, j11, this.f78412d));
                    }
                    if (y4Var.g9()) {
                        window.onComplete();
                    }
                }
            }
            return window;
        }

        @Override // java.lang.Runnable
        public void run() {
            d();
        }
    }

    /* compiled from: FlowableWindowTimed.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends a<T> implements Runnable {

        /* renamed from: s  reason: collision with root package name */
        private static final long f78432s = 1155822639622580836L;

        /* renamed from: t  reason: collision with root package name */
        static final Object f78433t = new Object();

        /* renamed from: o  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f78434o;

        /* renamed from: p  reason: collision with root package name */
        io.reactivex.rxjava3.processors.h<T> f78435p;

        /* renamed from: q  reason: collision with root package name */
        final SequentialDisposable f78436q;

        /* renamed from: r  reason: collision with root package name */
        final Runnable f78437r;

        /* compiled from: FlowableWindowTimed.java */
        /* loaded from: classes4.dex */
        final class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.d();
            }
        }

        c(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> actual, long timespan, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize) {
            super(actual, timespan, unit, bufferSize);
            this.f78434o = scheduler;
            this.f78436q = new SequentialDisposable();
            this.f78437r = new a();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.z4.a
        void a() {
            this.f78436q.dispose();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.z4.a
        void b() {
            if (this.f78419k.get()) {
                return;
            }
            if (this.f78414f.get() != 0) {
                this.f78421m.getAndIncrement();
                this.f78435p = io.reactivex.rxjava3.processors.h.o9(this.f78413e, this.f78437r);
                this.f78415g = 1L;
                y4 y4Var = new y4(this.f78435p);
                this.f78409a.onNext(y4Var);
                SequentialDisposable sequentialDisposable = this.f78436q;
                io.reactivex.rxjava3.core.o0 o0Var = this.f78434o;
                long j4 = this.f78411c;
                sequentialDisposable.replace(o0Var.h(this, j4, j4, this.f78412d));
                if (y4Var.g9()) {
                    this.f78435p.onComplete();
                }
                this.f78418j.request(Long.MAX_VALUE);
                return;
            }
            this.f78418j.cancel();
            this.f78409a.onError(new MissingBackpressureException(z4.g9(this.f78415g)));
            a();
            this.f78420l = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.internal.operators.flowable.z4.a
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.fuseable.p<Object> pVar = this.f78410b;
            org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> dVar = this.f78409a;
            io.reactivex.rxjava3.processors.h<T> hVar = this.f78435p;
            int i4 = 1;
            while (true) {
                if (this.f78420l) {
                    pVar.clear();
                    this.f78435p = null;
                    hVar = (io.reactivex.rxjava3.processors.h<T>) null;
                } else {
                    boolean z9 = this.f78416h;
                    Object poll = pVar.poll();
                    boolean z10 = poll == null;
                    if (z9 && z10) {
                        Throwable th = this.f78417i;
                        if (th != null) {
                            if (hVar != null) {
                                hVar.onError(th);
                            }
                            dVar.onError(th);
                        } else {
                            if (hVar != null) {
                                hVar.onComplete();
                            }
                            dVar.onComplete();
                        }
                        a();
                        this.f78420l = true;
                    } else if (!z10) {
                        if (poll == f78433t) {
                            if (hVar != null) {
                                hVar.onComplete();
                                this.f78435p = null;
                                hVar = (io.reactivex.rxjava3.processors.h<T>) null;
                            }
                            if (this.f78419k.get()) {
                                this.f78436q.dispose();
                            } else {
                                long j4 = this.f78414f.get();
                                long j10 = this.f78415g;
                                if (j4 == j10) {
                                    this.f78418j.cancel();
                                    a();
                                    this.f78420l = true;
                                    dVar.onError(new MissingBackpressureException(z4.g9(this.f78415g)));
                                } else {
                                    this.f78415g = j10 + 1;
                                    this.f78421m.getAndIncrement();
                                    hVar = (io.reactivex.rxjava3.processors.h<T>) io.reactivex.rxjava3.processors.h.o9(this.f78413e, this.f78437r);
                                    this.f78435p = hVar;
                                    y4 y4Var = new y4(hVar);
                                    dVar.onNext(y4Var);
                                    if (y4Var.g9()) {
                                        hVar.onComplete();
                                    }
                                }
                            }
                        } else if (hVar != null) {
                            hVar.onNext(poll);
                        }
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f78410b.offer(f78433t);
            c();
        }
    }

    /* compiled from: FlowableWindowTimed.java */
    /* loaded from: classes4.dex */
    static final class d<T> extends a<T> implements Runnable {

        /* renamed from: r  reason: collision with root package name */
        private static final long f78439r = -7852870764194095894L;

        /* renamed from: s  reason: collision with root package name */
        static final Object f78440s = new Object();

        /* renamed from: t  reason: collision with root package name */
        static final Object f78441t = new Object();

        /* renamed from: o  reason: collision with root package name */
        final long f78442o;

        /* renamed from: p  reason: collision with root package name */
        final o0.c f78443p;

        /* renamed from: q  reason: collision with root package name */
        final List<io.reactivex.rxjava3.processors.h<T>> f78444q;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowTimed.java */
        /* loaded from: classes4.dex */
        public static final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final d<?> f78445a;

            /* renamed from: b  reason: collision with root package name */
            final boolean f78446b;

            a(d<?> parent, boolean isOpen) {
                this.f78445a = parent;
                this.f78446b = isOpen;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f78445a.e(this.f78446b);
            }
        }

        d(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> actual, long timespan, long timeskip, TimeUnit unit, o0.c worker, int bufferSize) {
            super(actual, timespan, unit, bufferSize);
            this.f78442o = timeskip;
            this.f78443p = worker;
            this.f78444q = new LinkedList();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.z4.a
        void a() {
            this.f78443p.dispose();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.z4.a
        void b() {
            if (this.f78419k.get()) {
                return;
            }
            if (this.f78414f.get() != 0) {
                this.f78415g = 1L;
                this.f78421m.getAndIncrement();
                io.reactivex.rxjava3.processors.h<T> o9 = io.reactivex.rxjava3.processors.h.o9(this.f78413e, this);
                this.f78444q.add(o9);
                y4 y4Var = new y4(o9);
                this.f78409a.onNext(y4Var);
                this.f78443p.c(new a(this, false), this.f78411c, this.f78412d);
                o0.c cVar = this.f78443p;
                a aVar = new a(this, true);
                long j4 = this.f78442o;
                cVar.d(aVar, j4, j4, this.f78412d);
                if (y4Var.g9()) {
                    o9.onComplete();
                    this.f78444q.remove(o9);
                }
                this.f78418j.request(Long.MAX_VALUE);
                return;
            }
            this.f78418j.cancel();
            this.f78409a.onError(new MissingBackpressureException(z4.g9(this.f78415g)));
            a();
            this.f78420l = true;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.z4.a
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.fuseable.p<Object> pVar = this.f78410b;
            org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> dVar = this.f78409a;
            List<io.reactivex.rxjava3.processors.h<T>> list = this.f78444q;
            int i4 = 1;
            while (true) {
                if (this.f78420l) {
                    pVar.clear();
                    list.clear();
                } else {
                    boolean z9 = this.f78416h;
                    Object poll = pVar.poll();
                    boolean z10 = poll == null;
                    if (z9 && z10) {
                        Throwable th = this.f78417i;
                        if (th != null) {
                            for (io.reactivex.rxjava3.processors.h<T> hVar : list) {
                                hVar.onError(th);
                            }
                            dVar.onError(th);
                        } else {
                            for (io.reactivex.rxjava3.processors.h<T> hVar2 : list) {
                                hVar2.onComplete();
                            }
                            dVar.onComplete();
                        }
                        a();
                        this.f78420l = true;
                    } else if (!z10) {
                        if (poll == f78440s) {
                            if (!this.f78419k.get()) {
                                long j4 = this.f78415g;
                                if (this.f78414f.get() != j4) {
                                    this.f78415g = j4 + 1;
                                    this.f78421m.getAndIncrement();
                                    io.reactivex.rxjava3.processors.h<T> o9 = io.reactivex.rxjava3.processors.h.o9(this.f78413e, this);
                                    list.add(o9);
                                    y4 y4Var = new y4(o9);
                                    dVar.onNext(y4Var);
                                    this.f78443p.c(new a(this, false), this.f78411c, this.f78412d);
                                    if (y4Var.g9()) {
                                        o9.onComplete();
                                    }
                                } else {
                                    this.f78418j.cancel();
                                    MissingBackpressureException missingBackpressureException = new MissingBackpressureException(z4.g9(j4));
                                    for (io.reactivex.rxjava3.processors.h<T> hVar3 : list) {
                                        hVar3.onError(missingBackpressureException);
                                    }
                                    dVar.onError(missingBackpressureException);
                                    a();
                                    this.f78420l = true;
                                }
                            }
                        } else if (poll == f78441t) {
                            if (!list.isEmpty()) {
                                list.remove(0).onComplete();
                            }
                        } else {
                            for (io.reactivex.rxjava3.processors.h<T> hVar4 : list) {
                                hVar4.onNext(poll);
                            }
                        }
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        void e(boolean isOpen) {
            this.f78410b.offer(isOpen ? f78440s : f78441t);
            c();
        }

        @Override // java.lang.Runnable
        public void run() {
            d();
        }
    }

    public z4(io.reactivex.rxjava3.core.m<T> source, long timespan, long timeskip, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, long maxSize, int bufferSize, boolean restartTimerOnMaxSize) {
        super(source);
        this.f78401c = timespan;
        this.f78402d = timeskip;
        this.f78403e = unit;
        this.f78404f = scheduler;
        this.f78405g = maxSize;
        this.f78406h = bufferSize;
        this.f78407i = restartTimerOnMaxSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g9(long index) {
        return "Unable to emit the next window (#" + index + ") due to lack of requests. Please make sure the downstream is ready to consume windows.";
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> downstream) {
        if (this.f78401c == this.f78402d) {
            if (this.f78405g == Long.MAX_VALUE) {
                this.f76811b.G6(new c(downstream, this.f78401c, this.f78403e, this.f78404f, this.f78406h));
                return;
            } else {
                this.f76811b.G6(new b(downstream, this.f78401c, this.f78403e, this.f78404f, this.f78406h, this.f78405g, this.f78407i));
                return;
            }
        }
        this.f76811b.G6(new d(downstream, this.f78401c, this.f78402d, this.f78403e, this.f78404f.d(), this.f78406h));
    }
}
