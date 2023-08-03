package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWindowBoundarySupplier.java */
/* loaded from: classes3.dex */
public final class h4<T, B> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends io.reactivex.e0<B>> f74194b;

    /* renamed from: c  reason: collision with root package name */
    final int f74195c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableWindowBoundarySupplier.java */
    /* loaded from: classes3.dex */
    public static final class a<T, B> extends io.reactivex.observers.d<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, B> f74196b;

        /* renamed from: c  reason: collision with root package name */
        boolean f74197c;

        a(b<T, B> bVar) {
            this.f74196b = bVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74197c) {
                return;
            }
            this.f74197c = true;
            this.f74196b.c();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74197c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74197c = true;
            this.f74196b.d(th);
        }

        @Override // io.reactivex.g0
        public void onNext(B b10) {
            if (this.f74197c) {
                return;
            }
            this.f74197c = true;
            dispose();
            this.f74196b.e(this);
        }
    }

    /* compiled from: ObservableWindowBoundarySupplier.java */
    /* loaded from: classes3.dex */
    static final class b<T, B> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: l  reason: collision with root package name */
        private static final long f74198l = 2233020065421370272L;

        /* renamed from: m  reason: collision with root package name */
        static final a<Object, Object> f74199m = new a<>(null);

        /* renamed from: n  reason: collision with root package name */
        static final Object f74200n = new Object();

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.z<T>> f74201a;

        /* renamed from: b  reason: collision with root package name */
        final int f74202b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<a<T, B>> f74203c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f74204d = new AtomicInteger(1);

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f74205e = new io.reactivex.internal.queue.a<>();

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f74206f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f74207g = new AtomicBoolean();

        /* renamed from: h  reason: collision with root package name */
        final Callable<? extends io.reactivex.e0<B>> f74208h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.disposables.c f74209i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f74210j;

        /* renamed from: k  reason: collision with root package name */
        io.reactivex.subjects.j<T> f74211k;

        b(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, int i4, Callable<? extends io.reactivex.e0<B>> callable) {
            this.f74201a = g0Var;
            this.f74202b = i4;
            this.f74208h = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            a<Object, Object> aVar = f74199m;
            io.reactivex.disposables.c cVar = (io.reactivex.disposables.c) this.f74203c.getAndSet(aVar);
            if (cVar == null || cVar == aVar) {
                return;
            }
            cVar.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super io.reactivex.z<T>> g0Var = this.f74201a;
            io.reactivex.internal.queue.a<Object> aVar = this.f74205e;
            AtomicThrowable atomicThrowable = this.f74206f;
            int i4 = 1;
            while (this.f74204d.get() != 0) {
                io.reactivex.subjects.j<T> jVar = this.f74211k;
                boolean z9 = this.f74210j;
                if (z9 && atomicThrowable.get() != null) {
                    aVar.clear();
                    Throwable terminate = atomicThrowable.terminate();
                    if (jVar != 0) {
                        this.f74211k = null;
                        jVar.onError(terminate);
                    }
                    g0Var.onError(terminate);
                    return;
                }
                Object poll = aVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    Throwable terminate2 = atomicThrowable.terminate();
                    if (terminate2 == null) {
                        if (jVar != 0) {
                            this.f74211k = null;
                            jVar.onComplete();
                        }
                        g0Var.onComplete();
                        return;
                    }
                    if (jVar != 0) {
                        this.f74211k = null;
                        jVar.onError(terminate2);
                    }
                    g0Var.onError(terminate2);
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (poll != f74200n) {
                    jVar.onNext(poll);
                } else {
                    if (jVar != 0) {
                        this.f74211k = null;
                        jVar.onComplete();
                    }
                    if (!this.f74207g.get()) {
                        io.reactivex.subjects.j<T> j4 = io.reactivex.subjects.j.j(this.f74202b, this);
                        this.f74211k = j4;
                        this.f74204d.getAndIncrement();
                        try {
                            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74208h.call(), "The other Callable returned a null ObservableSource");
                            a<T, B> aVar2 = new a<>(this);
                            if (this.f74203c.compareAndSet(null, aVar2)) {
                                e0Var.subscribe(aVar2);
                                g0Var.onNext(j4);
                            }
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            atomicThrowable.addThrowable(th);
                            this.f74210j = true;
                        }
                    }
                }
            }
            aVar.clear();
            this.f74211k = null;
        }

        void c() {
            this.f74209i.dispose();
            this.f74210j = true;
            b();
        }

        void d(Throwable th) {
            this.f74209i.dispose();
            if (this.f74206f.addThrowable(th)) {
                this.f74210j = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74207g.compareAndSet(false, true)) {
                a();
                if (this.f74204d.decrementAndGet() == 0) {
                    this.f74209i.dispose();
                }
            }
        }

        void e(a<T, B> aVar) {
            this.f74203c.compareAndSet(aVar, null);
            this.f74205e.offer(f74200n);
            b();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74207g.get();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            a();
            this.f74210j = true;
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            a();
            if (this.f74206f.addThrowable(th)) {
                this.f74210j = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74205e.offer(t9);
            b();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74209i, cVar)) {
                this.f74209i = cVar;
                this.f74201a.onSubscribe(this);
                this.f74205e.offer(f74200n);
                b();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f74204d.decrementAndGet() == 0) {
                this.f74209i.dispose();
            }
        }
    }

    public h4(io.reactivex.e0<T> e0Var, Callable<? extends io.reactivex.e0<B>> callable, int i4) {
        super(e0Var);
        this.f74194b = callable;
        this.f74195c = i4;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super io.reactivex.z<T>> g0Var) {
        this.f73827a.subscribe(new b(g0Var, this.f74195c, this.f74194b));
    }
}
