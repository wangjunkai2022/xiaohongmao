package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FutureObserver.java */
/* loaded from: classes3.dex */
public final class h<T> extends CountDownLatch implements g0<T>, Future<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    T f71228a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f71229b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.c> f71230c;

    public h() {
        super(1);
        this.f71230c = new AtomicReference<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z9) {
        io.reactivex.disposables.c cVar;
        DisposableHelper disposableHelper;
        do {
            cVar = this.f71230c.get();
            if (cVar == this || cVar == (disposableHelper = DisposableHelper.DISPOSED)) {
                return false;
            }
        } while (!this.f71230c.compareAndSet(cVar, disposableHelper));
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
            Throwable th = this.f71229b;
            if (th == null) {
                return this.f71228a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return DisposableHelper.isDisposed(this.f71230c.get());
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        io.reactivex.disposables.c cVar;
        if (this.f71228a == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            cVar = this.f71230c.get();
            if (cVar == this || cVar == DisposableHelper.DISPOSED) {
                return;
            }
        } while (!this.f71230c.compareAndSet(cVar, this));
        countDown();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.disposables.c cVar;
        if (this.f71229b == null) {
            this.f71229b = th;
            do {
                cVar = this.f71230c.get();
                if (cVar == this || cVar == DisposableHelper.DISPOSED) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                }
            } while (!this.f71230c.compareAndSet(cVar, this));
            countDown();
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        if (this.f71228a != null) {
            this.f71230c.get().dispose();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.f71228a = t9;
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        DisposableHelper.setOnce(this.f71230c, cVar);
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
            Throwable th = this.f71229b;
            if (th == null) {
                return this.f71228a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
