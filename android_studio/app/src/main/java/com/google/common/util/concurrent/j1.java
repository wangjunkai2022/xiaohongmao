package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: TimeLimiter.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public interface j1 {
    void a(Runnable runnable, long j4, TimeUnit timeUnit) throws TimeoutException, InterruptedException;

    <T> T b(T t9, Class<T> cls, long j4, TimeUnit timeUnit);

    void c(Runnable runnable, long j4, TimeUnit timeUnit) throws TimeoutException;

    @CanIgnoreReturnValue
    <T> T d(Callable<T> callable, long j4, TimeUnit timeUnit) throws TimeoutException, ExecutionException;

    @CanIgnoreReturnValue
    <T> T e(Callable<T> callable, long j4, TimeUnit timeUnit) throws TimeoutException, InterruptedException, ExecutionException;
}
