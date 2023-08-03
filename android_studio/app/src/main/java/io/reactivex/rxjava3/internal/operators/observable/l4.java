package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableWindowTimed.java */
/* loaded from: classes4.dex */
public final class l4<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, io.reactivex.rxjava3.core.g0<T>> {

    /* renamed from: b  reason: collision with root package name */
    final long f79681b;

    /* renamed from: c  reason: collision with root package name */
    final long f79682c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f79683d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f79684e;

    /* renamed from: f  reason: collision with root package name */
    final long f79685f;

    /* renamed from: g  reason: collision with root package name */
    final int f79686g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f79687h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableWindowTimed.java */
    /* loaded from: classes4.dex */
    public static abstract class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: m  reason: collision with root package name */
        private static final long f79688m = 5724293814035355511L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> f79689a;

        /* renamed from: c  reason: collision with root package name */
        final long f79691c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f79692d;

        /* renamed from: e  reason: collision with root package name */
        final int f79693e;

        /* renamed from: f  reason: collision with root package name */
        long f79694f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79695g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f79696h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79697i;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f79699k;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<Object> f79690b = new io.reactivex.rxjava3.internal.queue.a();

        /* renamed from: j  reason: collision with root package name */
        final AtomicBoolean f79698j = new AtomicBoolean();

        /* renamed from: l  reason: collision with root package name */
        final AtomicInteger f79700l = new AtomicInteger(1);

        a(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> downstream, long timespan, TimeUnit unit, int bufferSize) {
            this.f79689a = downstream;
            this.f79691c = timespan;
            this.f79692d = unit;
            this.f79693e = bufferSize;
        }

        abstract void a();

        abstract void b();

        abstract void c();

