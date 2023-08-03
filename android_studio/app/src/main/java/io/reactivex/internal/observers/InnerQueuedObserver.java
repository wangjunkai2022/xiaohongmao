package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class InnerQueuedObserver<T> extends AtomicReference<io.reactivex.disposables.c> implements g0<T>, io.reactivex.disposables.c {

    /* renamed from: f  reason: collision with root package name */
    private static final long f71200f = -5417183359794346637L;

    /* renamed from: a  reason: collision with root package name */
    final j<T> f71201a;

    /* renamed from: b  reason: collision with root package name */
    final int f71202b;

    /* renamed from: c  reason: collision with root package name */
    o7.o<T> f71203c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f71204d;

    /* renamed from: e  reason: collision with root package name */
    int f71205e;

    public InnerQueuedObserver(j<T> jVar, int i4) {
        this.f71201a = jVar;
        this.f71202b = i4;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public int fusionMode() {
        return this.f71205e;
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean isDone() {
        return this.f71204d;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        this.f71201a.d(this);
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        this.f71201a.c(this, th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        if (this.f71205e == 0) {
            this.f71201a.e(this, t9);
        } else {
            this.f71201a.b();
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            if (cVar instanceof o7.j) {
                o7.j jVar = (o7.j) cVar;
                int requestFusion = jVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.f71205e = requestFusion;
                    this.f71203c = jVar;
                    this.f71204d = true;
                    this.f71201a.d(this);
                    return;
                } else if (requestFusion == 2) {
                    this.f71205e = requestFusion;
                    this.f71203c = jVar;
                    return;
                }
            }
            this.f71203c = io.reactivex.internal.util.o.c(-this.f71202b);
        }
    }

    public o7.o<T> queue() {
        return this.f71203c;
    }

    public void setDone() {
        this.f71204d = true;
    }
}
