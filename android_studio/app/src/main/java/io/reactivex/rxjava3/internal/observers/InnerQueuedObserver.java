package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class InnerQueuedObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements n0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: f  reason: collision with root package name */
    private static final long f76459f = -5417183359794346637L;

    /* renamed from: a  reason: collision with root package name */
    final k<T> f76460a;

    /* renamed from: b  reason: collision with root package name */
    final int f76461b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.rxjava3.internal.fuseable.q<T> f76462c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f76463d;

    /* renamed from: e  reason: collision with root package name */
    int f76464e;

    public InnerQueuedObserver(k<T> parent, int prefetch) {
        this.f76460a = parent;
        this.f76461b = prefetch;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean isDone() {
        return this.f76463d;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        this.f76460a.c(this);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        this.f76460a.d(this, t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        if (this.f76464e == 0) {
            this.f76460a.a(this, t9);
        } else {
            this.f76460a.b();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (DisposableHelper.setOnce(this, d4)) {
            if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                io.reactivex.rxjava3.internal.fuseable.l lVar = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                int requestFusion = lVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.f76464e = requestFusion;
                    this.f76462c = lVar;
                    this.f76463d = true;
                    this.f76460a.c(this);
                    return;
                } else if (requestFusion == 2) {
                    this.f76464e = requestFusion;
                    this.f76462c = lVar;
                    return;
                }
            }
            this.f76462c = io.reactivex.rxjava3.internal.util.o.c(-this.f76461b);
        }
    }

    public io.reactivex.rxjava3.internal.fuseable.q<T> queue() {
        return this.f76462c;
    }

    public void setDone() {
        this.f76463d = true;
    }
}
