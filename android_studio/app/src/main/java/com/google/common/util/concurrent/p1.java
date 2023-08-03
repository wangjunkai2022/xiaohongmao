package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: WrappingScheduledExecutorService.java */
@CanIgnoreReturnValue
@h3.c
/* loaded from: classes2.dex */
abstract class p1 extends o1 implements ScheduledExecutorService {

    /* renamed from: b  reason: collision with root package name */
    final ScheduledExecutorService f35320b;

    /* JADX INFO: Access modifiers changed from: protected */
    public p1(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f35320b = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> schedule(Runnable runnable, long j4, TimeUnit timeUnit) {
        return this.f35320b.schedule(a(runnable), j4, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j4, long j10, TimeUnit timeUnit) {
        return this.f35320b.scheduleAtFixedRate(a(runnable), j4, j10, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j4, long j10, TimeUnit timeUnit) {
        return this.f35320b.scheduleWithFixedDelay(a(runnable), j4, j10, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final <V> ScheduledFuture<V> schedule(Callable<V> callable, long j4, TimeUnit timeUnit) {
        return this.f35320b.schedule(b(callable), j4, timeUnit);
    }
}
