package io.reactivex.internal.observers;

import io.reactivex.g0;

/* loaded from: classes3.dex */
public class DeferredScalarDisposable<T> extends BasicIntQueueDisposable<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final long f71184d = -5502432239815349361L;

    /* renamed from: e  reason: collision with root package name */
    static final int f71185e = 2;

    /* renamed from: f  reason: collision with root package name */
    static final int f71186f = 4;

    /* renamed from: g  reason: collision with root package name */
    static final int f71187g = 8;

    /* renamed from: h  reason: collision with root package name */
    static final int f71188h = 16;

    /* renamed from: i  reason: collision with root package name */
    static final int f71189i = 32;

    /* renamed from: b  reason: collision with root package name */
    protected final g0<? super T> f71190b;

    /* renamed from: c  reason: collision with root package name */
    protected T f71191c;

    public DeferredScalarDisposable(g0<? super T> g0Var) {
        this.f71190b = g0Var;
    }

    @Override // o7.o
    public final void clear() {
        lazySet(32);
        this.f71191c = null;
    }

    public final void complete(T t9) {
        int i4 = get();
        if ((i4 & 54) != 0) {
            return;
        }
        g0<? super T> g0Var = this.f71190b;
        if (i4 == 8) {
            this.f71191c = t9;
            lazySet(16);
            g0Var.onNext(null);
        } else {
            lazySet(2);
            g0Var.onNext(t9);
        }
        if (get() != 4) {
            g0Var.onComplete();
        }
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        set(4);
        this.f71191c = null;
    }

    public final void error(Throwable th) {
        if ((get() & 54) != 0) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        lazySet(2);
        this.f71190b.onError(th);
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override // o7.o
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // o7.o
    @m7.f
    public final T poll() throws Exception {
        if (get() == 16) {
            T t9 = this.f71191c;
            this.f71191c = null;
            lazySet(32);
            return t9;
        }
        return null;
    }

    @Override // o7.k
    public final int requestFusion(int i4) {
        if ((i4 & 2) != 0) {
            lazySet(8);
            return 2;
        }
        return 0;
    }

    public final boolean tryDispose() {
        return getAndSet(4) != 4;
    }

    public final void complete() {
        if ((get() & 54) != 0) {
            return;
        }
        lazySet(2);
        this.f71190b.onComplete();
    }
}
