package com.facebook.common.executors;

import android.os.Handler;
import com.facebook.infer.annotation.Nullsafe;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: HandlerExecutorServiceImpl.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class e extends AbstractExecutorService implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f10964a;

    public e(Handler handler) {
        this.f10964a = handler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    /* renamed from: a */
    public <T> f<T> newTaskFor(Runnable runnable, @r7.h T value) {
        return new f<>(this.f10964a, runnable, value);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    /* renamed from: b */
    public <T> f<T> newTaskFor(Callable<T> callable) {
        return new f<>(this.f10964a, callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* renamed from: c */
    public ScheduledFuture<?> submit(Runnable task) {
        return submit(task, null);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* renamed from: d */
    public <T> ScheduledFuture<T> submit(Runnable task, @r7.h T result) {
        Objects.requireNonNull(task);
        f<T> newTaskFor = newTaskFor(task, result);
        execute(newTaskFor);
        return newTaskFor;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* renamed from: e */
    public <T> ScheduledFuture<T> submit(Callable<T> task) {
        Objects.requireNonNull(task);
        f<T> newTaskFor = newTaskFor(task);
        execute(newTaskFor);
        return newTaskFor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        this.f10964a.post(command);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // com.facebook.common.executors.d
    public void k() {
        this.f10964a.getLooper().quit();
    }

    @Override // com.facebook.common.executors.d
    public boolean o0() {
        return Thread.currentThread() == this.f10964a.getLooper().getThread();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> schedule(Runnable command, long delay, TimeUnit unit) {
        f newTaskFor = newTaskFor(command, null);
        this.f10964a.postDelayed(newTaskFor, unit.toMillis(delay));
        return newTaskFor;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleAtFixedRate(Runnable command, long initialDelay, long period, TimeUnit unit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable command, long initialDelay, long delay, TimeUnit unit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public <V> ScheduledFuture<V> schedule(Callable<V> callable, long delay, TimeUnit unit) {
        f newTaskFor = newTaskFor(callable);
        this.f10964a.postDelayed(newTaskFor, unit.toMillis(delay));
        return newTaskFor;
    }
}
