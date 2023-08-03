package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWindowBoundary.java */
/* loaded from: classes3.dex */
public final class f4<T, B> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<B> f74095b;

    /* renamed from: c  reason: collision with root package name */
    final int f74096c;

    /* compiled from: ObservableWindowBoundary.java */
    /* loaded from: classes3.dex */
    static final class a<T, B> extends io.reactivex.observers.d<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, B> f74097b;

        /* renamed from: c  reason: collision with root package name */
        boolean f74098c;

        a(b<T, B> bVar) {
            this.f74097b = bVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74098c) {
                return;
            }
            this.f74098c = true;
            this.f74097b.b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74098c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74098c = true;
            this.f74097b.c(th);
        }

        @Override // io.reactivex.g0
        public void onNext(B b10) {
            if (this.f74098c) {
                return;
            }
            this.f74097b.d();
        }
    }

    /* compiled from: ObservableWindowBoundary.java */
    /* loaded from: classes3.dex */
    static final class b<T, B> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: k  reason: collision with root package name */
        private static final long f74099k = 2233020065421370272L;

        /* renamed from: l  reason: collision with root package name */
        static final Object f74100l = new Object();

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.z<T>> f74101a;

        /* renamed from: b  reason: collision with root package name */
        final int f74102b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, B> f74103c = new a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74104d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f74105e = new AtomicInteger(1);

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f74106f = new io.reactivex.internal.queue.a<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f74107g = new AtomicThrowable();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f74108h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f74109i;

        /* renamed from: j  reason: collision with root package name */
        io.reactivex.subjects.j<T> f74110j;

        b(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, int i4) {
            this.f74101a = g0Var;
            this.f74102b = i4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super io.reactivex.z<T>> g0Var = this.f74101a;
            io.reactivex.internal.queue.a<Object> aVar = this.f74106f;
            AtomicThrowable atomicThrowable = this.f74107g;
            int i4 = 1;
            while (this.f74105e.get() != 0) {
                io.reactivex.subjects.j<T> jVar = this.f74110j;
                boolean z9 = this.f74109i;
                if (z9 && atomicThrowable.get() != null) {
                    aVar.clear();
                    Throwable terminate = atomicThrowable.terminate();
                    if (jVar != 0) {
                        this.f74110j = null;
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
                            this.f74110j = null;
                            jVar.onComplete();
                        }
                        g0Var.onComplete();
                        return;
                    }
                    if (jVar != 0) {
                        this.f74110j = null;
                        jVar.onError(terminate2);
                    }
                    g0Var.onError(terminate2);
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (poll != f74100l) {
                    jVar.onNext(poll);
                } else {
                    if (jVar != 0) {
                        this.f74110j = null;
                        jVar.onComplete();
                    }
                    if (!this.f74108h.get()) {
                        io.reactivex.subjects.j<T> j4 = io.reactivex.subjects.j.j(this.f74102b, this);
                        this.f74110j = j4;
                        this.f74105e.getAndIncrement();
                        g0Var.onNext(j4);
                    }
                }
            }
            aVar.clear();
            this.f74110j = null;
        }

        void b() {
            DisposableHelper.dispose(this.f74104d);
            this.f74109i = true;
            a();
        }

        void c(Throwable th) {
            DisposableHelper.dispose(this.f74104d);
            if (this.f74107g.addThrowable(th)) {
                this.f74109i = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void d() {
            this.f74106f.offer(f74100l);
            a();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74108h.compareAndSet(false, true)) {
                this.f74103c.dispose();
                if (this.f74105e.decrementAndGet() == 0) {
                    DisposableHelper.dispose(this.f74104d);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74108h.get();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74103c.dispose();
            this.f74109i = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74103c.dispose();
            if (this.f74107g.addThrowable(th)) {
                this.f74109i = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74106f.offer(t9);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this.f74104d, cVar)) {
                d();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f74105e.decrementAndGet() == 0) {
                DisposableHelper.dispose(this.f74104d);
            }
        }
    }

    public f4(io.reactivex.e0<T> e0Var, io.reactivex.e0<B> e0Var2, int i4) {
        super(e0Var);
        this.f74095b = e0Var2;
        this.f74096c = i4;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super io.reactivex.z<T>> g0Var) {
        b bVar = new b(g0Var, this.f74096c);
        g0Var.onSubscribe(bVar);
        this.f74095b.subscribe(bVar.f74103c);
        this.f73827a.subscribe(bVar);
    }
}
