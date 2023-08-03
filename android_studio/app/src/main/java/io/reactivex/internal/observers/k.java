package io.reactivex.internal.observers;

import io.reactivex.g0;

/* compiled from: QueueDrainObserver.java */
/* loaded from: classes3.dex */
public abstract class k<T, U, V> extends m implements g0<T>, io.reactivex.internal.util.k<U, V> {
    protected final g0<? super V> F;
    protected final o7.n<U> G;
    protected volatile boolean H;
    protected volatile boolean I;
    protected Throwable J;

    public k(g0<? super V> g0Var, o7.n<U> nVar) {
        this.F = g0Var;
        this.G = nVar;
    }

    @Override // io.reactivex.internal.util.k
    public final int a(int i4) {
        return this.f71259p.addAndGet(i4);
    }

    @Override // io.reactivex.internal.util.k
    public final boolean b() {
        return this.f71259p.getAndIncrement() == 0;
    }

    @Override // io.reactivex.internal.util.k
    public final boolean c() {
        return this.I;
    }

    @Override // io.reactivex.internal.util.k
    public final boolean d() {
        return this.H;
    }

    public final boolean e() {
        return this.f71259p.get() == 0 && this.f71259p.compareAndSet(0, 1);
    }

    @Override // io.reactivex.internal.util.k
    public final Throwable f() {
        return this.J;
    }

    @Override // io.reactivex.internal.util.k
    public void g(g0<? super V> g0Var, U u9) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h(U u9, boolean z9, io.reactivex.disposables.c cVar) {
        g0<? super V> g0Var = this.F;
        o7.n<U> nVar = this.G;
        if (this.f71259p.get() == 0 && this.f71259p.compareAndSet(0, 1)) {
            g(g0Var, u9);
            if (a(-1) == 0) {
                return;
            }
        } else {
            nVar.offer(u9);
            if (!b()) {
                return;
            }
        }
        io.reactivex.internal.util.o.d(nVar, g0Var, z9, cVar, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i(U u9, boolean z9, io.reactivex.disposables.c cVar) {
        g0<? super V> g0Var = this.F;
        o7.n<U> nVar = this.G;
        if (this.f71259p.get() == 0 && this.f71259p.compareAndSet(0, 1)) {
            if (nVar.isEmpty()) {
                g(g0Var, u9);
                if (a(-1) == 0) {
                    return;
                }
            } else {
                nVar.offer(u9);
            }
        } else {
            nVar.offer(u9);
            if (!b()) {
                return;
            }
        }
        io.reactivex.internal.util.o.d(nVar, g0Var, z9, cVar, this);
    }
}
