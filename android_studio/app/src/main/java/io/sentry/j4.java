package io.sentry;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: SentryExecutorService.java */
/* loaded from: classes4.dex */
final class j4 implements t0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f83363a;

    @m8.k
    j4(@m8.g ScheduledExecutorService scheduledExecutorService) {
        this.f83363a = scheduledExecutorService;
    }

    @Override // io.sentry.t0
    public void a(long j4) {
        synchronized (this.f83363a) {
            if (!this.f83363a.isShutdown()) {
                this.f83363a.shutdown();
                try {
                    if (!this.f83363a.awaitTermination(j4, TimeUnit.MILLISECONDS)) {
                        this.f83363a.shutdownNow();
                    }
                } catch (InterruptedException unused) {
                    this.f83363a.shutdownNow();
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // io.sentry.t0
    @m8.g
    public Future<?> b(@m8.g Runnable runnable, long j4) {
        return this.f83363a.schedule(runnable, j4, TimeUnit.MILLISECONDS);
    }

    @Override // io.sentry.t0
    @m8.g
    public Future<?> submit(@m8.g Runnable runnable) {
        return this.f83363a.submit(runnable);
    }

    @Override // io.sentry.t0
    @m8.g
    public <T> Future<T> submit(@m8.g Callable<T> callable) {
        return this.f83363a.submit(callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j4() {
        this(Executors.newSingleThreadScheduledExecutor());
    }
}
