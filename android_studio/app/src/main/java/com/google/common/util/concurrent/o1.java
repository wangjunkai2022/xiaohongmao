package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: WrappingExecutorService.java */
@CanIgnoreReturnValue
@h3.c
/* loaded from: classes2.dex */
abstract class o1 implements ExecutorService {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f35303a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WrappingExecutorService.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Callable f35304a;

        a(Callable callable) {
            this.f35304a = callable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f35304a.call();
            } catch (Exception e4) {
                com.google.common.base.k0.w(e4);
                throw new RuntimeException(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o1(ExecutorService executorService) {
        this.f35303a = (ExecutorService) com.google.common.base.a0.E(executorService);
    }

    private <T> ImmutableList<Callable<T>> c(Collection<? extends Callable<T>> collection) {
        ImmutableList.a builder = ImmutableList.builder();
        for (Callable<T> callable : collection) {
            builder.g(b(callable));
        }
        return builder.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Runnable a(Runnable runnable) {
        return new a(b(Executors.callable(runnable, null)));
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j4, TimeUnit timeUnit) throws InterruptedException {
        return this.f35303a.awaitTermination(j4, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract <T> Callable<T> b(Callable<T> callable);

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f35303a.execute(a(runnable));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f35303a.invokeAll(c(collection));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f35303a.invokeAny(c(collection));
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f35303a.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f35303a.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f35303a.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        return this.f35303a.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Callable<T> callable) {
        return this.f35303a.submit(b((Callable) com.google.common.base.a0.E(callable)));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j4, TimeUnit timeUnit) throws InterruptedException {
        return this.f35303a.invokeAll(c(collection), j4, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f35303a.invokeAny(c(collection), j4, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future<?> submit(Runnable runnable) {
        return this.f35303a.submit(a(runnable));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Runnable runnable, T t9) {
        return this.f35303a.submit(a(runnable), t9);
    }
}
