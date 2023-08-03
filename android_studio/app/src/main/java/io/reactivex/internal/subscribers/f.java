package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FutureSubscriber.java */
/* loaded from: classes4.dex */
public final class f<T> extends CountDownLatch implements o<T>, Future<T>, org.reactivestreams.e {

    /* renamed from: a  reason: collision with root package name */
    T f75828a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f75829b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f75830c;

    public f() {
        super(1);
        this.f75830c = new AtomicReference<>();
    }

    @Override // org.reactivestreams.e
    public void cancel() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z9) {
        org.reactivestreams.e eVar;
        SubscriptionHelper subscriptionHelper;
        do {
            eVar = this.f75830c.get();
            if (eVar == this || eVar == (subscriptionHelper = SubscriptionHelper.CANCELLED)) {
                return false;
            }
        } while (!this.f75830c.compareAndSet(eVar, subscriptionHelper));
        if (eVar != null) {
            eVar.cancel();
        }
        countDown();
        return true;
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.internal.util.c.b();
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f75829b;
            if (th == null) {
                return this.f75828a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f75830c.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        org.reactivestreams.e eVar;
        if (this.f75828a == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            eVar = this.f75830c.get();
            if (eVar == this || eVar == SubscriptionHelper.CANCELLED) {
                return;
            }
        } while (!this.f75830c.compareAndSet(eVar, this));
        countDown();
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        org.reactivestreams.e eVar;
        do {
            eVar = this.f75830c.get();
            if (eVar != this && eVar != SubscriptionHelper.CANCELLED) {
                this.f75829b = th;
            } else {
                io.reactivex.plugins.a.Y(th);
                return;
            }
        } while (!this.f75830c.compareAndSet(eVar, this));
        countDown();
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f75828a != null) {
            this.f75830c.get().cancel();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.f75828a = t9;
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        SubscriptionHelper.setOnce(this.f75830c, eVar, Long.MAX_VALUE);
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
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
            Throwable th = this.f75829b;
            if (th == null) {
                return this.f75828a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
