package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableBufferTimed.java */
/* loaded from: classes4.dex */
public final class p<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final long f79907b;

    /* renamed from: c  reason: collision with root package name */
    final long f79908c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f79909d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f79910e;

    /* renamed from: f  reason: collision with root package name */
    final q7.s<U> f79911f;

    /* renamed from: g  reason: collision with root package name */
    final int f79912g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f79913h;

    /* compiled from: ObservableBufferTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.observers.l<T, U, U> implements Runnable, io.reactivex.rxjava3.disposables.f {
        final q7.s<U> K;
        final long L;
        final TimeUnit M;
        final int N;
        final boolean O;
        final o0.c P;
        U Q;
        io.reactivex.rxjava3.disposables.f R;
        io.reactivex.rxjava3.disposables.f S;
        long T;
        long U;

        a(io.reactivex.rxjava3.core.n0<? super U> actual, q7.s<U> bufferSupplier, long timespan, TimeUnit unit, int maxSize, boolean restartOnMaxSize, o0.c w9) {
            super(actual, new io.reactivex.rxjava3.internal.queue.a());
            this.K = bufferSupplier;
            this.L = timespan;
            this.M = unit;
            this.N = maxSize;
            this.O = restartOnMaxSize;
            this.P = w9;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.H) {
                return;
            }
            this.H = true;
            this.S.dispose();
            this.P.dispose();
            synchronized (this) {
                this.Q = null;
            }
        }

        @Override // io.reactivex.rxjava3.internal.observers.l, io.reactivex.rxjava3.internal.util.k
        /* renamed from: i */
        public void e(io.reactivex.rxjava3.core.n0<? super U> a10, U v9) {
            a10.onNext(v9);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.H;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            U u9;
            this.P.dispose();
            synchronized (this) {
                u9 = this.Q;
                this.Q = null;
            }
            if (u9 != null) {
                this.G.offer(u9);
                this.I = true;
                if (b()) {
                    io.reactivex.rxjava3.internal.util.o.d(this.G, this.F, false, this, this);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            synchronized (this) {
                this.Q = null;
            }
            this.F.onError(t9);
            this.P.dispose();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.Q;
                if (u9 == null) {
                    return;
                }
                u9.add(t9);
                if (u9.size() < this.N) {
                    return;
                }
                this.Q = null;
                this.T++;
                if (this.O) {
                    this.R.dispose();
                }
                h(u9, false, this);
                try {
                    U u10 = this.K.get();
                    Objects.requireNonNull(u10, "The buffer supplied is null");
                    U u11 = u10;
                    synchronized (this) {
                        this.Q = u11;
                        this.U++;
                    }
                    if (this.O) {
                        o0.c cVar = this.P;
                        long j4 = this.L;
                        this.R = cVar.d(this, j4, j4, this.M);
                    }
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.F.onError(th);
                    dispose();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.S, d4)) {
                this.S = d4;
                try {
                    U u9 = this.K.get();
                    Objects.requireNonNull(u9, "The buffer supplied is null");
                    this.Q = u9;
                    this.F.onSubscribe(this);
                    o0.c cVar = this.P;
                    long j4 = this.L;
                    this.R = cVar.d(this, j4, j4, this.M);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    d4.dispose();
                    EmptyDisposable.error(th, this.F);
                    this.P.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u9 = this.K.get();
                Objects.requireNonNull(u9, "The bufferSupplier returned a null buffer");
                U u10 = u9;
                synchronized (this) {
                    U u11 = this.Q;
                    if (u11 != null && this.T == this.U) {
                        this.Q = u10;
                        h(u11, false, this);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                dispose();
                this.F.onError(th);
            }
        }
    }

    /* compiled from: ObservableBufferTimed.java */
    /* loaded from: classes4.dex */
    static final class b<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.observers.l<T, U, U> implements Runnable, io.reactivex.rxjava3.disposables.f {
        final q7.s<U> K;
        final long L;
        final TimeUnit M;
        final io.reactivex.rxjava3.core.o0 N;
        io.reactivex.rxjava3.disposables.f O;
        U P;
        final AtomicReference<io.reactivex.rxjava3.disposables.f> Q;

        b(io.reactivex.rxjava3.core.n0<? super U> actual, q7.s<U> bufferSupplier, long timespan, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
            super(actual, new io.reactivex.rxjava3.internal.queue.a());
            this.Q = new AtomicReference<>();
            this.K = bufferSupplier;
            this.L = timespan;
            this.M = unit;
            this.N = scheduler;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.Q);
            this.O.dispose();
        }

        @Override // io.reactivex.rxjava3.internal.observers.l, io.reactivex.rxjava3.internal.util.k
        /* renamed from: i */
        public void e(io.reactivex.rxjava3.core.n0<? super U> a10, U v9) {
            this.F.onNext(v9);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.Q.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            U u9;
            synchronized (this) {
                u9 = this.P;
                this.P = null;
            }
            if (u9 != null) {
                this.G.offer(u9);
                this.I = true;
                if (b()) {
                    io.reactivex.rxjava3.internal.util.o.d(this.G, this.F, false, null, this);
                }
            }
            DisposableHelper.dispose(this.Q);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            synchronized (this) {
                this.P = null;
            }
            this.F.onError(t9);
            DisposableHelper.dispose(this.Q);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.P;
                if (u9 == null) {
                    return;
                }
                u9.add(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.O, d4)) {
                this.O = d4;
                try {
                    U u9 = this.K.get();
                    Objects.requireNonNull(u9, "The buffer supplied is null");
                    this.P = u9;
                    this.F.onSubscribe(this);
                    if (DisposableHelper.isDisposed(this.Q.get())) {
                        return;
                    }
                    io.reactivex.rxjava3.core.o0 o0Var = this.N;
                    long j4 = this.L;
                    DisposableHelper.set(this.Q, o0Var.h(this, j4, j4, this.M));
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    dispose();
                    EmptyDisposable.error(th, this.F);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            U u9;
            try {
                U u10 = this.K.get();
                Objects.requireNonNull(u10, "The bufferSupplier returned a null buffer");
                U u11 = u10;
                synchronized (this) {
                    u9 = this.P;
                    if (u9 != null) {
                        this.P = u11;
                    }
                }
                if (u9 == null) {
                    DisposableHelper.dispose(this.Q);
                } else {
                    g(u9, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.F.onError(th);
                dispose();
            }
        }
    }

    /* compiled from: ObservableBufferTimed.java */
    /* loaded from: classes4.dex */
    static final class c<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.observers.l<T, U, U> implements Runnable, io.reactivex.rxjava3.disposables.f {
        final q7.s<U> K;
        final long L;
        final long M;
        final TimeUnit N;
        final o0.c O;
        final List<U> P;
        io.reactivex.rxjava3.disposables.f Q;

        /* compiled from: ObservableBufferTimed.java */
        /* loaded from: classes4.dex */
        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f79914a;

            a(U b10) {
                this.f79914a = b10;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.P.remove(this.f79914a);
                }
                c cVar = c.this;
                cVar.h(this.f79914a, false, cVar.O);
            }
        }

        /* compiled from: ObservableBufferTimed.java */
        /* loaded from: classes4.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f79916a;

            b(U buffer) {
                this.f79916a = buffer;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.P.remove(this.f79916a);
                }
                c cVar = c.this;
                cVar.h(this.f79916a, false, cVar.O);
            }
        }

        c(io.reactivex.rxjava3.core.n0<? super U> actual, q7.s<U> bufferSupplier, long timespan, long timeskip, TimeUnit unit, o0.c w9) {
            super(actual, new io.reactivex.rxjava3.internal.queue.a());
            this.K = bufferSupplier;
            this.L = timespan;
            this.M = timeskip;
            this.N = unit;
            this.O = w9;
            this.P = new LinkedList();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.H) {
                return;
            }
            this.H = true;
            l();
            this.Q.dispose();
            this.O.dispose();
        }

        @Override // io.reactivex.rxjava3.internal.observers.l, io.reactivex.rxjava3.internal.util.k
        /* renamed from: i */
        public void e(io.reactivex.rxjava3.core.n0<? super U> a10, U v9) {
            a10.onNext(v9);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.H;
        }

        void l() {
            synchronized (this) {
                this.P.clear();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.P);
                this.P.clear();
            }
            for (Collection collection : arrayList) {
                this.G.offer(collection);
            }
            this.I = true;
            if (b()) {
                io.reactivex.rxjava3.internal.util.o.d(this.G, this.F, false, this.O, this);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.I = true;
            l();
            this.F.onError(t9);
            this.O.dispose();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            synchronized (this) {
                for (U u9 : this.P) {
                    u9.add(t9);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.Q, d4)) {
                this.Q = d4;
                try {
                    U u9 = this.K.get();
                    Objects.requireNonNull(u9, "The buffer supplied is null");
                    U u10 = u9;
                    this.P.add(u10);
                    this.F.onSubscribe(this);
                    o0.c cVar = this.O;
                    long j4 = this.M;
                    cVar.d(this, j4, j4, this.N);
                    this.O.c(new b(u10), this.L, this.N);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    d4.dispose();
                    EmptyDisposable.error(th, this.F);
                    this.O.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.H) {
                return;
            }
            try {
                U u9 = this.K.get();
                Objects.requireNonNull(u9, "The bufferSupplier returned a null buffer");
                U u10 = u9;
                synchronized (this) {
                    if (this.H) {
                        return;
                    }
                    this.P.add(u10);
                    this.O.c(new a(u10), this.L, this.N);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.F.onError(th);
                dispose();
            }
        }
    }

    public p(io.reactivex.rxjava3.core.l0<T> source, long timespan, long timeskip, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, q7.s<U> bufferSupplier, int maxSize, boolean restartTimerOnMaxSize) {
        super(source);
        this.f79907b = timespan;
        this.f79908c = timeskip;
        this.f79909d = unit;
        this.f79910e = scheduler;
        this.f79911f = bufferSupplier;
        this.f79912g = maxSize;
        this.f79913h = restartTimerOnMaxSize;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super U> t9) {
        if (this.f79907b == this.f79908c && this.f79912g == Integer.MAX_VALUE) {
            this.f79141a.a(new b(new io.reactivex.rxjava3.observers.m(t9), this.f79911f, this.f79907b, this.f79909d, this.f79910e));
            return;
        }
        o0.c d4 = this.f79910e.d();
        if (this.f79907b == this.f79908c) {
            this.f79141a.a(new a(new io.reactivex.rxjava3.observers.m(t9), this.f79911f, this.f79907b, this.f79909d, this.f79912g, this.f79913h, d4));
        } else {
            this.f79141a.a(new c(new io.reactivex.rxjava3.observers.m(t9), this.f79911f, this.f79907b, this.f79908c, this.f79909d, d4));
        }
    }
}