        final void d() {
            if (this.f79700l.decrementAndGet() == 0) {
                a();
                this.f79697i.dispose();
                this.f79699k = true;
                c();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public final void dispose() {
            if (this.f79698j.compareAndSet(false, true)) {
                d();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public final boolean isDisposed() {
            return this.f79698j.get();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public final void onComplete() {
            this.f79695g = true;
            c();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public final void onError(Throwable t9) {
            this.f79696h = t9;
            this.f79695g = true;
            c();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public final void onNext(T t9) {
            this.f79690b.offer(t9);
            c();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public final void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79697i, d4)) {
                this.f79697i = d4;
                this.f79689a.onSubscribe(this);
                b();
            }
        }
    }

    /* compiled from: ObservableWindowTimed.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends a<T> implements Runnable {

        /* renamed from: u  reason: collision with root package name */
        private static final long f79701u = -6130475889925953722L;

        /* renamed from: n  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f79702n;

        /* renamed from: o  reason: collision with root package name */
        final boolean f79703o;

        /* renamed from: p  reason: collision with root package name */
        final long f79704p;

        /* renamed from: q  reason: collision with root package name */
        final o0.c f79705q;

        /* renamed from: r  reason: collision with root package name */
        long f79706r;

        /* renamed from: s  reason: collision with root package name */
        io.reactivex.rxjava3.subjects.j<T> f79707s;

        /* renamed from: t  reason: collision with root package name */
        final SequentialDisposable f79708t;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowTimed.java */
        /* loaded from: classes4.dex */
        public static final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final b<?> f79709a;

            /* renamed from: b  reason: collision with root package name */
            final long f79710b;

            a(b<?> parent, long index) {
                this.f79709a = parent;
                this.f79710b = index;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f79709a.e(this);
            }
        }

        b(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> actual, long timespan, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize, long maxSize, boolean restartTimerOnMaxSize) {
            super(actual, timespan, unit, bufferSize);
            this.f79702n = scheduler;
            this.f79704p = maxSize;
            this.f79703o = restartTimerOnMaxSize;
            if (restartTimerOnMaxSize) {
                this.f79705q = scheduler.d();
            } else {
                this.f79705q = null;
            }
            this.f79708t = new SequentialDisposable();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.l4.a
        void a() {
            this.f79708t.dispose();
            o0.c cVar = this.f79705q;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.l4.a
        void b() {
            if (this.f79698j.get()) {
                return;
            }
            this.f79694f = 1L;
            this.f79700l.getAndIncrement();
            io.reactivex.rxjava3.subjects.j<T> H8 = io.reactivex.rxjava3.subjects.j.H8(this.f79693e, this);
            this.f79707s = H8;
            k4 k4Var = new k4(H8);
            this.f79689a.onNext(k4Var);
            a aVar = new a(this, 1L);
            if (this.f79703o) {
                SequentialDisposable sequentialDisposable = this.f79708t;
                o0.c cVar = this.f79705q;
                long j4 = this.f79691c;
                sequentialDisposable.replace(cVar.d(aVar, j4, j4, this.f79692d));
            } else {
                SequentialDisposable sequentialDisposable2 = this.f79708t;
                io.reactivex.rxjava3.core.o0 o0Var = this.f79702n;
                long j10 = this.f79691c;
                sequentialDisposable2.replace(o0Var.h(aVar, j10, j10, this.f79692d));
            }
            if (k4Var.A8()) {
                this.f79707s.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.internal.operators.observable.l4.a
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.fuseable.p<Object> pVar = this.f79690b;
            io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> n0Var = this.f79689a;
            io.reactivex.rxjava3.subjects.j<T> jVar = this.f79707s;
            int i4 = 1;
            while (true) {
                if (this.f79699k) {
                    pVar.clear();
                    this.f79707s = null;
                    jVar = null;
                } else {
                    boolean z9 = this.f79695g;
                    Object poll = pVar.poll();
                    boolean z10 = poll == null;
                    if (z9 && z10) {
                        Throwable th = this.f79696h;
                        if (th != null) {
                            if (jVar != 0) {
                                jVar.onError(th);
                            }
                            n0Var.onError(th);
                        } else {
                            if (jVar != 0) {
                                jVar.onComplete();
                            }
                            n0Var.onComplete();
                        }
                        a();
                        this.f79699k = true;
                    } else if (!z10) {
                        if (poll instanceof a) {
                            if (((a) poll).f79710b == this.f79694f || !this.f79703o) {
                                this.f79706r = 0L;
                                jVar = h(jVar);
                            }
                        } else if (jVar != null) {
                            jVar.onNext(poll);
                            long j4 = this.f79706r + 1;
                            if (j4 == this.f79704p) {
                                this.f79706r = 0L;
                                jVar = h(jVar);
                            } else {
                                this.f79706r = j4;
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
            this.f79690b.offer(sender);
            c();
        }

        io.reactivex.rxjava3.subjects.j<T> h(io.reactivex.rxjava3.subjects.j<T> window) {
            if (window != null) {
                window.onComplete();
                window = null;
            }
            if (this.f79698j.get()) {
                a();
            } else {
                long j4 = this.f79694f + 1;
                this.f79694f = j4;
                this.f79700l.getAndIncrement();
                window = io.reactivex.rxjava3.subjects.j.H8(this.f79693e, this);
                this.f79707s = window;
                k4 k4Var = new k4(window);
                this.f79689a.onNext(k4Var);
                if (this.f79703o) {
                    SequentialDisposable sequentialDisposable = this.f79708t;
                    o0.c cVar = this.f79705q;
                    a aVar = new a(this, j4);
                    long j10 = this.f79691c;
                    sequentialDisposable.update(cVar.d(aVar, j10, j10, this.f79692d));
                }
                if (k4Var.A8()) {
                    window.onComplete();
                }
            }
            return window;
        }

        @Override // java.lang.Runnable
        public void run() {
            d();
        }
    }

    /* compiled from: ObservableWindowTimed.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends a<T> implements Runnable {

        /* renamed from: r  reason: collision with root package name */
        private static final long f79711r = 1155822639622580836L;

        /* renamed from: s  reason: collision with root package name */
        static final Object f79712s = new Object();

        /* renamed from: n  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f79713n;

        /* renamed from: o  reason: collision with root package name */
        io.reactivex.rxjava3.subjects.j<T> f79714o;

        /* renamed from: p  reason: collision with root package name */
        final SequentialDisposable f79715p;

        /* renamed from: q  reason: collision with root package name */
        final Runnable f79716q;

        /* compiled from: ObservableWindowTimed.java */
        /* loaded from: classes4.dex */
        final class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.d();
            }
        }

        c(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> actual, long timespan, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize) {
            super(actual, timespan, unit, bufferSize);
            this.f79713n = scheduler;
            this.f79715p = new SequentialDisposable();
            this.f79716q = new a();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.l4.a
        void a() {
            this.f79715p.dispose();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.l4.a
        void b() {
            if (this.f79698j.get()) {
                return;
            }
            this.f79700l.getAndIncrement();
            io.reactivex.rxjava3.subjects.j<T> H8 = io.reactivex.rxjava3.subjects.j.H8(this.f79693e, this.f79716q);
            this.f79714o = H8;
            this.f79694f = 1L;
            k4 k4Var = new k4(H8);
            this.f79689a.onNext(k4Var);
            SequentialDisposable sequentialDisposable = this.f79715p;
            io.reactivex.rxjava3.core.o0 o0Var = this.f79713n;
            long j4 = this.f79691c;
            sequentialDisposable.replace(o0Var.h(this, j4, j4, this.f79692d));
            if (k4Var.A8()) {
                this.f79714o.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.internal.operators.observable.l4.a
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.fuseable.p<Object> pVar = this.f79690b;
            io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> n0Var = this.f79689a;
            io.reactivex.rxjava3.subjects.j<T> jVar = this.f79714o;
            int i4 = 1;
            while (true) {
                if (this.f79699k) {
                    pVar.clear();
                    this.f79714o = null;
                    jVar = (io.reactivex.rxjava3.subjects.j<T>) null;
                } else {
                    boolean z9 = this.f79695g;
                    Object poll = pVar.poll();
                    boolean z10 = poll == null;
                    if (z9 && z10) {
                        Throwable th = this.f79696h;
                        if (th != null) {
                            if (jVar != null) {
                                jVar.onError(th);
                            }
                            n0Var.onError(th);
                        } else {
                            if (jVar != null) {
                                jVar.onComplete();
                            }
                            n0Var.onComplete();
                        }
                        a();
                        this.f79699k = true;
                    } else if (!z10) {
                        if (poll == f79712s) {
                            if (jVar != null) {
                                jVar.onComplete();
                                this.f79714o = null;
                                jVar = (io.reactivex.rxjava3.subjects.j<T>) null;
                            }
                            if (this.f79698j.get()) {
                                this.f79715p.dispose();
                            } else {
                                this.f79694f++;
                                this.f79700l.getAndIncrement();
                                jVar = (io.reactivex.rxjava3.subjects.j<T>) io.reactivex.rxjava3.subjects.j.H8(this.f79693e, this.f79716q);
                                this.f79714o = jVar;
                                k4 k4Var = new k4(jVar);
                                n0Var.onNext(k4Var);
                                if (k4Var.A8()) {
                                    jVar.onComplete();
                                }
                            }
                        } else if (jVar != null) {
                            jVar.onNext(poll);
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
            this.f79690b.offer(f79712s);
            c();
        }
    }

    /* compiled from: ObservableWindowTimed.java */
    /* loaded from: classes4.dex */
    static final class d<T> extends a<T> implements Runnable {

        /* renamed from: q  reason: collision with root package name */
        private static final long f79718q = -7852870764194095894L;

        /* renamed from: r  reason: collision with root package name */
        static final Object f79719r = new Object();

        /* renamed from: s  reason: collision with root package name */
        static final Object f79720s = new Object();

        /* renamed from: n  reason: collision with root package name */
        final long f79721n;

        /* renamed from: o  reason: collision with root package name */
        final o0.c f79722o;

        /* renamed from: p  reason: collision with root package name */
        final List<io.reactivex.rxjava3.subjects.j<T>> f79723p;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowTimed.java */
        /* loaded from: classes4.dex */
        public static final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final d<?> f79724a;

            /* renamed from: b  reason: collision with root package name */
            final boolean f79725b;

            a(d<?> parent, boolean isOpen) {
                this.f79724a = parent;
                this.f79725b = isOpen;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f79724a.e(this.f79725b);
            }
        }

        d(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> actual, long timespan, long timeskip, TimeUnit unit, o0.c worker, int bufferSize) {
            super(actual, timespan, unit, bufferSize);
            this.f79721n = timeskip;
            this.f79722o = worker;
            this.f79723p = new LinkedList();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.l4.a
        void a() {
            this.f79722o.dispose();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.l4.a
        void b() {
            if (this.f79698j.get()) {
                return;
            }
            this.f79694f = 1L;
            this.f79700l.getAndIncrement();
            io.reactivex.rxjava3.subjects.j<T> H8 = io.reactivex.rxjava3.subjects.j.H8(this.f79693e, this);
            this.f79723p.add(H8);
            k4 k4Var = new k4(H8);
            this.f79689a.onNext(k4Var);
            this.f79722o.c(new a(this, false), this.f79691c, this.f79692d);
            o0.c cVar = this.f79722o;
            a aVar = new a(this, true);
            long j4 = this.f79721n;
            cVar.d(aVar, j4, j4, this.f79692d);
            if (k4Var.A8()) {
                H8.onComplete();
                this.f79723p.remove(H8);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.l4.a
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.fuseable.p<Object> pVar = this.f79690b;
            io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> n0Var = this.f79689a;
            List<io.reactivex.rxjava3.subjects.j<T>> list = this.f79723p;
            int i4 = 1;
            while (true) {
                if (this.f79699k) {
                    pVar.clear();
                    list.clear();
                } else {
                    boolean z9 = this.f79695g;
                    Object poll = pVar.poll();
                    boolean z10 = poll == null;
                    if (z9 && z10) {
                        Throwable th = this.f79696h;
                        if (th != null) {
                            for (io.reactivex.rxjava3.subjects.j<T> jVar : list) {
                                jVar.onError(th);
                            }
                            n0Var.onError(th);
                        } else {
                            for (io.reactivex.rxjava3.subjects.j<T> jVar2 : list) {
                                jVar2.onComplete();
                            }
                            n0Var.onComplete();
                        }
                        a();
                        this.f79699k = true;
                    } else if (!z10) {
                        if (poll == f79719r) {
                            if (!this.f79698j.get()) {
                                this.f79694f++;
                                this.f79700l.getAndIncrement();
                                io.reactivex.rxjava3.subjects.j<T> H8 = io.reactivex.rxjava3.subjects.j.H8(this.f79693e, this);
                                list.add(H8);
                                k4 k4Var = new k4(H8);
                                n0Var.onNext(k4Var);
                                this.f79722o.c(new a(this, false), this.f79691c, this.f79692d);
                                if (k4Var.A8()) {
                                    H8.onComplete();
                                }
                            }
                        } else if (poll == f79720s) {
                            if (!list.isEmpty()) {
                                list.remove(0).onComplete();
                            }
                        } else {
                            for (io.reactivex.rxjava3.subjects.j<T> jVar3 : list) {
                                jVar3.onNext(poll);
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
            this.f79690b.offer(isOpen ? f79719r : f79720s);
            c();
        }

        @Override // java.lang.Runnable
        public void run() {
            d();
        }
    }

    public l4(io.reactivex.rxjava3.core.g0<T> source, long timespan, long timeskip, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, long maxSize, int bufferSize, boolean restartTimerOnMaxSize) {
        super(source);
        this.f79681b = timespan;
        this.f79682c = timeskip;
        this.f79683d = unit;
        this.f79684e = scheduler;
        this.f79685f = maxSize;
        this.f79686g = bufferSize;
        this.f79687h = restartTimerOnMaxSize;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> downstream) {
        if (this.f79681b == this.f79682c) {
            if (this.f79685f == Long.MAX_VALUE) {
                this.f79141a.a(new c(downstream, this.f79681b, this.f79683d, this.f79684e, this.f79686g));
                return;
            } else {
                this.f79141a.a(new b(downstream, this.f79681b, this.f79683d, this.f79684e, this.f79686g, this.f79685f, this.f79687h));
                return;
            }
        }
        this.f79141a.a(new d(downstream, this.f79681b, this.f79682c, this.f79683d, this.f79684e.d(), this.f79686g));
    }
}
