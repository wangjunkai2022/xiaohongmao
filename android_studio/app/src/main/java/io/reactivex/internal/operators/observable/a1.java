package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableFlatMapSingle.java */
/* loaded from: classes3.dex */
public final class a1<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.o0<? extends R>> f73831b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f73832c;

    /* compiled from: ObservableFlatMapSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: j  reason: collision with root package name */
        private static final long f73833j = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f73834a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f73835b;

        /* renamed from: f  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.o0<? extends R>> f73839f;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.c f73841h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f73842i;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.b f73836c = new io.reactivex.disposables.b();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f73838e = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f73837d = new AtomicInteger(1);

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.internal.queue.b<R>> f73840g = new AtomicReference<>();

        /* compiled from: ObservableFlatMapSingle.java */
        /* renamed from: io.reactivex.internal.operators.observable.a1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0585a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<R>, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73843b = -502562646270949838L;

            C0585a() {
            }

            @Override // io.reactivex.disposables.c
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.c
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                a.this.e(this, th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r9) {
                a.this.h(this, r9);
            }
        }

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar, boolean z9) {
            this.f73834a = g0Var;
            this.f73839f = oVar;
            this.f73835b = z9;
        }

        void a() {
            io.reactivex.internal.queue.b<R> bVar = this.f73840g.get();
            if (bVar != null) {
                bVar.clear();
            }
        }

        void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        void c() {
            io.reactivex.g0<? super R> g0Var = this.f73834a;
            AtomicInteger atomicInteger = this.f73837d;
            AtomicReference<io.reactivex.internal.queue.b<R>> atomicReference = this.f73840g;
            int i4 = 1;
            while (!this.f73842i) {
                if (!this.f73835b && this.f73838e.get() != null) {
                    Throwable terminate = this.f73838e.terminate();
                    a();
                    g0Var.onError(terminate);
                    return;
                }
                boolean z9 = atomicInteger.get() == 0;
                io.reactivex.internal.queue.b<R> bVar = atomicReference.get();
                R poll = bVar != null ? bVar.poll() : (Object) null;
                boolean z10 = poll == null;
                if (z9 && z10) {
                    Throwable terminate2 = this.f73838e.terminate();
                    if (terminate2 != null) {
                        g0Var.onError(terminate2);
                        return;
                    } else {
                        g0Var.onComplete();
                        return;
                    }
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    g0Var.onNext(poll);
                }
            }
            a();
        }

        io.reactivex.internal.queue.b<R> d() {
            io.reactivex.internal.queue.b<R> bVar;
            do {
                io.reactivex.internal.queue.b<R> bVar2 = this.f73840g.get();
                if (bVar2 != null) {
                    return bVar2;
                }
                bVar = new io.reactivex.internal.queue.b<>(io.reactivex.z.bufferSize());
            } while (!this.f73840g.compareAndSet(null, bVar));
            return bVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73842i = true;
            this.f73841h.dispose();
            this.f73836c.dispose();
        }

        void e(a<T, R>.C0585a c0585a, Throwable th) {
            this.f73836c.c(c0585a);
            if (this.f73838e.addThrowable(th)) {
                if (!this.f73835b) {
                    this.f73841h.dispose();
                    this.f73836c.dispose();
                }
                this.f73837d.decrementAndGet();
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void h(a<T, R>.C0585a c0585a, R r9) {
            this.f73836c.c(c0585a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.f73834a.onNext(r9);
                    boolean z9 = this.f73837d.decrementAndGet() == 0;
                    io.reactivex.internal.queue.b<R> bVar = this.f73840g.get();
                    if (z9 && (bVar == null || bVar.isEmpty())) {
                        Throwable terminate = this.f73838e.terminate();
                        if (terminate != null) {
                            this.f73834a.onError(terminate);
                            return;
                        } else {
                            this.f73834a.onComplete();
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    c();
                }
            }
            io.reactivex.internal.queue.b<R> d4 = d();
            synchronized (d4) {
                d4.offer(r9);
            }
            this.f73837d.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            c();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73842i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73837d.decrementAndGet();
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73837d.decrementAndGet();
            if (this.f73838e.addThrowable(th)) {
                if (!this.f73835b) {
                    this.f73836c.dispose();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            try {
                io.reactivex.o0 o0Var = (io.reactivex.o0) io.reactivex.internal.functions.b.g(this.f73839f.apply(t9), "The mapper returned a null SingleSource");
                this.f73837d.getAndIncrement();
                C0585a c0585a = new C0585a();
                if (this.f73842i || !this.f73836c.b(c0585a)) {
                    return;
                }
                o0Var.d(c0585a);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73841h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73841h, cVar)) {
                this.f73841h = cVar;
                this.f73834a.onSubscribe(this);
            }
        }
    }

    public a1(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar, boolean z9) {
        super(e0Var);
        this.f73831b = oVar;
        this.f73832c = z9;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f73831b, this.f73832c));
    }
}
