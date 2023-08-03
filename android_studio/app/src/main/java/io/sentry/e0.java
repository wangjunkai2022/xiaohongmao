package io.sentry;

import java.net.InetAddress;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HostnameCache.java */
/* loaded from: classes4.dex */
public final class e0 {

    /* renamed from: g  reason: collision with root package name */
    private static final long f83118g = TimeUnit.HOURS.toMillis(5);

    /* renamed from: h  reason: collision with root package name */
    private static final long f83119h = TimeUnit.SECONDS.toMillis(1);
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private static e0 f83120i;

    /* renamed from: a  reason: collision with root package name */
    private final long f83121a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private volatile String f83122b;

    /* renamed from: c  reason: collision with root package name */
    private volatile long f83123c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f83124d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Callable<InetAddress> f83125e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final ExecutorService f83126f;

    /* compiled from: HostnameCache.java */
    /* loaded from: classes4.dex */
    private static final class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private int f83127a;

        private b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        @m8.g
        public Thread newThread(@m8.g Runnable runnable) {
            StringBuilder sb = new StringBuilder();
            sb.append("SentryHostnameCache-");
            int i4 = this.f83127a;
            this.f83127a = i4 + 1;
            sb.append(i4);
            Thread thread = new Thread(runnable, sb.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    private e0() {
        this(f83118g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public static e0 e() {
        if (f83120i == null) {
            f83120i = new e0();
        }
        return f83120i;
    }

    private void f() {
        this.f83123c = System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void i() throws Exception {
        try {
            this.f83122b = this.f83125e.call().getCanonicalHostName();
            this.f83123c = System.currentTimeMillis() + this.f83121a;
            this.f83124d.set(false);
            return null;
        } catch (Throwable th) {
            this.f83124d.set(false);
            throw th;
        }
    }

    private void j() {
        try {
            this.f83126f.submit(new Callable() { // from class: io.sentry.c0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Void i4;
                    i4 = e0.this.i();
                    return i4;
                }
            }).get(f83119h, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            f();
        } catch (RuntimeException | ExecutionException | TimeoutException unused2) {
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f83126f.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public String d() {
        if (this.f83123c < System.currentTimeMillis() && this.f83124d.compareAndSet(false, true)) {
            j();
        }
        return this.f83122b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.f83126f.isShutdown();
    }

    e0(long j4) {
        this(j4, d0.f83108a);
    }

    e0(long j4, @m8.g Callable<InetAddress> callable) {
        this.f83124d = new AtomicBoolean(false);
        this.f83126f = Executors.newSingleThreadExecutor(new b());
        this.f83121a = j4;
        this.f83125e = (Callable) io.sentry.util.l.c(callable, "getLocalhost is required");
        j();
    }
}
