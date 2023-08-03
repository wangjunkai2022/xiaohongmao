package io.reactivex.internal.schedulers;

import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
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
public final class g extends h0 {

    /* renamed from: e  reason: collision with root package name */
    private static final String f75688e = "RxCachedThreadScheduler";

    /* renamed from: f  reason: collision with root package name */
    static final RxThreadFactory f75689f;

    /* renamed from: g  reason: collision with root package name */
    private static final String f75690g = "RxCachedWorkerPoolEvictor";

    /* renamed from: h  reason: collision with root package name */
    static final RxThreadFactory f75691h;

    /* renamed from: j  reason: collision with root package name */
    public static final long f75693j = 60;

    /* renamed from: m  reason: collision with root package name */
    static final c f75696m;

    /* renamed from: n  reason: collision with root package name */
    private static final String f75697n = "rx2.io-priority";

    /* renamed from: o  reason: collision with root package name */
    private static final String f75698o = "rx2.io-scheduled-release";

    /* renamed from: p  reason: collision with root package name */
    static boolean f75699p;

    /* renamed from: q  reason: collision with root package name */
    static final a f75700q;

    /* renamed from: c  reason: collision with root package name */
    final ThreadFactory f75701c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<a> f75702d;

    /* renamed from: l  reason: collision with root package name */
    private static final TimeUnit f75695l = TimeUnit.SECONDS;

    /* renamed from: i  reason: collision with root package name */
    private static final String f75692i = "rx2.io-keep-alive-time";

    /* renamed from: k  reason: collision with root package name */
    private static final long f75694k = Long.getLong(f75692i, 60).longValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IoScheduler.java */
    /* loaded from: classes4.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final long f75703a;

        /* renamed from: b  reason: collision with root package name */
        private final ConcurrentLinkedQueue<c> f75704b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.b f75705c;

        /* renamed from: d  reason: collision with root package name */
        private final ScheduledExecutorService f75706d;

        /* renamed from: e  reason: collision with root package name */
        private final Future<?> f75707e;

        /* renamed from: f  reason: collision with root package name */
        private final ThreadFactory f75708f;

        a(long j4, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFuture;
            long nanos = timeUnit != null ? timeUnit.toNanos(j4) : 0L;
            this.f75703a = nanos;
            this.f75704b = new ConcurrentLinkedQueue<>();
            this.f75705c = new io.reactivex.disposables.b();
            this.f75708f = threadFactory;
            ScheduledExecutorService scheduledExecutorService = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, g.f75691h);
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.f75706d = scheduledExecutorService;
            this.f75707e = scheduledFuture;
        }

        void a() {
            if (this.f75704b.isEmpty()) {
                return;
            }
            long c10 = c();
            Iterator<c> it = this.f75704b.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next.i() > c10) {
                    return;
                }
                if (this.f75704b.remove(next)) {
                    this.f75705c.a(next);
                }
            }
        }

        c b() {
            if (this.f75705c.isDisposed()) {
                return g.f75696m;
            }
            while (!this.f75704b.isEmpty()) {
                c poll = this.f75704b.poll();
                if (poll != null) {
                    return poll;
                }
            }
            c cVar = new c(this.f75708f);
            this.f75705c.b(cVar);
            return cVar;
        }

        long c() {
            return System.nanoTime();
        }

        void d(c cVar) {
            cVar.j(c() + this.f75703a);
            this.f75704b.offer(cVar);
        }

        void e() {
            this.f75705c.dispose();
            Future<?> future = this.f75707e;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f75706d;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            a();
        }
    }

    /* compiled from: IoScheduler.java */
    /* loaded from: classes4.dex */
    static final class b extends h0.c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final a f75710b;

        /* renamed from: c  reason: collision with root package name */
        private final c f75711c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f75712d = new AtomicBoolean();

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.disposables.b f75709a = new io.reactivex.disposables.b();

        b(a aVar) {
            this.f75710b = aVar;
            this.f75711c = aVar.b();
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c c(@m7.e Runnable runnable, long j4, @m7.e TimeUnit timeUnit) {
            if (this.f75709a.isDisposed()) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f75711c.e(runnable, j4, timeUnit, this.f75709a);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f75712d.compareAndSet(false, true)) {
                this.f75709a.dispose();
                if (g.f75699p) {
                    this.f75711c.e(this, 0L, TimeUnit.NANOSECONDS, null);
                } else {
                    this.f75710b.d(this.f75711c);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75712d.get();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f75710b.d(this.f75711c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IoScheduler.java */
    /* loaded from: classes4.dex */
    public static final class c extends i {

        /* renamed from: c  reason: collision with root package name */
        private long f75713c;

        c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f75713c = 0L;
        }

        public long i() {
            return this.f75713c;
        }

        public void j(long j4) {
            this.f75713c = j4;
        }
    }

    static {
        c cVar = new c(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        f75696m = cVar;
        cVar.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger(f75697n, 5).intValue()));
        RxThreadFactory rxThreadFactory = new RxThreadFactory(f75688e, max);
        f75689f = rxThreadFactory;
        f75691h = new RxThreadFactory(f75690g, max);
        f75699p = Boolean.getBoolean(f75698o);
        a aVar = new a(0L, null, rxThreadFactory);
        f75700q = aVar;
        aVar.e();
    }

    public g() {
        this(f75689f);
    }

    @Override // io.reactivex.h0
    @m7.e
    public h0.c d() {
        return new b(this.f75702d.get());
    }

    @Override // io.reactivex.h0
    public void i() {
        a aVar;
        a aVar2;
        do {
            aVar = this.f75702d.get();
            aVar2 = f75700q;
            if (aVar == aVar2) {
                return;
            }
        } while (!this.f75702d.compareAndSet(aVar, aVar2));
        aVar.e();
    }

    @Override // io.reactivex.h0
    public void j() {
        a aVar = new a(f75694k, f75695l, this.f75701c);
        if (this.f75702d.compareAndSet(f75700q, aVar)) {
            return;
        }
        aVar.e();
    }

    public int l() {
        return this.f75702d.get().f75705c.g();
    }

    public g(ThreadFactory threadFactory) {
        this.f75701c = threadFactory;
        this.f75702d = new AtomicReference<>(f75700q);
        j();
    }
}
