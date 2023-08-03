package io.reactivex.internal.schedulers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SchedulerPoolFactory.java */
/* loaded from: classes4.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    static final String f75720a = "rx2.purge-enabled";

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f75721b;

    /* renamed from: c  reason: collision with root package name */
    static final String f75722c = "rx2.purge-period-seconds";

    /* renamed from: d  reason: collision with root package name */
    public static final int f75723d;

    /* renamed from: e  reason: collision with root package name */
    static final AtomicReference<ScheduledExecutorService> f75724e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    static final Map<ScheduledThreadPoolExecutor, Object> f75725f = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SchedulerPoolFactory.java */
    /* loaded from: classes4.dex */
    public static final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = new ArrayList(l.f75725f.keySet()).iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    l.f75725f.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    /* compiled from: SchedulerPoolFactory.java */
    /* loaded from: classes4.dex */
    static final class b implements n7.o<String, String> {
        b() {
        }

        @Override // n7.o
        /* renamed from: a */
        public String apply(String str) throws Exception {
            return System.getProperty(str);
        }
    }

    static {
        b bVar = new b();
        boolean b10 = b(true, f75720a, true, true, bVar);
        f75721b = b10;
        f75723d = c(b10, f75722c, 1, 1, bVar);
        e();
    }

    private l() {
        throw new IllegalStateException("No instances!");
    }

    public static ScheduledExecutorService a(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        f(f75721b, newScheduledThreadPool);
        return newScheduledThreadPool;
    }

    static boolean b(boolean z9, String str, boolean z10, boolean z11, n7.o<String, String> oVar) {
        if (z9) {
            try {
                String apply = oVar.apply(str);
                return apply == null ? z10 : "true".equals(apply);
            } catch (Throwable unused) {
                return z10;
            }
        }
        return z11;
    }

    static int c(boolean z9, String str, int i4, int i10, n7.o<String, String> oVar) {
        if (z9) {
            try {
                String apply = oVar.apply(str);
                return apply == null ? i4 : Integer.parseInt(apply);
            } catch (Throwable unused) {
                return i4;
            }
        }
        return i10;
    }

    public static void d() {
        ScheduledExecutorService andSet = f75724e.getAndSet(null);
        if (andSet != null) {
            andSet.shutdownNow();
        }
        f75725f.clear();
    }

    public static void e() {
        g(f75721b);
    }

    static void f(boolean z9, ScheduledExecutorService scheduledExecutorService) {
        if (z9 && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
            f75725f.put((ScheduledThreadPoolExecutor) scheduledExecutorService, scheduledExecutorService);
        }
    }

    static void g(boolean z9) {
        if (!z9) {
            return;
        }
        while (true) {
            AtomicReference<ScheduledExecutorService> atomicReference = f75724e;
            ScheduledExecutorService scheduledExecutorService = atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge"));
            if (atomicReference.compareAndSet(scheduledExecutorService, newScheduledThreadPool)) {
                a aVar = new a();
                int i4 = f75723d;
                newScheduledThreadPool.scheduleAtFixedRate(aVar, i4, i4, TimeUnit.SECONDS);
                return;
            }
            newScheduledThreadPool.shutdownNow();
        }
    }
}
