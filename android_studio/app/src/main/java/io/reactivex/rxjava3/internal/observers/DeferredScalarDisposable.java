package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;

/* loaded from: classes4.dex */
public class DeferredScalarDisposable<T> extends BasicIntQueueDisposable<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final long f76443d = -5502432239815349361L;

    /* renamed from: e  reason: collision with root package name */
    static final int f76444e = 2;

    /* renamed from: f  reason: collision with root package name */
    static final int f76445f = 4;

    /* renamed from: g  reason: collision with root package name */
    static final int f76446g = 8;

    /* renamed from: h  reason: collision with root package name */
    static final int f76447h = 16;

    /* renamed from: i  reason: collision with root package name */
    static final int f76448i = 32;

    /* renamed from: b  reason: collision with root package name */
    protected final n0<? super T> f76449b;

    /* renamed from: c  reason: collision with root package name */
    protected T f76450c;

    public DeferredScalarDisposable(n0<? super T> downstream) {
        this.f76449b = downstream;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final void clear() {
        lazySet(32);
        this.f76450c = null;
    }

    public final void complete(T value) {
        int i4 = get();
        if ((i4 & 54) != 0) {
            return;
        }
        n0<? super T> n0Var = this.f76449b;
        if (i4 == 8) {
            this.f76450c = value;
            lazySet(16);
            n0Var.onNext(null);
        } else {
            lazySet(2);
            n0Var.onNext(value);
        }
        if (get() != 4) {
            n0Var.onComplete();
        }
    }

    public void dispose() {
        set(4);
        this.f76450c = null;
    }

    public final void error(Throwable t9) {
        if ((get() & 54) != 0) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        lazySet(2);
        this.f76449b.onError(t9);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    @p7.f
    public final T poll() {
        if (get() == 16) {
            T t9 = this.f76450c;
            this.f76450c = null;
            lazySet(32);
            return t9;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.m
    public final int requestFusion(int mode) {
        if ((mode & 2) != 0) {
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
        this.f76449b.onComplete();
    }
}
