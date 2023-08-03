package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableFlatMapMaybe.java */
/* loaded from: classes3.dex */
public final class z0<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.w<? extends R>> f75092b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f75093c;

    /* compiled from: ObservableFlatMapMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: j  reason: collision with root package name */
        private static final long f75094j = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f75095a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f75096b;

        /* renamed from: f  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.w<? extends R>> f75100f;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.c f75102h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f75103i;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.b f75097c = new io.reactivex.disposables.b();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f75099e = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f75098d = new AtomicInteger(1);

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.internal.queue.b<R>> f75101g = new AtomicReference<>();

        /* compiled from: ObservableFlatMapMaybe.java */
        /* renamed from: io.reactivex.internal.operators.observable.z0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0601a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<R>, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f75104b = -502562646270949838L;

            C0601a() {
            }

            @Override // io.reactivex.disposables.c
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.c
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.t
            public void onComplete() {
                a.this.e(this);
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                a.this.h(this, th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r9) {
                a.this.i(this, r9);
            }
        }

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, boolean z9) {
            this.f75095a = g0Var;
            this.f75100f = oVar;
            this.f75096b = z9;
        }

        void a() {
            io.reactivex.internal.queue.b<R> bVar = this.f75101g.get();
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
            io.reactivex.g0<? super R> g0Var = this.f75095a;
            AtomicInteger atomicInteger = this.f75098d;
            AtomicReference<io.reactivex.internal.queue.b<R>> atomicReference = this.f75101g;
            int i4 = 1;
            while (!this.f75103i) {
                if (!this.f75096b && this.f75099e.get() != null) {
                    Throwable terminate = this.f75099e.terminate();
                    a();
                    g0Var.onError(terminate);
                    return;
                }
                boolean z9 = atomicInteger.get() == 0;
                io.reactivex.internal.queue.b<R> bVar = atomicReference.get();
                R poll = bVar != null ? bVar.poll() : (Object) null;
                boolean z10 = poll == null;
                if (z9 && z10) {
                    Throwable terminate2 = this.f75099e.terminate();
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
                io.reactivex.internal.queue.b<R> bVar2 = this.f75101g.get();
                if (bVar2 != null) {
                    return bVar2;
                }
                bVar = new io.reactivex.internal.queue.b<>(io.reactivex.z.bufferSize());
            } while (!this.f75101g.compareAndSet(null, bVar));
            return bVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75103i = true;
            this.f75102h.dispose();
            this.f75097c.dispose();
        }

        void e(a<T, R>.C0601a c0601a) {
            this.f75097c.c(c0601a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z9 = this.f75098d.decrementAndGet() == 0;
                    io.reactivex.internal.queue.b<R> bVar = this.f75101g.get();
                    if (z9 && (bVar == null || bVar.isEmpty())) {
                        Throwable terminate = this.f75099e.terminate();
                        if (terminate != null) {
                            this.f75095a.onError(terminate);
                            return;
                        } else {
                            this.f75095a.onComplete();
                            return;
                        }
                    } else if (decrementAndGet() == 0) {
                        return;
                    } else {
                        c();
                        return;
                    }
                }
            }
            this.f75098d.decrementAndGet();
            b();
        }

        void h(a<T, R>.C0601a c0601a, Throwable th) {
            this.f75097c.c(c0601a);
            if (this.f75099e.addThrowable(th)) {
                if (!this.f75096b) {
                    this.f75102h.dispose();
                    this.f75097c.dispose();
                }
                this.f75098d.decrementAndGet();
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void i(a<T, R>.C0601a c0601a, R r9) {
            this.f75097c.c(c0601a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.f75095a.onNext(r9);
                    boolean z9 = this.f75098d.decrementAndGet() == 0;
                    io.reactivex.internal.queue.b<R> bVar = this.f75101g.get();
                    if (z9 && (bVar == null || bVar.isEmpty())) {
                        Throwable terminate = this.f75099e.terminate();
                        if (terminate != null) {
                            this.f75095a.onError(terminate);
                            return;
                        } else {
                            this.f75095a.onComplete();
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
            this.f75098d.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            c();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75103i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f75098d.decrementAndGet();
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f75098d.decrementAndGet();
            if (this.f75099e.addThrowable(th)) {
                if (!this.f75096b) {
                    this.f75097c.dispose();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.b.g(this.f75100f.apply(t9), "The mapper returned a null MaybeSource");
                this.f75098d.getAndIncrement();
                C0601a c0601a = new C0601a();
                if (this.f75103i || !this.f75097c.b(c0601a)) {
                    return;
                }
                wVar.b(c0601a);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75102h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75102h, cVar)) {
                this.f75102h = cVar;
                this.f75095a.onSubscribe(this);
            }
        }
    }

    public z0(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, boolean z9) {
        super(e0Var);
        this.f75092b = oVar;
        this.f75093c = z9;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f75092b, this.f75093c));
    }
}
