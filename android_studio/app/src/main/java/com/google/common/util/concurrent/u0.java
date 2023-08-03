package com.google.common.util.concurrent;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: ListeningExecutorService.java */
@h3.c
/* loaded from: classes2.dex */
public interface u0 extends ExecutorService {
    @Override // java.util.concurrent.ExecutorService
    <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException;

    @Override // java.util.concurrent.ExecutorService
    <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j4, TimeUnit timeUnit) throws InterruptedException;

    @Override // java.util.concurrent.ExecutorService, com.google.common.util.concurrent.u0
    q0<?> submit(Runnable runnable);

    @Override // java.util.concurrent.ExecutorService, com.google.common.util.concurrent.u0
    <T> q0<T> submit(Runnable runnable, T t9);

    @Override // java.util.concurrent.ExecutorService, com.google.common.util.concurrent.u0
    <T> q0<T> submit(Callable<T> callable);
}
