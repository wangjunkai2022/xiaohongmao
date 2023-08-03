package io.reactivex.rxjava3.internal.schedulers;

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
    static final String f81135a = "rx3.purge-enabled";

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f81136b;

    /* renamed from: c  reason: collision with root package name */
    static final String f81137c = "rx3.purge-period-seconds";

    /* renamed from: d  reason: collision with root package name */
    public static final int f81138d;

    /* renamed from: e  reason: collision with root package name */
    static final AtomicReference<ScheduledExecutorService> f81139e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    static final Map<ScheduledThreadPoolExecutor, Object> f81140f = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SchedulerPoolFactory.java */
    /* loaded from: classes4.dex */
    public static final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = new ArrayList(l.f81140f.keySet()).iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    l.f81140f.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    /* compiled from: SchedulerPoolFactory.java */
    /* loaded from: classes4.dex */
    static final class b implements q7.o<String, String> {
        b() {
        }

        @Override // q7.o
        /* renamed from: a */
        public String apply(String t9) {
            return System.getProperty(t9);
        }
    }

    static {
        b bVar = new b();
        boolean b10 = b(true, f81135a, true, true, bVar);
        f81136b = b10;
        f81138d = c(b10, f81137c, 1, 1, bVar);
        e();
    }

    private l() {
        throw new IllegalStateException("No instances!");
    }

    public static ScheduledExecutorService a(ThreadFactory factory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, factory);
        f(f81136b, newScheduledThreadPool);
        return newScheduledThreadPool;
    }

    static boolean b(boolean enabled, String key, boolean defaultNotFound, boolean defaultNotEnabled, q7.o<String, String> propertyAccessor) {
        if (enabled) {
            try {
                String apply = propertyAccessor.apply(key);
                return apply == null ? defaultNotFound : "true".equals(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                return defaultNotFound;
            }
        }
        return defaultNotEnabled;
    }

    static int c(boolean enabled, String key, int defaultNotFound, int defaultNotEnabled, q7.o<String, String> propertyAccessor) {
        if (enabled) {
            try {
                String apply = propertyAccessor.apply(key);
                return apply == null ? defaultNotFound : Integer.parseInt(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                return defaultNotFound;
            }
        }
        return defaultNotEnabled;
    }

    public static void d() {
        ScheduledExecutorService andSet = f81139e.getAndSet(null);
        if (andSet != null) {
            andSet.shutdownNow();
        }
        f81140f.clear();
    }

    public static void e() {
        g(f81136b);
    }

    static void f(boolean purgeEnabled, ScheduledExecutorService exec) {
        if (purgeEnabled && (exec instanceof ScheduledThreadPoolExecutor)) {
            f81140f.put((ScheduledThreadPoolExecutor) exec, exec);
        }
    }

    static void g(boolean purgeEnabled) {
        if (!purgeEnabled) {
            return;
        }
        while (true) {
            AtomicReference<ScheduledExecutorService> atomicReference = f81139e;
            ScheduledExecutorService scheduledExecutorService = atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge"));
            if (atomicReference.compareAndSet(scheduledExecutorService, newScheduledThreadPool)) {
                a aVar = new a();
                int i4 = f81138d;
                newScheduledThreadPool.scheduleAtFixedRate(aVar, i4, i4, TimeUnit.SECONDS);
                return;
            }
            newScheduledThreadPool.shutdownNow();
        }
    }
}
