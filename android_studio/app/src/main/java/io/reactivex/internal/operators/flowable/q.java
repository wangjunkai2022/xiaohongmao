package io.reactivex.internal.operators.flowable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableBufferTimed.java */
/* loaded from: classes3.dex */
public final class q<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final long f72471c;

    /* renamed from: d  reason: collision with root package name */
    final long f72472d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f72473e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.h0 f72474f;

    /* renamed from: g  reason: collision with root package name */
    final Callable<U> f72475g;

    /* renamed from: h  reason: collision with root package name */
    final int f72476h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f72477i;

    /* compiled from: FlowableBufferTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T, U extends Collection<? super T>> extends io.reactivex.internal.subscribers.h<T, U, U> implements org.reactivestreams.e, Runnable, io.reactivex.disposables.c {
        long E2;
        long F2;
        final TimeUnit T1;
        final int V1;

        /* renamed from: b2  reason: collision with root package name */
        final boolean f72478b2;

        /* renamed from: g2  reason: collision with root package name */
        final h0.c f72479g2;

        /* renamed from: p2  reason: collision with root package name */
        U f72480p2;

        /* renamed from: x1  reason: collision with root package name */
        final Callable<U> f72481x1;

        /* renamed from: x2  reason: collision with root package name */
        io.reactivex.disposables.c f72482x2;

        /* renamed from: y1  reason: collision with root package name */
        final long f72483y1;

        /* renamed from: y2  reason: collision with root package name */
        org.reactivestreams.e f72484y2;

        a(org.reactivestreams.d<? super U> dVar, Callable<U> callable, long j4, TimeUnit timeUnit, int i4, boolean z9, h0.c cVar) {
            super(dVar, new io.reactivex.internal.queue.a());
            this.f72481x1 = callable;
            this.f72483y1 = j4;
            this.T1 = timeUnit;
            this.V1 = i4;
            this.f72478b2 = z9;
            this.f72479g2 = cVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f75831b1) {
                return;
            }
            this.f75831b1 = true;
            dispose();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            synchronized (this) {
                this.f72480p2 = null;
            }
            this.f72484y2.cancel();
            this.f72479g2.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72479g2.isDisposed();
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.n
        /* renamed from: n */
        public boolean g(org.reactivestreams.d<? super U> dVar, U u9) {
            dVar.onNext(u9);
            return true;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            U u9;
            synchronized (this) {
                u9 = this.f72480p2;
                this.f72480p2 = null;
            }
            if (u9 != null) {
                this.W.offer(u9);
                this.f75832g1 = true;
                if (b()) {
                    io.reactivex.internal.util.o.e(this.W, this.V, false, this, this);
                }
                this.f72479g2.dispose();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            synchronized (this) {
                this.f72480p2 = null;
            }
            this.V.onError(th);
            this.f72479g2.dispose();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.f72480p2;
                if (u9 == null) {
                    return;
                }
                u9.add(t9);
                if (u9.size() < this.V1) {
                    return;
                }
                this.f72480p2 = null;
                this.E2++;
                if (this.f72478b2) {
                    this.f72482x2.dispose();
                }
                l(u9, false, this);
                try {
                    U u10 = (U) io.reactivex.internal.functions.b.g(this.f72481x1.call(), "The supplied buffer is null");
                    synchronized (this) {
                        this.f72480p2 = u10;
                        this.F2++;
                    }
                    if (this.f72478b2) {
                        h0.c cVar = this.f72479g2;
                        long j4 = this.f72483y1;
                        this.f72482x2 = cVar.d(this, j4, j4, this.T1);
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    this.V.onError(th);
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72484y2, eVar)) {
                this.f72484y2 = eVar;
                try {
                    this.f72480p2 = (U) io.reactivex.internal.functions.b.g(this.f72481x1.call(), "The supplied buffer is null");
                    this.V.onSubscribe(this);
                    h0.c cVar = this.f72479g2;
                    long j4 = this.f72483y1;
                    this.f72482x2 = cVar.d(this, j4, j4, this.T1);
                    eVar.request(Long.MAX_VALUE);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f72479g2.dispose();
                    eVar.cancel();
                    EmptySubscription.error(th, this.V);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            m(j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u9 = (U) io.reactivex.internal.functions.b.g(this.f72481x1.call(), "The supplied buffer is null");
                synchronized (this) {
                    U u10 = this.f72480p2;
                    if (u10 != null && this.E2 == this.F2) {
                        this.f72480p2 = u9;
                        l(u10, false, this);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                this.V.onError(th);
            }
        }
    }

    /* compiled from: FlowableBufferTimed.java */
    /* loaded from: classes3.dex */
    static final class b<T, U extends Collection<? super T>> extends io.reactivex.internal.subscribers.h<T, U, U> implements org.reactivestreams.e, Runnable, io.reactivex.disposables.c {
        final TimeUnit T1;
        final io.reactivex.h0 V1;

        /* renamed from: b2  reason: collision with root package name */
        org.reactivestreams.e f72485b2;

        /* renamed from: g2  reason: collision with root package name */
        U f72486g2;

        /* renamed from: p2  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f72487p2;

        /* renamed from: x1  reason: collision with root package name */
        final Callable<U> f72488x1;

        /* renamed from: y1  reason: collision with root package name */
        final long f72489y1;

        b(org.reactivestreams.d<? super U> dVar, Callable<U> callable, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(dVar, new io.reactivex.internal.queue.a());
            this.f72487p2 = new AtomicReference<>();
            this.f72488x1 = callable;
            this.f72489y1 = j4;
            this.T1 = timeUnit;
            this.V1 = h0Var;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75831b1 = true;
            this.f72485b2.cancel();
            DisposableHelper.dispose(this.f72487p2);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72487p2.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.n
        /* renamed from: n */
        public boolean g(org.reactivestreams.d<? super U> dVar, U u9) {
            this.V.onNext(u9);
            return true;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            DisposableHelper.dispose(this.f72487p2);
            synchronized (this) {
                U u9 = this.f72486g2;
                if (u9 == null) {
                    return;
                }
                this.f72486g2 = null;
                this.W.offer(u9);
                this.f75832g1 = true;
                if (b()) {
                    io.reactivex.internal.util.o.e(this.W, this.V, false, null, this);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f72487p2);
            synchronized (this) {
                this.f72486g2 = null;
            }
            this.V.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.f72486g2;
                if (u9 != null) {
                    u9.add(t9);
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72485b2, eVar)) {
                this.f72485b2 = eVar;
                try {
                    this.f72486g2 = (U) io.reactivex.internal.functions.b.g(this.f72488x1.call(), "The supplied buffer is null");
                    this.V.onSubscribe(this);
                    if (this.f75831b1) {
                        return;
                    }
                    eVar.request(Long.MAX_VALUE);
                    io.reactivex.h0 h0Var = this.V1;
                    long j4 = this.f72489y1;
                    io.reactivex.disposables.c h4 = h0Var.h(this, j4, j4, this.T1);
                    if (this.f72487p2.compareAndSet(null, h4)) {
                        return;
                    }
                    h4.dispose();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    EmptySubscription.error(th, this.V);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            m(j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u9 = (U) io.reactivex.internal.functions.b.g(this.f72488x1.call(), "The supplied buffer is null");
                synchronized (this) {
                    U u10 = this.f72486g2;
                    if (u10 == null) {
                        return;
                    }
                    this.f72486g2 = u9;
                    k(u10, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                this.V.onError(th);
            }
        }
    }

    /* compiled from: FlowableBufferTimed.java */
    /* loaded from: classes3.dex */
    static final class c<T, U extends Collection<? super T>> extends io.reactivex.internal.subscribers.h<T, U, U> implements org.reactivestreams.e, Runnable {
        final long T1;
        final TimeUnit V1;

        /* renamed from: b2  reason: collision with root package name */
        final h0.c f72490b2;

        /* renamed from: g2  reason: collision with root package name */
        final List<U> f72491g2;

        /* renamed from: p2  reason: collision with root package name */
        org.reactivestreams.e f72492p2;

        /* renamed from: x1  reason: collision with root package name */
        final Callable<U> f72493x1;

        /* renamed from: y1  reason: collision with root package name */
        final long f72494y1;

        /* compiled from: FlowableBufferTimed.java */
        /* loaded from: classes3.dex */
        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f72495a;

            a(U u9) {
                this.f72495a = u9;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.f72491g2.remove(this.f72495a);
                }
                c cVar = c.this;
                cVar.l(this.f72495a, false, cVar.f72490b2);
            }
        }

        c(org.reactivestreams.d<? super U> dVar, Callable<U> callable, long j4, long j10, TimeUnit timeUnit, h0.c cVar) {
            super(dVar, new io.reactivex.internal.queue.a());
            this.f72493x1 = callable;
            this.f72494y1 = j4;
            this.T1 = j10;
            this.V1 = timeUnit;
            this.f72490b2 = cVar;
            this.f72491g2 = new LinkedList();
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75831b1 = true;
            this.f72492p2.cancel();
            this.f72490b2.dispose();
            p();
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.n
        /* renamed from: n */
        public boolean g(org.reactivestreams.d<? super U> dVar, U u9) {
            dVar.onNext(u9);
            return true;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.f72491g2);
                this.f72491g2.clear();
            }
            for (Collection collection : arrayList) {
                this.W.offer(collection);
            }
            this.f75832g1 = true;
            if (b()) {
                io.reactivex.internal.util.o.e(this.W, this.V, false, this.f72490b2, this);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75832g1 = true;
            this.f72490b2.dispose();
            p();
            this.V.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            synchronized (this) {
                for (U u9 : this.f72491g2) {
                    u9.add(t9);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72492p2, eVar)) {
                this.f72492p2 = eVar;
                try {
                    Collection collection = (Collection) io.reactivex.internal.functions.b.g(this.f72493x1.call(), "The supplied buffer is null");
                    this.f72491g2.add(collection);
                    this.V.onSubscribe(this);
                    eVar.request(Long.MAX_VALUE);
                    h0.c cVar = this.f72490b2;
                    long j4 = this.T1;
                    cVar.d(this, j4, j4, this.V1);
                    this.f72490b2.c(new a(collection), this.f72494y1, this.V1);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f72490b2.dispose();
                    eVar.cancel();
                    EmptySubscription.error(th, this.V);
                }
            }
        }

        void p() {
            synchronized (this) {
                this.f72491g2.clear();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            m(j4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (this.f75831b1) {
                return;
            }
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.b.g(this.f72493x1.call(), "The supplied buffer is null");
                synchronized (this) {
                    if (this.f75831b1) {
                        return;
                    }
                    this.f72491g2.add(collection);
                    this.f72490b2.c(new a(collection), this.f72494y1, this.V1);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                this.V.onError(th);
            }
        }
    }

    public q(io.reactivex.j<T> jVar, long j4, long j10, TimeUnit timeUnit, io.reactivex.h0 h0Var, Callable<U> callable, int i4, boolean z9) {
        super(jVar);
        this.f72471c = j4;
        this.f72472d = j10;
        this.f72473e = timeUnit;
        this.f72474f = h0Var;
        this.f72475g = callable;
        this.f72476h = i4;
        this.f72477i = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super U> dVar) {
        if (this.f72471c == this.f72472d && this.f72476h == Integer.MAX_VALUE) {
            this.f71538b.j6(new b(new io.reactivex.subscribers.e(dVar), this.f72475g, this.f72471c, this.f72473e, this.f72474f));
            return;
        }
        h0.c d4 = this.f72474f.d();
        if (this.f72471c == this.f72472d) {
            this.f71538b.j6(new a(new io.reactivex.subscribers.e(dVar), this.f72475g, this.f72471c, this.f72473e, this.f72476h, this.f72477i, d4));
        } else {
            this.f71538b.j6(new c(new io.reactivex.subscribers.e(dVar), this.f72475g, this.f72471c, this.f72472d, this.f72473e, d4));
        }
    }
}
