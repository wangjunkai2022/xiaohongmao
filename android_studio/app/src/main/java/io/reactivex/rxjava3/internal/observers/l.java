package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;

/* compiled from: QueueDrainObserver.java */
/* loaded from: classes4.dex */
public abstract class l<T, U, V> extends n implements n0<T>, io.reactivex.rxjava3.internal.util.k<U, V> {
    protected final n0<? super V> F;
    protected final io.reactivex.rxjava3.internal.fuseable.p<U> G;
    protected volatile boolean H;
    protected volatile boolean I;
    protected Throwable J;

    public l(n0<? super V> actual, io.reactivex.rxjava3.internal.fuseable.p<U> queue) {
        this.F = actual;
        this.G = queue;
    }

    @Override // io.reactivex.rxjava3.internal.util.k
    public final int a(int m9) {
        return this.f76521p.addAndGet(m9);
    }

    @Override // io.reactivex.rxjava3.internal.util.k
    public final boolean b() {
        return this.f76521p.getAndIncrement() == 0;
    }

    @Override // io.reactivex.rxjava3.internal.util.k
    public final boolean c() {
        return this.I;
    }

    @Override // io.reactivex.rxjava3.internal.util.k
    public final boolean d() {
        return this.H;
    }

    @Override // io.reactivex.rxjava3.internal.util.k
    public void e(n0<? super V> a10, U v9) {
    }

    @Override // io.reactivex.rxjava3.internal.util.k
    public final Throwable f() {
        return this.J;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g(U value, boolean delayError, io.reactivex.rxjava3.disposables.f dispose) {
        n0<? super V> n0Var = this.F;
        io.reactivex.rxjava3.internal.fuseable.p<U> pVar = this.G;
        if (this.f76521p.get() == 0 && this.f76521p.compareAndSet(0, 1)) {
            e(n0Var, value);
            if (a(-1) == 0) {
                return;
            }
        } else {
            pVar.offer(value);
            if (!b()) {
                return;
            }
        }
        io.reactivex.rxjava3.internal.util.o.d(pVar, n0Var, delayError, dispose, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h(U value, boolean delayError, io.reactivex.rxjava3.disposables.f disposable) {
        n0<? super V> n0Var = this.F;
        io.reactivex.rxjava3.internal.fuseable.p<U> pVar = this.G;
        if (this.f76521p.get() == 0 && this.f76521p.compareAndSet(0, 1)) {
            if (pVar.isEmpty()) {
                e(n0Var, value);
                if (a(-1) == 0) {
                    return;
                }
            } else {
                pVar.offer(value);
            }
        } else {
            pVar.offer(value);
            if (!b()) {
                return;
            }
        }
        io.reactivex.rxjava3.internal.util.o.d(pVar, n0Var, delayError, disposable, this);
    }
}
