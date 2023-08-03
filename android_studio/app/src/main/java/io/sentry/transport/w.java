package io.sentry.transport;

import io.sentry.SentryLevel;
import io.sentry.o0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: QueuedThreadPoolExecutor.java */
/* loaded from: classes4.dex */
final class w extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    private final int f84047a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final o0 f84048b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final a0 f84049c;

    /* compiled from: QueuedThreadPoolExecutor.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements Future<T> {
        a() {
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z9) {
            return true;
        }

        @Override // java.util.concurrent.Future
        public T get() {
            throw new CancellationException();
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return true;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return true;
        }

        @Override // java.util.concurrent.Future
        public T get(long j4, @m8.g TimeUnit timeUnit) {
            throw new CancellationException();
        }
    }

    public w(int i4, int i10, @m8.g ThreadFactory threadFactory, @m8.g RejectedExecutionHandler rejectedExecutionHandler, @m8.g o0 o0Var) {
        super(i4, i4, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler);
        this.f84049c = new a0();
        this.f84047a = i10;
        this.f84048b = o0Var;
    }

    private boolean a() {
        return this.f84049c.b() < this.f84047a;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(@m8.g Runnable runnable, @m8.h Throwable th) {
        try {
            super.afterExecute(runnable, th);
        } finally {
            this.f84049c.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(long j4) {
        try {
            this.f84049c.e(j4, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e4) {
            this.f84048b.b(SentryLevel.ERROR, "Failed to wait till idle", e4);
            Thread.currentThread().interrupt();
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(@m8.g Runnable runnable) {
        if (a()) {
            this.f84049c.c();
            return super.submit(runnable);
        }
        this.f84048b.c(SentryLevel.WARNING, "Submit cancelled", new Object[0]);
        return new a();
    }
}
