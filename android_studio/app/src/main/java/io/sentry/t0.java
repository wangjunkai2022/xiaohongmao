package io.sentry;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import m8.a;

/* compiled from: ISentryExecutorService.java */
@a.c
/* loaded from: classes4.dex */
public interface t0 {
    void a(long j4);

    @m8.g
    Future<?> b(@m8.g Runnable runnable, long j4);

    @m8.g
    Future<?> submit(@m8.g Runnable runnable);

    @m8.g
    <T> Future<T> submit(@m8.g Callable<T> callable);
}
