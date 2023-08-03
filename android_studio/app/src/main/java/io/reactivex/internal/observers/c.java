package io.reactivex.internal.observers;

import io.reactivex.g0;
import java.util.concurrent.CountDownLatch;

/* compiled from: BlockingBaseObserver.java */
/* loaded from: classes3.dex */
public abstract class c<T> extends CountDownLatch implements g0<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    T f71216a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f71217b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.disposables.c f71218c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f71219d;

    public c() {
        super(1);
    }

    public final T a() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                dispose();
                throw io.reactivex.internal.util.g.f(e4);
            }
        }
        Throwable th = this.f71217b;
        if (th == null) {
            return this.f71216a;
        }
        throw io.reactivex.internal.util.g.f(th);
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        this.f71219d = true;
        io.reactivex.disposables.c cVar = this.f71218c;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return this.f71219d;
    }

    @Override // io.reactivex.g0
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.g0
    public final void onSubscribe(io.reactivex.disposables.c cVar) {
        this.f71218c = cVar;
        if (this.f71219d) {
            cVar.dispose();
        }
    }
}
