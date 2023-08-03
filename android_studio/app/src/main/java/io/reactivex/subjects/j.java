package io.reactivex.subjects;

import io.reactivex.g0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import o7.o;

/* compiled from: UnicastSubject.java */
/* loaded from: classes4.dex */
public final class j<T> extends i<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.internal.queue.b<T> f81781a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<g0<? super T>> f81782b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Runnable> f81783c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f81784d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f81785e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f81786f;

    /* renamed from: g  reason: collision with root package name */
    Throwable f81787g;

    /* renamed from: h  reason: collision with root package name */
    final AtomicBoolean f81788h;

    /* renamed from: i  reason: collision with root package name */
    final BasicIntQueueDisposable<T> f81789i;

    /* renamed from: j  reason: collision with root package name */
    boolean f81790j;

    /* compiled from: UnicastSubject.java */
    /* loaded from: classes4.dex */
    final class a extends BasicIntQueueDisposable<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f81791c = 7926949470189395511L;

        a() {
        }

        @Override // o7.o
        public void clear() {
            j.this.f81781a.clear();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (j.this.f81785e) {
                return;
            }
            j.this.f81785e = true;
            j.this.m();
            j.this.f81782b.lazySet(null);
            if (j.this.f81789i.getAndIncrement() == 0) {
                j.this.f81782b.lazySet(null);
                j jVar = j.this;
                if (jVar.f81790j) {
                    return;
                }
                jVar.f81781a.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return j.this.f81785e;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return j.this.f81781a.isEmpty();
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            return j.this.f81781a.poll();
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                j.this.f81790j = true;
                return 2;
            }
            return 0;
        }
    }

    j(int i4, boolean z9) {
        this.f81781a = new io.reactivex.internal.queue.b<>(io.reactivex.internal.functions.b.h(i4, "capacityHint"));
        this.f81783c = new AtomicReference<>();
        this.f81784d = z9;
        this.f81782b = new AtomicReference<>();
        this.f81788h = new AtomicBoolean();
        this.f81789i = new a();
    }

    @m7.e
    @m7.c
    public static <T> j<T> h() {
        return new j<>(z.bufferSize(), true);
    }

    @m7.e
    @m7.c
    public static <T> j<T> i(int i4) {
        return new j<>(i4, true);
    }

    @m7.e
    @m7.c
    public static <T> j<T> j(int i4, Runnable runnable) {
        return new j<>(i4, runnable, true);
    }

    @m7.e
    @m7.c
    public static <T> j<T> k(int i4, Runnable runnable, boolean z9) {
        return new j<>(i4, runnable, z9);
    }

    @m7.e
    @m7.c
    public static <T> j<T> l(boolean z9) {
        return new j<>(z.bufferSize(), z9);
    }

    @Override // io.reactivex.subjects.i
    @m7.f
    public Throwable b() {
        if (this.f81786f) {
            return this.f81787g;
        }
        return null;
    }

    @Override // io.reactivex.subjects.i
    public boolean d() {
        return this.f81786f && this.f81787g == null;
    }

    @Override // io.reactivex.subjects.i
    public boolean e() {
        return this.f81782b.get() != null;
    }

    @Override // io.reactivex.subjects.i
    public boolean f() {
        return this.f81786f && this.f81787g != null;
    }

    void m() {
        Runnable runnable = this.f81783c.get();
        if (runnable == null || !this.f81783c.compareAndSet(runnable, null)) {
            return;
        }
        runnable.run();
    }

    void n() {
        if (this.f81789i.getAndIncrement() != 0) {
            return;
        }
        g0<? super T> g0Var = this.f81782b.get();
        int i4 = 1;
        while (g0Var == null) {
            i4 = this.f81789i.addAndGet(-i4);
            if (i4 == 0) {
                return;
            }
            g0Var = this.f81782b.get();
        }
        if (this.f81790j) {
            o(g0Var);
        } else {
            p(g0Var);
        }
    }

    void o(g0<? super T> g0Var) {
        io.reactivex.internal.queue.b<T> bVar = this.f81781a;
        int i4 = 1;
        boolean z9 = !this.f81784d;
        while (!this.f81785e) {
            boolean z10 = this.f81786f;
            if (z9 && z10 && r(bVar, g0Var)) {
                return;
            }
            g0Var.onNext(null);
            if (z10) {
                q(g0Var);
                return;
            }
            i4 = this.f81789i.addAndGet(-i4);
            if (i4 == 0) {
                return;
            }
        }
        this.f81782b.lazySet(null);
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f81786f || this.f81785e) {
            return;
        }
        this.f81786f = true;
        m();
        n();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f81786f && !this.f81785e) {
            this.f81787g = th;
            this.f81786f = true;
            m();
            n();
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f81786f || this.f81785e) {
            return;
        }
        this.f81781a.offer(t9);
        n();
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (this.f81786f || this.f81785e) {
            cVar.dispose();
        }
    }

    void p(g0<? super T> g0Var) {
        io.reactivex.internal.queue.b<T> bVar = this.f81781a;
        boolean z9 = !this.f81784d;
        boolean z10 = true;
        int i4 = 1;
        while (!this.f81785e) {
            boolean z11 = this.f81786f;
            Object obj = (T) this.f81781a.poll();
            boolean z12 = obj == null;
            if (z11) {
                if (z9 && z10) {
                    if (r(bVar, g0Var)) {
                        return;
                    }
                    z10 = false;
                }
                if (z12) {
                    q(g0Var);
                    return;
                }
            }
            if (z12) {
                i4 = this.f81789i.addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            } else {
                g0Var.onNext(obj);
            }
        }
        this.f81782b.lazySet(null);
        bVar.clear();
    }

    void q(g0<? super T> g0Var) {
        this.f81782b.lazySet(null);
        Throwable th = this.f81787g;
        if (th != null) {
            g0Var.onError(th);
        } else {
            g0Var.onComplete();
        }
    }

    boolean r(o<T> oVar, g0<? super T> g0Var) {
        Throwable th = this.f81787g;
        if (th != null) {
            this.f81782b.lazySet(null);
            oVar.clear();
            g0Var.onError(th);
            return true;
        }
        return false;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super T> g0Var) {
        if (!this.f81788h.get() && this.f81788h.compareAndSet(false, true)) {
            g0Var.onSubscribe(this.f81789i);
            this.f81782b.lazySet(g0Var);
            if (this.f81785e) {
                this.f81782b.lazySet(null);
                return;
            } else {
                n();
                return;
            }
        }
        EmptyDisposable.error(new IllegalStateException("Only a single observer allowed."), g0Var);
    }

    j(int i4, Runnable runnable) {
        this(i4, runnable, true);
    }

    j(int i4, Runnable runnable, boolean z9) {
        this.f81781a = new io.reactivex.internal.queue.b<>(io.reactivex.internal.functions.b.h(i4, "capacityHint"));
        this.f81783c = new AtomicReference<>(io.reactivex.internal.functions.b.g(runnable, "onTerminate"));
        this.f81784d = z9;
        this.f81782b = new AtomicReference<>();
        this.f81788h = new AtomicBoolean();
        this.f81789i = new a();
    }
}
