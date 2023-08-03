package com.facebook.common.executors;

import android.os.Handler;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: ScheduledFutureImpl.java */
/* loaded from: classes.dex */
public class f<V> implements RunnableFuture<V>, ScheduledFuture<V> {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f10965a;

    /* renamed from: b  reason: collision with root package name */
    private final FutureTask<V> f10966b;

    public f(Handler handler, Callable<V> callable) {
        this.f10965a = handler;
        this.f10966b = new FutureTask<>(callable);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(Delayed other) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        return this.f10966b.cancel(mayInterruptIfRunning);
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        return this.f10966b.get();
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit unit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f10966b.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f10966b.isDone();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        this.f10966b.run();
    }

    @Override // java.util.concurrent.Future
    public V get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f10966b.get(timeout, unit);
    }

    public f(Handler handler, Runnable runnable, @r7.h V result) {
        this.f10965a = handler;
        this.f10966b = new FutureTask<>(runnable, result);
    }
}
