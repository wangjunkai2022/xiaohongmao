package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableBufferTimed.java */
/* loaded from: classes4.dex */
public final class p<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final long f77696c;

    /* renamed from: d  reason: collision with root package name */
    final long f77697d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f77698e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77699f;

    /* renamed from: g  reason: collision with root package name */
    final q7.s<U> f77700g;

    /* renamed from: h  reason: collision with root package name */
    final int f77701h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f77702i;

    /* compiled from: FlowableBufferTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.subscribers.h<T, U, U> implements org.reactivestreams.e, Runnable, io.reactivex.rxjava3.disposables.f {
        long E2;
        long F2;
        final TimeUnit T1;
        final int V1;

        /* renamed from: b2  reason: collision with root package name */
        final boolean f77703b2;

        /* renamed from: g2  reason: collision with root package name */
        final o0.c f77704g2;

        /* renamed from: p2  reason: collision with root package name */
        U f77705p2;

        /* renamed from: x1  reason: collision with root package name */
        final q7.s<U> f77706x1;

        /* renamed from: x2  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f77707x2;

        /* renamed from: y1  reason: collision with root package name */
        final long f77708y1;

        /* renamed from: y2  reason: collision with root package name */
        org.reactivestreams.e f77709y2;

        a(org.reactivestreams.d<? super U> actual, q7.s<U> bufferSupplier, long timespan, TimeUnit unit, int maxSize, boolean restartOnMaxSize, o0.c w9) {
            super(actual, new io.reactivex.rxjava3.internal.queue.a());
            this.f77706x1 = bufferSupplier;
            this.f77708y1 = timespan;
            this.T1 = unit;
            this.V1 = maxSize;
            this.f77703b2 = restartOnMaxSize;
            this.f77704g2 = w9;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f81246b1) {
                return;
            }
            this.f81246b1 = true;
            dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            synchronized (this) {
                this.f77705p2 = null;
            }
            this.f77709y2.cancel();
            this.f77704g2.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77704g2.isDisposed();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.h, io.reactivex.rxjava3.internal.util.n
        /* renamed from: n */
        public boolean g(org.reactivestreams.d<? super U> a10, U v9) {
            a10.onNext(v9);
            return true;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            U u9;
            synchronized (this) {
                u9 = this.f77705p2;
                this.f77705p2 = null;
            }
            if (u9 != null) {
                this.W.offer(u9);
                this.f81247g1 = true;
                if (b()) {
                    io.reactivex.rxjava3.internal.util.o.e(this.W, this.V, false, this, this);
                }
                this.f77704g2.dispose();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            synchronized (this) {
                this.f77705p2 = null;
            }
            this.V.onError(t9);
            this.f77704g2.dispose();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.f77705p2;
                if (u9 == null) {
                    return;
                }
                u9.add(t9);
                if (u9.size() < this.V1) {
                    return;
                }
                this.f77705p2 = null;
                this.E2++;
                if (this.f77703b2) {
                    this.f77707x2.dispose();
                }
                l(u9, false, this);
                try {
                    U u10 = this.f77706x1.get();
                    Objects.requireNonNull(u10, "The supplied buffer is null");
                    U u11 = u10;
                    synchronized (this) {
                        this.f77705p2 = u11;
                        this.F2++;
                    }
                    if (this.f77703b2) {
                        o0.c cVar = this.f77704g2;
                        long j4 = this.f77708y1;
                        this.f77707x2 = cVar.d(this, j4, j4, this.T1);
                    }
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    cancel();
                    this.V.onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77709y2, s9)) {
                this.f77709y2 = s9;
                try {
                    U u9 = this.f77706x1.get();
                    Objects.requireNonNull(u9, "The supplied buffer is null");
                    this.f77705p2 = u9;
                    this.V.onSubscribe(this);
                    o0.c cVar = this.f77704g2;
                    long j4 = this.f77708y1;
                    this.f77707x2 = cVar.d(this, j4, j4, this.T1);
                    s9.request(Long.MAX_VALUE);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f77704g2.dispose();
                    s9.cancel();
                    EmptySubscription.error(th, this.V);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            m(n9);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u9 = this.f77706x1.get();
                Objects.requireNonNull(u9, "The supplied buffer is null");
                U u10 = u9;
                synchronized (this) {
                    U u11 = this.f77705p2;
                    if (u11 != null && this.E2 == this.F2) {
                        this.f77705p2 = u10;
                        l(u11, false, this);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                this.V.onError(th);
            }
        }
    }

    /* compiled from: FlowableBufferTimed.java */
    /* loaded from: classes4.dex */
    static final class b<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.subscribers.h<T, U, U> implements org.reactivestreams.e, Runnable, io.reactivex.rxjava3.disposables.f {
        final TimeUnit T1;
        final io.reactivex.rxjava3.core.o0 V1;

        /* renamed from: b2  reason: collision with root package name */
        org.reactivestreams.e f77710b2;

        /* renamed from: g2  reason: collision with root package name */
        U f77711g2;

        /* renamed from: p2  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f77712p2;

        /* renamed from: x1  reason: collision with root package name */
        final q7.s<U> f77713x1;

        /* renamed from: y1  reason: collision with root package name */
        final long f77714y1;

        b(org.reactivestreams.d<? super U> actual, q7.s<U> bufferSupplier, long timespan, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
            super(actual, new io.reactivex.rxjava3.internal.queue.a());
            this.f77712p2 = new AtomicReference<>();
            this.f77713x1 = bufferSupplier;
            this.f77714y1 = timespan;
            this.T1 = unit;
            this.V1 = scheduler;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f81246b1 = true;
            this.f77710b2.cancel();
            DisposableHelper.dispose(this.f77712p2);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77712p2.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.h, io.reactivex.rxjava3.internal.util.n
        /* renamed from: n */
        public boolean g(org.reactivestreams.d<? super U> a10, U v9) {
            this.V.onNext(v9);
            return true;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            DisposableHelper.dispose(this.f77712p2);
            synchronized (this) {
                U u9 = this.f77711g2;
                if (u9 == null) {
                    return;
                }
                this.f77711g2 = null;
                this.W.offer(u9);
                this.f81247g1 = true;
                if (b()) {
                    io.reactivex.rxjava3.internal.util.o.e(this.W, this.V, false, null, this);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            DisposableHelper.dispose(this.f77712p2);
            synchronized (this) {
                this.f77711g2 = null;
            }
            this.V.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.f77711g2;
                if (u9 != null) {
                    u9.add(t9);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77710b2, s9)) {
                this.f77710b2 = s9;
                try {
                    U u9 = this.f77713x1.get();
                    Objects.requireNonNull(u9, "The supplied buffer is null");
                    this.f77711g2 = u9;
                    this.V.onSubscribe(this);
                    if (this.f81246b1) {
                        return;
                    }
                    s9.request(Long.MAX_VALUE);
                    io.reactivex.rxjava3.core.o0 o0Var = this.V1;
                    long j4 = this.f77714y1;
                    io.reactivex.rxjava3.disposables.f h4 = o0Var.h(this, j4, j4, this.T1);
                    if (this.f77712p2.compareAndSet(null, h4)) {
                        return;
                    }
                    h4.dispose();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    cancel();
                    EmptySubscription.error(th, this.V);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            m(n9);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u9 = this.f77713x1.get();
                Objects.requireNonNull(u9, "The supplied buffer is null");
                U u10 = u9;
                synchronized (this) {
                    U u11 = this.f77711g2;
                    if (u11 == null) {
                        return;
                    }
                    this.f77711g2 = u10;
                    k(u11, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                this.V.onError(th);
            }
        }
    }

    /* compiled from: FlowableBufferTimed.java */
    /* loaded from: classes4.dex */
    static final class c<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.subscribers.h<T, U, U> implements org.reactivestreams.e, Runnable {
        final long T1;
        final TimeUnit V1;

        /* renamed from: b2  reason: collision with root package name */
        final o0.c f77715b2;

        /* renamed from: g2  reason: collision with root package name */
        final List<U> f77716g2;

        /* renamed from: p2  reason: collision with root package name */
        org.reactivestreams.e f77717p2;

        /* renamed from: x1  reason: collision with root package name */
        final q7.s<U> f77718x1;

        /* renamed from: y1  reason: collision with root package name */
        final long f77719y1;

        /* compiled from: FlowableBufferTimed.java */
        /* loaded from: classes4.dex */
        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f77720a;

            a(U buffer) {
                this.f77720a = buffer;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.f77716g2.remove(this.f77720a);
                }
                c cVar = c.this;
                cVar.l(this.f77720a, false, cVar.f77715b2);
            }
        }

        c(org.reactivestreams.d<? super U> actual, q7.s<U> bufferSupplier, long timespan, long timeskip, TimeUnit unit, o0.c w9) {
            super(actual, new io.reactivex.rxjava3.internal.queue.a());
            this.f77718x1 = bufferSupplier;
            this.f77719y1 = timespan;
            this.T1 = timeskip;
            this.V1 = unit;
            this.f77715b2 = w9;
            this.f77716g2 = new LinkedList();
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f81246b1 = true;
            this.f77717p2.cancel();
            this.f77715b2.dispose();
            p();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.h, io.reactivex.rxjava3.internal.util.n
        /* renamed from: n */
        public boolean g(org.reactivestreams.d<? super U> a10, U v9) {
            a10.onNext(v9);
            return true;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.f77716g2);
                this.f77716g2.clear();
            }
            for (Collection collection : arrayList) {
                this.W.offer(collection);
            }
            this.f81247g1 = true;
            if (b()) {
                io.reactivex.rxjava3.internal.util.o.e(this.W, this.V, false, this.f77715b2, this);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f81247g1 = true;
            this.f77715b2.dispose();
            p();
            this.V.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            synchronized (this) {
                for (U u9 : this.f77716g2) {
                    u9.add(t9);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77717p2, s9)) {
                this.f77717p2 = s9;
                try {
                    U u9 = this.f77718x1.get();
                    Objects.requireNonNull(u9, "The supplied buffer is null");
                    U u10 = u9;
                    this.f77716g2.add(u10);
                    this.V.onSubscribe(this);
                    s9.request(Long.MAX_VALUE);
                    o0.c cVar = this.f77715b2;
                    long j4 = this.T1;
                    cVar.d(this, j4, j4, this.V1);
                    this.f77715b2.c(new a(u10), this.f77719y1, this.V1);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f77715b2.dispose();
                    s9.cancel();
                    EmptySubscription.error(th, this.V);
                }
            }
        }

        void p() {
            synchronized (this) {
                this.f77716g2.clear();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            m(n9);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f81246b1) {
                return;
            }
            try {
                U u9 = this.f77718x1.get();
                Objects.requireNonNull(u9, "The supplied buffer is null");
                U u10 = u9;
                synchronized (this) {
                    if (this.f81246b1) {
                        return;
                    }
                    this.f77716g2.add(u10);
                    this.f77715b2.c(new a(u10), this.f77719y1, this.V1);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                this.V.onError(th);
            }
        }
    }

    public p(io.reactivex.rxjava3.core.m<T> source, long timespan, long timeskip, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, q7.s<U> bufferSupplier, int maxSize, boolean restartTimerOnMaxSize) {
        super(source);
        this.f77696c = timespan;
        this.f77697d = timeskip;
        this.f77698e = unit;
        this.f77699f = scheduler;
        this.f77700g = bufferSupplier;
        this.f77701h = maxSize;
        this.f77702i = restartTimerOnMaxSize;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super U> s9) {
        if (this.f77696c == this.f77697d && this.f77701h == Integer.MAX_VALUE) {
            this.f76811b.G6(new b(new io.reactivex.rxjava3.subscribers.e(s9), this.f77700g, this.f77696c, this.f77698e, this.f77699f));
            return;
        }
        o0.c d4 = this.f77699f.d();
        if (this.f77696c == this.f77697d) {
            this.f76811b.G6(new a(new io.reactivex.rxjava3.subscribers.e(s9), this.f77700g, this.f77696c, this.f77698e, this.f77701h, this.f77702i, d4));
        } else {
            this.f76811b.G6(new c(new io.reactivex.rxjava3.subscribers.e(s9), this.f77700g, this.f77696c, this.f77697d, this.f77698e, d4));
        }
    }
}
