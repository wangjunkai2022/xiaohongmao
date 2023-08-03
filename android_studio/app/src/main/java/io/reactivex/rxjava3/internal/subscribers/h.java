package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.fuseable.p;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.n;
import io.reactivex.rxjava3.internal.util.o;

/* compiled from: QueueDrainSubscriber.java */
/* loaded from: classes4.dex */
public abstract class h<T, U, V> extends l implements r<T>, n<U, V> {
    protected final org.reactivestreams.d<? super V> V;
    protected final p<U> W;

    /* renamed from: b1  reason: collision with root package name */
    protected volatile boolean f81246b1;

    /* renamed from: g1  reason: collision with root package name */
    protected volatile boolean f81247g1;

    /* renamed from: p1  reason: collision with root package name */
    protected Throwable f81248p1;

    public h(org.reactivestreams.d<? super V> actual, p<U> queue) {
        this.V = actual;
        this.W = queue;
    }

    @Override // io.reactivex.rxjava3.internal.util.n
    public final int a(int m9) {
        return this.f81274p.addAndGet(m9);
    }

    @Override // io.reactivex.rxjava3.internal.util.n
    public final boolean b() {
        return this.f81274p.getAndIncrement() == 0;
    }

    @Override // io.reactivex.rxjava3.internal.util.n
    public final boolean c() {
        return this.f81247g1;
    }

    @Override // io.reactivex.rxjava3.internal.util.n
    public final boolean d() {
        return this.f81246b1;
    }

    @Override // io.reactivex.rxjava3.internal.util.n
    public final long e() {
        return this.F.get();
    }

    @Override // io.reactivex.rxjava3.internal.util.n
    public final Throwable f() {
        return this.f81248p1;
    }

    public boolean g(org.reactivestreams.d<? super V> a10, U v9) {
        return false;
    }

    @Override // io.reactivex.rxjava3.internal.util.n
    public final long i(long n9) {
        return this.F.addAndGet(-n9);
    }

    public final boolean j() {
        return this.f81274p.get() == 0 && this.f81274p.compareAndSet(0, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void k(U value, boolean delayError, io.reactivex.rxjava3.disposables.f dispose) {
        org.reactivestreams.d<? super V> dVar = this.V;
        p<U> pVar = this.W;
        if (j()) {
            long j4 = this.F.get();
            if (j4 != 0) {
                if (g(dVar, value) && j4 != Long.MAX_VALUE) {
                    i(1L);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                dispose.dispose();
                dVar.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            }
        } else {
            pVar.offer(value);
            if (!b()) {
                return;
            }
        }
        o.e(pVar, dVar, delayError, dispose, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void l(U value, boolean delayError, io.reactivex.rxjava3.disposables.f dispose) {
        org.reactivestreams.d<? super V> dVar = this.V;
        p<U> pVar = this.W;
        if (j()) {
            long j4 = this.F.get();
            if (j4 != 0) {
                if (pVar.isEmpty()) {
                    if (g(dVar, value) && j4 != Long.MAX_VALUE) {
                        i(1L);
                    }
                    if (a(-1) == 0) {
                        return;
                    }
                } else {
                    pVar.offer(value);
                }
            } else {
                this.f81246b1 = true;
                dispose.dispose();
                dVar.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            }
        } else {
            pVar.offer(value);
            if (!b()) {
                return;
            }
        }
        o.e(pVar, dVar, delayError, dispose, this);
    }

    public final void m(long n9) {
        if (SubscriptionHelper.validate(n9)) {
            io.reactivex.rxjava3.internal.util.b.a(this.F, n9);
        }
    }
}
