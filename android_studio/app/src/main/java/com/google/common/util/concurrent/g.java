package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractListeningExecutorService.java */
@CanIgnoreReturnValue
@h3.c
@h3.a
/* loaded from: classes2.dex */
public abstract class g extends AbstractExecutorService implements u0 {
    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t9) {
        return l1.Z(runnable, t9);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return l1.a0(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.google.common.util.concurrent.u0
    public /* bridge */ /* synthetic */ Future submit(Runnable runnable, @NullableDecl Object obj) {
        return submit(runnable, (Runnable) obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.google.common.util.concurrent.u0
    public q0<?> submit(Runnable runnable) {
        return (q0) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.google.common.util.concurrent.u0
    public <T> q0<T> submit(Runnable runnable, @NullableDecl T t9) {
        return (q0) super.submit(runnable, (Runnable) t9);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.google.common.util.concurrent.u0
    public <T> q0<T> submit(Callable<T> callable) {
        return (q0) super.submit((Callable) callable);
    }
}
