package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.q;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: UnicastSubject.java */
/* loaded from: classes4.dex */
public final class j<T> extends i<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.internal.queue.b<T> f81631a;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Runnable> f81633c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f81634d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f81635e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f81636f;

    /* renamed from: g  reason: collision with root package name */
    Throwable f81637g;

    /* renamed from: j  reason: collision with root package name */
    boolean f81640j;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<n0<? super T>> f81632b = new AtomicReference<>();

    /* renamed from: h  reason: collision with root package name */
    final AtomicBoolean f81638h = new AtomicBoolean();

    /* renamed from: i  reason: collision with root package name */
    final BasicIntQueueDisposable<T> f81639i = new a();

    /* compiled from: UnicastSubject.java */
    /* loaded from: classes4.dex */
    final class a extends BasicIntQueueDisposable<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f81641c = 7926949470189395511L;

        a() {
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            j.this.f81631a.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (j.this.f81635e) {
                return;
            }
            j.this.f81635e = true;
            j.this.K8();
            j.this.f81632b.lazySet(null);
            if (j.this.f81639i.getAndIncrement() == 0) {
                j.this.f81632b.lazySet(null);
                j jVar = j.this;
                if (jVar.f81640j) {
                    return;
                }
                jVar.f81631a.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return j.this.f81635e;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return j.this.f81631a.isEmpty();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            return j.this.f81631a.poll();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                j.this.f81640j = true;
                return 2;
            }
            return 0;
        }
    }

    j(int capacityHint, Runnable onTerminate, boolean delayError) {
        this.f81631a = new io.reactivex.rxjava3.internal.queue.b<>(capacityHint);
        this.f81633c = new AtomicReference<>(onTerminate);
        this.f81634d = delayError;
    }

    @p7.c
    @p7.e
    public static <T> j<T> F8() {
        return new j<>(g0.R(), null, true);
    }

    @p7.c
    @p7.e
    public static <T> j<T> G8(int capacityHint) {
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return new j<>(capacityHint, null, true);
    }

    @p7.c
    @p7.e
    public static <T> j<T> H8(int capacityHint, @p7.e Runnable onTerminate) {
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        Objects.requireNonNull(onTerminate, "onTerminate");
        return new j<>(capacityHint, onTerminate, true);
    }

    @p7.c
    @p7.e
    public static <T> j<T> I8(int capacityHint, @p7.e Runnable onTerminate, boolean delayError) {
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        Objects.requireNonNull(onTerminate, "onTerminate");
        return new j<>(capacityHint, onTerminate, delayError);
    }

    @p7.c
    @p7.e
    public static <T> j<T> J8(boolean delayError) {
        return new j<>(g0.R(), null, delayError);
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    @p7.f
    public Throwable A8() {
        if (this.f81636f) {
            return this.f81637g;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean B8() {
        return this.f81636f && this.f81637g == null;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean C8() {
        return this.f81632b.get() != null;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean D8() {
        return this.f81636f && this.f81637g != null;
    }

    void K8() {
        Runnable runnable = this.f81633c.get();
        if (runnable == null || !this.f81633c.compareAndSet(runnable, null)) {
            return;
        }
        runnable.run();
    }

    void L8() {
        if (this.f81639i.getAndIncrement() != 0) {
            return;
        }
        n0<? super T> n0Var = this.f81632b.get();
        int i4 = 1;
        while (n0Var == null) {
            i4 = this.f81639i.addAndGet(-i4);
            if (i4 == 0) {
                return;
            }
            n0Var = this.f81632b.get();
        }
        if (this.f81640j) {
            M8(n0Var);
        } else {
            N8(n0Var);
        }
    }

    void M8(n0<? super T> a10) {
        io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f81631a;
        int i4 = 1;
        boolean z9 = !this.f81634d;
        while (!this.f81635e) {
            boolean z10 = this.f81636f;
            if (z9 && z10 && P8(bVar, a10)) {
                return;
            }
            a10.onNext(null);
            if (z10) {
                O8(a10);
                return;
            }
            i4 = this.f81639i.addAndGet(-i4);
            if (i4 == 0) {
                return;
            }
        }
        this.f81632b.lazySet(null);
    }

    void N8(n0<? super T> a10) {
        io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f81631a;
        boolean z9 = !this.f81634d;
        boolean z10 = true;
        int i4 = 1;
        while (!this.f81635e) {
            boolean z11 = this.f81636f;
            Object obj = (T) this.f81631a.poll();
            boolean z12 = obj == null;
            if (z11) {
                if (z9 && z10) {
                    if (P8(bVar, a10)) {
                        return;
                    }
                    z10 = false;
                }
                if (z12) {
                    O8(a10);
                    return;
                }
            }
            if (z12) {
                i4 = this.f81639i.addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            } else {
                a10.onNext(obj);
            }
        }
        this.f81632b.lazySet(null);
        bVar.clear();
    }

    void O8(n0<? super T> a10) {
        this.f81632b.lazySet(null);
        Throwable th = this.f81637g;
        if (th != null) {
            a10.onError(th);
        } else {
            a10.onComplete();
        }
    }

    boolean P8(final q<T> q9, n0<? super T> a10) {
        Throwable th = this.f81637g;
        if (th != null) {
            this.f81632b.lazySet(null);
            q9.clear();
            a10.onError(th);
            return true;
        }
        return false;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super T> observer) {
        if (!this.f81638h.get() && this.f81638h.compareAndSet(false, true)) {
            observer.onSubscribe(this.f81639i);
            this.f81632b.lazySet(observer);
            if (this.f81635e) {
                this.f81632b.lazySet(null);
                return;
            } else {
                L8();
                return;
            }
        }
        EmptyDisposable.error(new IllegalStateException("Only a single observer allowed."), observer);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (this.f81636f || this.f81635e) {
            return;
        }
        this.f81636f = true;
        K8();
        L8();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        if (!this.f81636f && !this.f81635e) {
            this.f81637g = t9;
            this.f81636f = true;
            K8();
            L8();
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
        if (this.f81636f || this.f81635e) {
            return;
        }
        this.f81631a.offer(t9);
        L8();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (this.f81636f || this.f81635e) {
            d4.dispose();
        }
    }
}
