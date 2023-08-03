package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;
import java.util.concurrent.CountDownLatch;

/* compiled from: BlockingBaseObserver.java */
/* loaded from: classes4.dex */
public abstract class c<T> extends CountDownLatch implements n0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    T f76475a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f76476b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.rxjava3.disposables.f f76477c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f76478d;

    public c() {
        super(1);
    }

    public final T a() {
        if (getCount() != 0) {
            try {
                io.reactivex.rxjava3.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                dispose();
                throw io.reactivex.rxjava3.internal.util.g.i(e4);
            }
        }
        Throwable th = this.f76476b;
        if (th == null) {
            return this.f76475a;
        }
        throw io.reactivex.rxjava3.internal.util.g.i(th);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        this.f76478d = true;
        io.reactivex.rxjava3.disposables.f fVar = this.f76477c;
        if (fVar != null) {
            fVar.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return this.f76478d;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public final void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        this.f76477c = d4;
        if (this.f76478d) {
            d4.dispose();
        }
    }
}
