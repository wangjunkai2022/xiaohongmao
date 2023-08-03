package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FutureObserver.java */
/* loaded from: classes4.dex */
public final class j<T> extends CountDownLatch implements n0<T>, Future<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    T f76493a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f76494b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<io.reactivex.rxjava3.disposables.f> f76495c;

    public j() {
        super(1);
        this.f76495c = new AtomicReference<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        io.reactivex.rxjava3.disposables.f fVar;
        DisposableHelper disposableHelper;
        do {
            fVar = this.f76495c.get();
            if (fVar == this || fVar == (disposableHelper = DisposableHelper.DISPOSED)) {
                return false;
            }
        } while (!this.f76495c.compareAndSet(fVar, disposableHelper));
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
            Throwable th = this.f76494b;
            if (th == null) {
                return this.f76493a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return DisposableHelper.isDisposed(this.f76495c.get());
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (this.f76493a == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        io.reactivex.rxjava3.disposables.f fVar = this.f76495c.get();
        if (fVar == this || fVar == DisposableHelper.DISPOSED || !this.f76495c.compareAndSet(fVar, this)) {
            return;
        }
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.disposables.f fVar;
        if (this.f76494b == null && (fVar = this.f76495c.get()) != this && fVar != DisposableHelper.DISPOSED && this.f76495c.compareAndSet(fVar, this)) {
            this.f76494b = t9;
            countDown();
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        if (this.f76493a != null) {
            this.f76495c.get().dispose();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.f76493a = t9;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this.f76495c, d4);
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
            Throwable th = this.f76494b;
            if (th == null) {
                return this.f76493a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
