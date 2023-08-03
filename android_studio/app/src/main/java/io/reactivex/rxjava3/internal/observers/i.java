package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FutureMultiObserver.java */
/* loaded from: classes4.dex */
public final class i<T> extends CountDownLatch implements y<T>, s0<T>, io.reactivex.rxjava3.core.d, Future<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    T f76490a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f76491b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<io.reactivex.rxjava3.disposables.f> f76492c;

    public i() {
        super(1);
        this.f76492c = new AtomicReference<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        io.reactivex.rxjava3.disposables.f fVar;
        DisposableHelper disposableHelper;
        do {
            fVar = this.f76492c.get();
            if (fVar == this || fVar == (disposableHelper = DisposableHelper.DISPOSED)) {
                return false;
            }
        } while (!this.f76492c.compareAndSet(fVar, disposableHelper));
        if (fVar != null) {
            fVar.dispose();
        }
        countDown();
        return true;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.rxjava3.internal.util.c.b();
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f76491b;
            if (th == null) {
                return this.f76490a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return DisposableHelper.isDisposed(this.f76492c.get());
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
    public void onComplete() {
        io.reactivex.rxjava3.disposables.f fVar = this.f76492c.get();
        if (fVar == DisposableHelper.DISPOSED) {
            return;
        }
        this.f76492c.compareAndSet(fVar, this);
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.disposables.f fVar;
        do {
            fVar = this.f76492c.get();
            if (fVar == DisposableHelper.DISPOSED) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76491b = t9;
        } while (!this.f76492c.compareAndSet(fVar, this));
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this.f76492c, d4);
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
    public void onSuccess(T t9) {
        io.reactivex.rxjava3.disposables.f fVar = this.f76492c.get();
        if (fVar == DisposableHelper.DISPOSED) {
            return;
        }
        this.f76490a = t9;
        this.f76492c.compareAndSet(fVar, this);
        countDown();
    }

    @Override // java.util.concurrent.Future
    public T get(long timeout, @p7.e TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        if (getCount() != 0) {
            io.reactivex.rxjava3.internal.util.c.b();
            if (!await(timeout, unit)) {
                throw new TimeoutException(io.reactivex.rxjava3.internal.util.g.h(timeout, unit));
            }
        }
        if (!isCancelled()) {
            Throwable th = this.f76491b;
            if (th == null) {
                return this.f76490a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
