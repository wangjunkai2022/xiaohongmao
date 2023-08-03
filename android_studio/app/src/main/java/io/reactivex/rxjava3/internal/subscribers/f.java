package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
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
public final class f<T> extends CountDownLatch implements r<T>, Future<T>, org.reactivestreams.e {

    /* renamed from: a  reason: collision with root package name */
    T f81243a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f81244b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f81245c;

    public f() {
        super(1);
        this.f81245c = new AtomicReference<>();
    }

    @Override // org.reactivestreams.e
    public void cancel() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        org.reactivestreams.e eVar;
        SubscriptionHelper subscriptionHelper;
        do {
            eVar = this.f81245c.get();
            if (eVar == this || eVar == (subscriptionHelper = SubscriptionHelper.CANCELLED)) {
                return false;
            }
        } while (!this.f81245c.compareAndSet(eVar, subscriptionHelper));
        if (eVar != null) {
            eVar.cancel();
        }
        countDown();
        return true;
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.rxjava3.internal.util.c.b();
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f81244b;
            if (th == null) {
                return this.f81243a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f81245c.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81243a == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        org.reactivestreams.e eVar = this.f81245c.get();
        if (eVar == this || eVar == SubscriptionHelper.CANCELLED || !this.f81245c.compareAndSet(eVar, this)) {
            return;
        }
        countDown();
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        org.reactivestreams.e eVar;
        if (this.f81244b == null && (eVar = this.f81245c.get()) != this && eVar != SubscriptionHelper.CANCELLED && this.f81245c.compareAndSet(eVar, this)) {
            this.f81244b = t9;
            countDown();
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f81243a != null) {
            this.f81245c.get().cancel();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.f81243a = t9;
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        SubscriptionHelper.setOnce(this.f81245c, s9, Long.MAX_VALUE);
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
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
            Throwable th = this.f81244b;
            if (th == null) {
                return this.f81243a;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
