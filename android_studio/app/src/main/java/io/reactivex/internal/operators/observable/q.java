package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableBufferTimed.java */
/* loaded from: classes3.dex */
public final class q<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final long f74587b;

    /* renamed from: c  reason: collision with root package name */
    final long f74588c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f74589d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f74590e;

    /* renamed from: f  reason: collision with root package name */
    final Callable<U> f74591f;

    /* renamed from: g  reason: collision with root package name */
    final int f74592g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f74593h;

    /* compiled from: ObservableBufferTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.k<T, U, U> implements Runnable, io.reactivex.disposables.c {
        final Callable<U> K;
        final long L;
        final TimeUnit M;
        final int N;
        final boolean O;
        final h0.c P;
        U Q;
        io.reactivex.disposables.c R;
        io.reactivex.disposables.c S;
        long T;
        long U;

        a(io.reactivex.g0<? super U> g0Var, Callable<U> callable, long j4, TimeUnit timeUnit, int i4, boolean z9, h0.c cVar) {
            super(g0Var, new io.reactivex.internal.queue.a());
            this.K = callable;
            this.L = j4;
            this.M = timeUnit;
            this.N = i4;
            this.O = z9;
            this.P = cVar;
        }

        @Override // io.reactivex.disposables.c
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

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.H;
        }

        @Override // io.reactivex.internal.observers.k, io.reactivex.internal.util.k
        /* renamed from: j */
        public void g(io.reactivex.g0<? super U> g0Var, U u9) {
            g0Var.onNext(u9);
        }

        @Override // io.reactivex.g0
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
                    io.reactivex.internal.util.o.d(this.G, this.F, false, this, this);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            synchronized (this) {
                this.Q = null;
            }
            this.F.onError(th);
            this.P.dispose();
        }

        @Override // io.reactivex.g0
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
                i(u9, false, this);
                try {
                    U u10 = (U) io.reactivex.internal.functions.b.g(this.K.call(), "The buffer supplied is null");
                    synchronized (this) {
                        this.Q = u10;
                        this.U++;
                    }
                    if (this.O) {
                        h0.c cVar = this.P;
                        long j4 = this.L;
                        this.R = cVar.d(this, j4, j4, this.M);
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.F.onError(th);
                    dispose();
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.S, cVar)) {
                this.S = cVar;
                try {
                    this.Q = (U) io.reactivex.internal.functions.b.g(this.K.call(), "The buffer supplied is null");
                    this.F.onSubscribe(this);
                    h0.c cVar2 = this.P;
                    long j4 = this.L;
                    this.R = cVar2.d(this, j4, j4, this.M);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cVar.dispose();
                    EmptyDisposable.error(th, this.F);
                    this.P.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u9 = (U) io.reactivex.internal.functions.b.g(this.K.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    U u10 = this.Q;
                    if (u10 != null && this.T == this.U) {
                        this.Q = u9;
                        i(u10, false, this);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                this.F.onError(th);
            }
        }
    }

    /* compiled from: ObservableBufferTimed.java */
    /* loaded from: classes3.dex */
    static final class b<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.k<T, U, U> implements Runnable, io.reactivex.disposables.c {
        final Callable<U> K;
        final long L;
        final TimeUnit M;
        final io.reactivex.h0 N;
        io.reactivex.disposables.c O;
        U P;
        final AtomicReference<io.reactivex.disposables.c> Q;

        b(io.reactivex.g0<? super U> g0Var, Callable<U> callable, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(g0Var, new io.reactivex.internal.queue.a());
            this.Q = new AtomicReference<>();
            this.K = callable;
            this.L = j4;
            this.M = timeUnit;
            this.N = h0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.Q);
            this.O.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.Q.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.internal.observers.k, io.reactivex.internal.util.k
        /* renamed from: j */
        public void g(io.reactivex.g0<? super U> g0Var, U u9) {
            this.F.onNext(u9);
        }

        @Override // io.reactivex.g0
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
                    io.reactivex.internal.util.o.d(this.G, this.F, false, null, this);
                }
            }
            DisposableHelper.dispose(this.Q);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            synchronized (this) {
                this.P = null;
            }
            this.F.onError(th);
            DisposableHelper.dispose(this.Q);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.P;
                if (u9 == null) {
                    return;
                }
                u9.add(t9);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.O, cVar)) {
                this.O = cVar;
                try {
                    this.P = (U) io.reactivex.internal.functions.b.g(this.K.call(), "The buffer supplied is null");
                    this.F.onSubscribe(this);
                    if (this.H) {
                        return;
                    }
                    io.reactivex.h0 h0Var = this.N;
                    long j4 = this.L;
                    io.reactivex.disposables.c h4 = h0Var.h(this, j4, j4, this.M);
                    if (this.Q.compareAndSet(null, h4)) {
                        return;
                    }
                    h4.dispose();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    dispose();
                    EmptyDisposable.error(th, this.F);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            U u9;
            try {
                U u10 = (U) io.reactivex.internal.functions.b.g(this.K.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    u9 = this.P;
                    if (u9 != null) {
                        this.P = u10;
                    }
                }
                if (u9 == null) {
                    DisposableHelper.dispose(this.Q);
                } else {
                    h(u9, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.F.onError(th);
                dispose();
            }
        }
    }

    /* compiled from: ObservableBufferTimed.java */
    /* loaded from: classes3.dex */
    static final class c<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.k<T, U, U> implements Runnable, io.reactivex.disposables.c {
        final Callable<U> K;
        final long L;
        final long M;
        final TimeUnit N;
        final h0.c O;
        final List<U> P;
        io.reactivex.disposables.c Q;

        /* compiled from: ObservableBufferTimed.java */
        /* loaded from: classes3.dex */
        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f74594a;

            a(U u9) {
                this.f74594a = u9;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.P.remove(this.f74594a);
                }
                c cVar = c.this;
                cVar.i(this.f74594a, false, cVar.O);
            }
        }

        /* compiled from: ObservableBufferTimed.java */
        /* loaded from: classes3.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f74596a;

            b(U u9) {
                this.f74596a = u9;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.P.remove(this.f74596a);
                }
                c cVar = c.this;
                cVar.i(this.f74596a, false, cVar.O);
            }
        }

        c(io.reactivex.g0<? super U> g0Var, Callable<U> callable, long j4, long j10, TimeUnit timeUnit, h0.c cVar) {
            super(g0Var, new io.reactivex.internal.queue.a());
            this.K = callable;
            this.L = j4;
            this.M = j10;
            this.N = timeUnit;
            this.O = cVar;
            this.P = new LinkedList();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.H) {
                return;
            }
            this.H = true;
            m();
            this.Q.dispose();
            this.O.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.H;
        }

        @Override // io.reactivex.internal.observers.k, io.reactivex.internal.util.k
        /* renamed from: j */
        public void g(io.reactivex.g0<? super U> g0Var, U u9) {
            g0Var.onNext(u9);
        }

        void m() {
            synchronized (this) {
                this.P.clear();
            }
        }

        @Override // io.reactivex.g0
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
                io.reactivex.internal.util.o.d(this.G, this.F, false, this.O, this);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.I = true;
            m();
            this.F.onError(th);
            this.O.dispose();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            synchronized (this) {
                for (U u9 : this.P) {
                    u9.add(t9);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.Q, cVar)) {
                this.Q = cVar;
                try {
                    Collection collection = (Collection) io.reactivex.internal.functions.b.g(this.K.call(), "The buffer supplied is null");
                    this.P.add(collection);
                    this.F.onSubscribe(this);
                    h0.c cVar2 = this.O;
                    long j4 = this.M;
                    cVar2.d(this, j4, j4, this.N);
                    this.O.c(new b(collection), this.L, this.N);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cVar.dispose();
                    EmptyDisposable.error(th, this.F);
                    this.O.dispose();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (this.H) {
                return;
            }
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.b.g(this.K.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    if (this.H) {
                        return;
                    }
                    this.P.add(collection);
                    this.O.c(new a(collection), this.L, this.N);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.F.onError(th);
                dispose();
            }
        }
    }

    public q(io.reactivex.e0<T> e0Var, long j4, long j10, TimeUnit timeUnit, io.reactivex.h0 h0Var, Callable<U> callable, int i4, boolean z9) {
        super(e0Var);
        this.f74587b = j4;
        this.f74588c = j10;
        this.f74589d = timeUnit;
        this.f74590e = h0Var;
        this.f74591f = callable;
        this.f74592g = i4;
        this.f74593h = z9;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super U> g0Var) {
        if (this.f74587b == this.f74588c && this.f74592g == Integer.MAX_VALUE) {
            this.f73827a.subscribe(new b(new io.reactivex.observers.l(g0Var), this.f74591f, this.f74587b, this.f74589d, this.f74590e));
            return;
        }
        h0.c d4 = this.f74590e.d();
        if (this.f74587b == this.f74588c) {
            this.f73827a.subscribe(new a(new io.reactivex.observers.l(g0Var), this.f74591f, this.f74587b, this.f74589d, this.f74592g, this.f74593h, d4));
        } else {
            this.f73827a.subscribe(new c(new io.reactivex.observers.l(g0Var), this.f74591f, this.f74587b, this.f74588c, this.f74589d, d4));
        }
    }
}
