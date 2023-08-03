package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: ListeningScheduledExecutorService.java */
@h3.c
/* loaded from: classes2.dex */
public interface v0 extends ScheduledExecutorService, u0 {
    @Override // java.util.concurrent.ScheduledExecutorService
    s0<?> schedule(Runnable runnable, long j4, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    <V> s0<V> schedule(Callable<V> callable, long j4, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    s0<?> scheduleAtFixedRate(Runnable runnable, long j4, long j10, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    s0<?> scheduleWithFixedDelay(Runnable runnable, long j4, long j10, TimeUnit timeUnit);
}
