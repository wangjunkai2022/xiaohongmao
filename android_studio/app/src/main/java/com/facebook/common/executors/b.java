package com.facebook.common.executors;

import com.facebook.infer.annotation.Nullsafe;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ConstrainedExecutorService.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b extends AbstractExecutorService {

    /* renamed from: h  reason: collision with root package name */
    private static final Class<?> f10955h = b.class;

    /* renamed from: a  reason: collision with root package name */
    private final String f10956a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f10957b;

    /* renamed from: c  reason: collision with root package name */
    private volatile int f10958c;

    /* renamed from: d  reason: collision with root package name */
    private final BlockingQueue<Runnable> f10959d;

    /* renamed from: e  reason: collision with root package name */
    private final RunnableC0080b f10960e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicInteger f10961f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicInteger f10962g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConstrainedExecutorService.java */
    /* renamed from: com.facebook.common.executors.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0080b implements Runnable {
        private RunnableC0080b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Runnable runnable = (Runnable) b.this.f10959d.poll();
                if (runnable != null) {
                    runnable.run();
                } else {
                    p0.a.V(b.f10955h, "%s: Worker has nothing to run", b.this.f10956a);
                }
                int decrementAndGet = b.this.f10961f.decrementAndGet();
                if (!b.this.f10959d.isEmpty()) {
                    b.this.h();
                } else {
                    p0.a.W(b.f10955h, "%s: worker finished; %d workers left", b.this.f10956a, Integer.valueOf(decrementAndGet));
                }
            } catch (Throwable th) {
                int decrementAndGet2 = b.this.f10961f.decrementAndGet();
                if (!b.this.f10959d.isEmpty()) {
                    b.this.h();
                } else {
                    p0.a.W(b.f10955h, "%s: worker finished; %d workers left", b.this.f10956a, Integer.valueOf(decrementAndGet2));
                }
                throw th;
            }
        }
    }

    public b(String name, int maxConcurrency, Executor executor, BlockingQueue<Runnable> workQueue) {
        if (maxConcurrency > 0) {
            this.f10956a = name;
            this.f10957b = executor;
            this.f10958c = maxConcurrency;
            this.f10959d = workQueue;
            this.f10960e = new RunnableC0080b();
            this.f10961f = new AtomicInteger(0);
            this.f10962g = new AtomicInteger(0);
            return;
        }
        throw new IllegalArgumentException("max concurrency must be > 0");
    }

    public static b g(String name, int maxConcurrency, int queueSize, Executor executor) {
        return new b(name, maxConcurrency, executor, new LinkedBlockingQueue(queueSize));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        int i4 = this.f10961f.get();
        while (i4 < this.f10958c) {
            int i10 = i4 + 1;
            if (this.f10961f.compareAndSet(i4, i10)) {
                p0.a.X(f10955h, "%s: starting worker %d of %d", this.f10956a, Integer.valueOf(i10), Integer.valueOf(this.f10958c));
                this.f10957b.execute(this.f10960e);
                return;
            }
            p0.a.V(f10955h, "%s: race in startWorkerIfNeeded; retrying", this.f10956a);
            i4 = this.f10961f.get();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Objects.requireNonNull(runnable, "runnable parameter is null");
        if (this.f10959d.offer(runnable)) {
            int size = this.f10959d.size();
            int i4 = this.f10962g.get();
            if (size > i4 && this.f10962g.compareAndSet(i4, size)) {
                p0.a.W(f10955h, "%s: max pending work in queue = %d", this.f10956a, Integer.valueOf(size));
            }
            h();
            return;
        }
        throw new RejectedExecutionException(this.f10956a + " queue is full, size=" + this.f10959d.size());
    }

    public boolean f() {
        return this.f10959d.isEmpty() && this.f10961f.get() == 0;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
