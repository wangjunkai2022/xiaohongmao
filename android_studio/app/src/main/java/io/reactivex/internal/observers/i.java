package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FutureSingleObserver.java */
/* loaded from: classes3.dex */
public final class i<T> extends CountDownLatch implements l0<T>, Future<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    T f71231a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f71232b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.c> f71233c;

    public i() {
        super(1);
        this.f71233c = new AtomicReference<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z9) {
        io.reactivex.disposables.c cVar;
        DisposableHelper disposableHelper;
        do {
            cVar = this.f71233c.get();
            if (cVar == this || cVar == (disposableHelper = DisposableHelper.DISPOSED)) {
                return false;
            }
        } while (!this.f71233c.compareAndSet(cVar, disposableHelper));
        if (cVar != null) {
            cVar.dispose();
        }
        countDown();
        return true;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.internal.util.c.b();
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f71232b;
            if (th == null) {
                return this.f71231a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return DisposableHelper.isDisposed(this.f71233c.get());
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        io.reactivex.disposables.c cVar;
        do {
            cVar = this.f71233c.get();
            if (cVar == DisposableHelper.DISPOSED) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f71232b = th;
        } while (!this.f71233c.compareAndSet(cVar, this));
        countDown();
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        DisposableHelper.setOnce(this.f71233c, cVar);
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t9) {
        io.reactivex.disposables.c cVar = this.f71233c.get();
        if (cVar == DisposableHelper.DISPOSED) {
            return;
        }
        this.f71231a = t9;
        this.f71233c.compareAndSet(cVar, this);
        countDown();
    }

    @Override // java.util.concurrent.Future
    public T get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (getCount() != 0) {
            io.reactivex.internal.util.c.b();
            if (!await(j4, timeUnit)) {
                throw new TimeoutException(io.reactivex.internal.util.g.e(j4, timeUnit));
            }
        }
        if (!isCancelled()) {
            Throwable th = this.f71232b;
            if (th == null) {
                return this.f71231a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
