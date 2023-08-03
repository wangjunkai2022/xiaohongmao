package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWindowBoundary.java */
/* loaded from: classes4.dex */
public final class i4<T, B> extends io.reactivex.rxjava3.internal.operators.observable.a<T, io.reactivex.rxjava3.core.g0<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<B> f79557b;

    /* renamed from: c  reason: collision with root package name */
    final int f79558c;

    /* compiled from: ObservableWindowBoundary.java */
    /* loaded from: classes4.dex */
    static final class a<T, B> extends io.reactivex.rxjava3.observers.e<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, B> f79559b;

        /* renamed from: c  reason: collision with root package name */
        boolean f79560c;

        a(b<T, B> parent) {
            this.f79559b = parent;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79560c) {
                return;
            }
            this.f79560c = true;
            this.f79559b.b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79560c) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79560c = true;
            this.f79559b.c(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(B t9) {
            if (this.f79560c) {
                return;
            }
            this.f79559b.d();
        }
    }

    /* compiled from: ObservableWindowBoundary.java */
    /* loaded from: classes4.dex */
    static final class b<T, B> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: k  reason: collision with root package name */
        private static final long f79561k = 2233020065421370272L;

        /* renamed from: l  reason: collision with root package name */
        static final Object f79562l = new Object();

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> f79563a;

        /* renamed from: b  reason: collision with root package name */
        final int f79564b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, B> f79565c = new a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79566d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f79567e = new AtomicInteger(1);

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.a<Object> f79568f = new io.reactivex.rxjava3.internal.queue.a<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f79569g = new AtomicThrowable();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f79570h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f79571i;

        /* renamed from: j  reason: collision with root package name */
        io.reactivex.rxjava3.subjects.j<T> f79572j;

        b(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> downstream, int capacityHint) {
            this.f79563a = downstream;
            this.f79564b = capacityHint;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> n0Var = this.f79563a;
            io.reactivex.rxjava3.internal.queue.a<Object> aVar = this.f79568f;
            AtomicThrowable atomicThrowable = this.f79569g;
            int i4 = 1;
            while (this.f79567e.get() != 0) {
                io.reactivex.rxjava3.subjects.j<T> jVar = this.f79572j;
                boolean z9 = this.f79571i;
                if (z9 && atomicThrowable.get() != null) {
                    aVar.clear();
                    Throwable terminate = atomicThrowable.terminate();
                    if (jVar != 0) {
                        this.f79572j = null;
                        jVar.onError(terminate);
                    }
                    n0Var.onError(terminate);
                    return;
                }
                Object poll = aVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    Throwable terminate2 = atomicThrowable.terminate();
                    if (terminate2 == null) {
                        if (jVar != 0) {
                            this.f79572j = null;
                            jVar.onComplete();
                        }
                        n0Var.onComplete();
                        return;
                    }
                    if (jVar != 0) {
                        this.f79572j = null;
                        jVar.onError(terminate2);
                    }
                    n0Var.onError(terminate2);
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (poll != f79562l) {
                    jVar.onNext(poll);
                } else {
                    if (jVar != 0) {
                        this.f79572j = null;
                        jVar.onComplete();
                    }
                    if (!this.f79570h.get()) {
                        io.reactivex.rxjava3.subjects.j<T> H8 = io.reactivex.rxjava3.subjects.j.H8(this.f79564b, this);
                        this.f79572j = H8;
                        this.f79567e.getAndIncrement();
                        k4 k4Var = new k4(H8);
                        n0Var.onNext(k4Var);
                        if (k4Var.A8()) {
                            H8.onComplete();
                        }
                    }
                }
            }
            aVar.clear();
            this.f79572j = null;
        }

        void b() {
            DisposableHelper.dispose(this.f79566d);
            this.f79571i = true;
            a();
        }

        void c(Throwable e4) {
            DisposableHelper.dispose(this.f79566d);
            if (this.f79569g.tryAddThrowableOrReport(e4)) {
                this.f79571i = true;
                a();
            }
        }

        void d() {
            this.f79568f.offer(f79562l);
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79570h.compareAndSet(false, true)) {
                this.f79565c.dispose();
                if (this.f79567e.decrementAndGet() == 0) {
                    DisposableHelper.dispose(this.f79566d);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79570h.get();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79565c.dispose();
            this.f79571i = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            this.f79565c.dispose();
            if (this.f79569g.tryAddThrowableOrReport(e4)) {
                this.f79571i = true;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79568f.offer(t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this.f79566d, d4)) {
                d();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f79567e.decrementAndGet() == 0) {
                DisposableHelper.dispose(this.f79566d);
            }
        }
    }

    public i4(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.l0<B> other, int capacityHint) {
        super(source);
        this.f79557b = other;
        this.f79558c = capacityHint;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> observer) {
        b bVar = new b(observer, this.f79558c);
        observer.onSubscribe(bVar);
        this.f79557b.a(bVar.f79565c);
        this.f79141a.a(bVar);
    }
}
