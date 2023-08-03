package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatMap.java */
/* loaded from: classes3.dex */
public final class v<T, U> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.e0<? extends U>> f74837b;

    /* renamed from: c  reason: collision with root package name */
    final int f74838c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f74839d;

    /* compiled from: ObservableConcatMap.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: m  reason: collision with root package name */
        private static final long f74840m = -6951100001833242599L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74841a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<? extends R>> f74842b;

        /* renamed from: c  reason: collision with root package name */
        final int f74843c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f74844d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final C0596a<R> f74845e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f74846f;

        /* renamed from: g  reason: collision with root package name */
        o7.o<T> f74847g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.c f74848h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f74849i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f74850j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f74851k;

        /* renamed from: l  reason: collision with root package name */
        int f74852l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMap.java */
        /* renamed from: io.reactivex.internal.operators.observable.v$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0596a<R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f74853c = 2620149119579502636L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.g0<? super R> f74854a;

            /* renamed from: b  reason: collision with root package name */
            final a<?, R> f74855b;

            C0596a(io.reactivex.g0<? super R> g0Var, a<?, R> aVar) {
                this.f74854a = g0Var;
                this.f74855b = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                a<?, R> aVar = this.f74855b;
                aVar.f74849i = false;
                aVar.a();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                a<?, R> aVar = this.f74855b;
                if (aVar.f74844d.addThrowable(th)) {
                    if (!aVar.f74846f) {
                        aVar.f74848h.dispose();
                    }
                    aVar.f74849i = false;
                    aVar.a();
                    return;
                }
                io.reactivex.plugins.a.Y(th);
            }

            @Override // io.reactivex.g0
            public void onNext(R r9) {
                this.f74854a.onNext(r9);
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.replace(this, cVar);
            }
        }

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, int i4, boolean z9) {
            this.f74841a = g0Var;
            this.f74842b = oVar;
            this.f74843c = i4;
            this.f74846f = z9;
            this.f74845e = new C0596a<>(g0Var, this);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super R> g0Var = this.f74841a;
            o7.o<T> oVar = this.f74847g;
            AtomicThrowable atomicThrowable = this.f74844d;
            while (true) {
                if (!this.f74849i) {
                    if (this.f74851k) {
                        oVar.clear();
                        return;
                    } else if (!this.f74846f && atomicThrowable.get() != null) {
                        oVar.clear();
                        this.f74851k = true;
                        g0Var.onError(atomicThrowable.terminate());
                        return;
                    } else {
                        boolean z9 = this.f74850j;
                        try {
                            T poll = oVar.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                this.f74851k = true;
                                Throwable terminate = atomicThrowable.terminate();
                                if (terminate != null) {
                                    g0Var.onError(terminate);
                                    return;
                                } else {
                                    g0Var.onComplete();
                                    return;
                                }
                            } else if (!z10) {
                                try {
                                    io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74842b.apply(poll), "The mapper returned a null ObservableSource");
                                    if (e0Var instanceof Callable) {
                                        try {
                                            Object obj = (Object) ((Callable) e0Var).call();
                                            if (obj != 0 && !this.f74851k) {
                                                g0Var.onNext(obj);
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.exceptions.a.b(th);
                                            atomicThrowable.addThrowable(th);
                                        }
                                    } else {
                                        this.f74849i = true;
                                        e0Var.subscribe(this.f74845e);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f74851k = true;
                                    this.f74848h.dispose();
                                    oVar.clear();
                                    atomicThrowable.addThrowable(th2);
                                    g0Var.onError(atomicThrowable.terminate());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            this.f74851k = true;
                            this.f74848h.dispose();
                            atomicThrowable.addThrowable(th3);
                            g0Var.onError(atomicThrowable.terminate());
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74851k = true;
            this.f74848h.dispose();
            this.f74845e.a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74851k;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74850j = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74844d.addThrowable(th)) {
                this.f74850j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74852l == 0) {
                this.f74847g.offer(t9);
            }
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74848h, cVar)) {
                this.f74848h = cVar;
                if (cVar instanceof o7.j) {
                    o7.j jVar = (o7.j) cVar;
                    int requestFusion = jVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f74852l = requestFusion;
                        this.f74847g = jVar;
                        this.f74850j = true;
                        this.f74841a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f74852l = requestFusion;
                        this.f74847g = jVar;
                        this.f74841a.onSubscribe(this);
                        return;
                    }
                }
                this.f74847g = new io.reactivex.internal.queue.b(this.f74843c);
                this.f74841a.onSubscribe(this);
            }
        }
    }

    /* compiled from: ObservableConcatMap.java */
    /* loaded from: classes3.dex */
    static final class b<T, U> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: k  reason: collision with root package name */
        private static final long f74856k = 8828587559905699186L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f74857a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<? extends U>> f74858b;

        /* renamed from: c  reason: collision with root package name */
        final a<U> f74859c;

        /* renamed from: d  reason: collision with root package name */
        final int f74860d;

        /* renamed from: e  reason: collision with root package name */
        o7.o<T> f74861e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.c f74862f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f74863g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f74864h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f74865i;

        /* renamed from: j  reason: collision with root package name */
        int f74866j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMap.java */
        /* loaded from: classes3.dex */
        public static final class a<U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<U> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f74867c = -7449079488798789337L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.g0<? super U> f74868a;

            /* renamed from: b  reason: collision with root package name */
            final b<?, ?> f74869b;

            a(io.reactivex.g0<? super U> g0Var, b<?, ?> bVar) {
                this.f74868a = g0Var;
                this.f74869b = bVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                this.f74869b.b();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                this.f74869b.dispose();
                this.f74868a.onError(th);
            }

            @Override // io.reactivex.g0
            public void onNext(U u9) {
                this.f74868a.onNext(u9);
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.replace(this, cVar);
            }
        }

        b(io.reactivex.g0<? super U> g0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar, int i4) {
            this.f74857a = g0Var;
            this.f74858b = oVar;
            this.f74860d = i4;
            this.f74859c = new a<>(g0Var, this);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f74864h) {
                if (!this.f74863g) {
                    boolean z9 = this.f74865i;
                    try {
                        T poll = this.f74861e.poll();
                        boolean z10 = poll == null;
                        if (z9 && z10) {
                            this.f74864h = true;
                            this.f74857a.onComplete();
                            return;
                        } else if (!z10) {
                            try {
                                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74858b.apply(poll), "The mapper returned a null ObservableSource");
                                this.f74863g = true;
                                e0Var.subscribe(this.f74859c);
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                dispose();
                                this.f74861e.clear();
                                this.f74857a.onError(th);
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        dispose();
                        this.f74861e.clear();
                        this.f74857a.onError(th2);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f74861e.clear();
        }

        void b() {
            this.f74863g = false;
            a();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74864h = true;
            this.f74859c.a();
            this.f74862f.dispose();
            if (getAndIncrement() == 0) {
                this.f74861e.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74864h;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74865i) {
                return;
            }
            this.f74865i = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74865i) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74865i = true;
            dispose();
            this.f74857a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74865i) {
                return;
            }
            if (this.f74866j == 0) {
                this.f74861e.offer(t9);
            }
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74862f, cVar)) {
                this.f74862f = cVar;
                if (cVar instanceof o7.j) {
                    o7.j jVar = (o7.j) cVar;
                    int requestFusion = jVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f74866j = requestFusion;
                        this.f74861e = jVar;
                        this.f74865i = true;
                        this.f74857a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f74866j = requestFusion;
                        this.f74861e = jVar;
                        this.f74857a.onSubscribe(this);
                        return;
                    }
                }
                this.f74861e = new io.reactivex.internal.queue.b(this.f74860d);
                this.f74857a.onSubscribe(this);
            }
        }
    }

    public v(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar, int i4, ErrorMode errorMode) {
        super(e0Var);
        this.f74837b = oVar;
        this.f74839d = errorMode;
        this.f74838c = Math.max(8, i4);
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super U> g0Var) {
        if (ObservableScalarXMap.b(this.f73827a, g0Var, this.f74837b)) {
            return;
        }
        if (this.f74839d == ErrorMode.IMMEDIATE) {
            this.f73827a.subscribe(new b(new io.reactivex.observers.l(g0Var), this.f74837b, this.f74838c));
        } else {
            this.f73827a.subscribe(new a(g0Var, this.f74837b, this.f74838c, this.f74839d == ErrorMode.END));
        }
    }
}
