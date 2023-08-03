package io.reactivex.internal.subscribers;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.n;
import io.reactivex.o;

/* compiled from: QueueDrainSubscriber.java */
/* loaded from: classes4.dex */
public abstract class h<T, U, V> extends l implements o<T>, n<U, V> {
    protected final org.reactivestreams.d<? super V> V;
    protected final o7.n<U> W;

    /* renamed from: b1  reason: collision with root package name */
    protected volatile boolean f75831b1;

    /* renamed from: g1  reason: collision with root package name */
    protected volatile boolean f75832g1;

    /* renamed from: p1  reason: collision with root package name */
    protected Throwable f75833p1;

    public h(org.reactivestreams.d<? super V> dVar, o7.n<U> nVar) {
        this.V = dVar;
        this.W = nVar;
    }

    @Override // io.reactivex.internal.util.n
    public final int a(int i4) {
        return this.f75859p.addAndGet(i4);
    }

    @Override // io.reactivex.internal.util.n
    public final boolean b() {
        return this.f75859p.getAndIncrement() == 0;
    }

    @Override // io.reactivex.internal.util.n
    public final boolean c() {
        return this.f75832g1;
    }

    @Override // io.reactivex.internal.util.n
    public final boolean d() {
        return this.f75831b1;
    }

    @Override // io.reactivex.internal.util.n
    public final long e() {
        return this.F.get();
    }

    @Override // io.reactivex.internal.util.n
    public final Throwable f() {
        return this.f75833p1;
    }

    public boolean g(org.reactivestreams.d<? super V> dVar, U u9) {
        return false;
    }

    @Override // io.reactivex.internal.util.n
    public final long i(long j4) {
        return this.F.addAndGet(-j4);
    }

    public final boolean j() {
        return this.f75859p.get() == 0 && this.f75859p.compareAndSet(0, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void k(U u9, boolean z9, io.reactivex.disposables.c cVar) {
        org.reactivestreams.d<? super V> dVar = this.V;
        o7.n<U> nVar = this.W;
        if (j()) {
            long j4 = this.F.get();
            if (j4 != 0) {
                if (g(dVar, u9) && j4 != Long.MAX_VALUE) {
                    i(1L);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                cVar.dispose();
                dVar.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            }
        } else {
            nVar.offer(u9);
            if (!b()) {
                return;
            }
        }
        io.reactivex.internal.util.o.e(nVar, dVar, z9, cVar, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void l(U u9, boolean z9, io.reactivex.disposables.c cVar) {
        org.reactivestreams.d<? super V> dVar = this.V;
        o7.n<U> nVar = this.W;
        if (j()) {
            long j4 = this.F.get();
            if (j4 != 0) {
                if (nVar.isEmpty()) {
                    if (g(dVar, u9) && j4 != Long.MAX_VALUE) {
                        i(1L);
                    }
                    if (a(-1) == 0) {
                        return;
                    }
                } else {
                    nVar.offer(u9);
                }
            } else {
                this.f75831b1 = true;
                cVar.dispose();
                dVar.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            }
        } else {
            nVar.offer(u9);
            if (!b()) {
                return;
            }
        }
        io.reactivex.internal.util.o.e(nVar, dVar, z9, cVar, this);
    }

    public final void m(long j4) {
        if (SubscriptionHelper.validate(j4)) {
            io.reactivex.internal.util.b.a(this.F, j4);
        }
    }
}
