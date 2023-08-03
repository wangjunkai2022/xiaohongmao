package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: IoScheduler.java */
/* loaded from: classes4.dex */
public final class g extends o0 {

    /* renamed from: d  reason: collision with root package name */
    private static final String f81105d = "RxCachedThreadScheduler";

    /* renamed from: e  reason: collision with root package name */
    static final RxThreadFactory f81106e;

    /* renamed from: f  reason: collision with root package name */
    private static final String f81107f = "RxCachedWorkerPoolEvictor";

    /* renamed from: g  reason: collision with root package name */
    static final RxThreadFactory f81108g;

    /* renamed from: i  reason: collision with root package name */
    public static final long f81110i = 60;

    /* renamed from: l  reason: collision with root package name */
    static final c f81113l;

    /* renamed from: m  reason: collision with root package name */
    private static final String f81114m = "rx3.io-priority";

    /* renamed from: n  reason: collision with root package name */
    static final a f81115n;

    /* renamed from: b  reason: collision with root package name */
    final ThreadFactory f81116b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<a> f81117c;

    /* renamed from: k  reason: collision with root package name */
    private static final TimeUnit f81112k = TimeUnit.SECONDS;

    /* renamed from: h  reason: collision with root package name */
    private static final String f81109h = "rx3.io-keep-alive-time";

    /* renamed from: j  reason: collision with root package name */
    private static final long f81111j = Long.getLong(f81109h, 60).longValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IoScheduler.java */
    /* loaded from: classes4.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final long f81118a;

        /* renamed from: b  reason: collision with root package name */
        private final ConcurrentLinkedQueue<c> f81119b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f81120c;

        /* renamed from: d  reason: collision with root package name */
        private final ScheduledExecutorService f81121d;

        /* renamed from: e  reason: collision with root package name */
        private final Future<?> f81122e;

        /* renamed from: f  reason: collision with root package name */
        private final ThreadFactory f81123f;

        a(long keepAliveTime, TimeUnit unit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFuture;
            long nanos = unit != null ? unit.toNanos(keepAliveTime) : 0L;
            this.f81118a = nanos;
            this.f81119b = new ConcurrentLinkedQueue<>();
            this.f81120c = new io.reactivex.rxjava3.disposables.c();
            this.f81123f = threadFactory;
            ScheduledExecutorService scheduledExecutorService = null;
            if (unit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, g.f81108g);
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.f81121d = scheduledExecutorService;
            this.f81122e = scheduledFuture;
        }

        static void a(ConcurrentLinkedQueue<c> expiringWorkerQueue, io.reactivex.rxjava3.disposables.c allWorkers) {
            if (expiringWorkerQueue.isEmpty()) {
                return;
            }
            long c10 = c();
            Iterator<c> it = expiringWorkerQueue.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next.i() > c10) {
                    return;
                }
                if (expiringWorkerQueue.remove(next)) {
                    allWorkers.a(next);
                }
            }
        }

        static long c() {
            return System.nanoTime();
        }

        c b() {
            if (this.f81120c.isDisposed()) {
                return g.f81113l;
            }
            while (!this.f81119b.isEmpty()) {
                c poll = this.f81119b.poll();
                if (poll != null) {
                    return poll;
                }
            }
            c cVar = new c(this.f81123f);
            this.f81120c.b(cVar);
            return cVar;
        }

        void d(c threadWorker) {
            threadWorker.j(c() + this.f81118a);
            this.f81119b.offer(threadWorker);
        }

        void e() {
            this.f81120c.dispose();
            Future<?> future = this.f81122e;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f81121d;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            a(this.f81119b, this.f81120c);
        }
    }

    /* compiled from: IoScheduler.java */
    /* loaded from: classes4.dex */
    static final class b extends o0.c {

        /* renamed from: b  reason: collision with root package name */
        private final a f81125b;

        /* renamed from: c  reason: collision with root package name */
        private final c f81126c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f81127d = new AtomicBoolean();

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.disposables.c f81124a = new io.reactivex.rxjava3.disposables.c();

        b(a pool) {
            this.f81125b = pool;
            this.f81126c = pool.b();
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f c(@p7.e Runnable action, long delayTime, @p7.e TimeUnit unit) {
            if (this.f81124a.isDisposed()) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f81126c.e(action, delayTime, unit, this.f81124a);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f81127d.compareAndSet(false, true)) {
                this.f81124a.dispose();
                this.f81125b.d(this.f81126c);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f81127d.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IoScheduler.java */
    /* loaded from: classes4.dex */
    public static final class c extends i {

        /* renamed from: c  reason: collision with root package name */
        long f81128c;

        c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f81128c = 0L;
        }

        public long i() {
            return this.f81128c;
        }

        public void j(long expirationTime) {
            this.f81128c = expirationTime;
        }
    }

    static {
        c cVar = new c(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        f81113l = cVar;
        cVar.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger(f81114m, 5).intValue()));
        RxThreadFactory rxThreadFactory = new RxThreadFactory(f81105d, max);
        f81106e = rxThreadFactory;
        f81108g = new RxThreadFactory(f81107f, max);
        a aVar = new a(0L, null, rxThreadFactory);
        f81115n = aVar;
        aVar.e();
    }

    public g() {
        this(f81106e);
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public o0.c d() {
        return new b(this.f81117c.get());
    }

    @Override // io.reactivex.rxjava3.core.o0
    public void i() {
        AtomicReference<a> atomicReference = this.f81117c;
        a aVar = f81115n;
        a andSet = atomicReference.getAndSet(aVar);
        if (andSet != aVar) {
            andSet.e();
        }
    }

    @Override // io.reactivex.rxjava3.core.o0
    public void j() {
        a aVar = new a(f81111j, f81112k, this.f81116b);
        if (this.f81117c.compareAndSet(f81115n, aVar)) {
            return;
        }
        aVar.e();
    }

    public int l() {
        return this.f81117c.get().f81120c.g();
    }

    public g(ThreadFactory threadFactory) {
        this.f81116b = threadFactory;
        this.f81117c = new AtomicReference<>(f81115n);
        j();
    }
}
