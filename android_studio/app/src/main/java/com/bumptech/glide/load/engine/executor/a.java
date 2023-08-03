package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: GlideExecutor.java */
/* loaded from: classes.dex */
public final class a implements ExecutorService {

    /* renamed from: b  reason: collision with root package name */
    private static final String f8753b = "source";

    /* renamed from: c  reason: collision with root package name */
    private static final String f8754c = "disk-cache";

    /* renamed from: d  reason: collision with root package name */
    private static final int f8755d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final String f8756e = "GlideExecutor";

    /* renamed from: f  reason: collision with root package name */
    private static final String f8757f = "source-unlimited";

    /* renamed from: g  reason: collision with root package name */
    private static final String f8758g = "animation";

    /* renamed from: h  reason: collision with root package name */
    private static final long f8759h = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: i  reason: collision with root package name */
    private static final int f8760i = 4;

    /* renamed from: j  reason: collision with root package name */
    private static volatile int f8761j;

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f8762a;

    /* compiled from: GlideExecutor.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: h  reason: collision with root package name */
        public static final long f8763h = 0;

        /* renamed from: a  reason: collision with root package name */
        private final boolean f8764a;

        /* renamed from: b  reason: collision with root package name */
        private int f8765b;

        /* renamed from: c  reason: collision with root package name */
        private int f8766c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private final ThreadFactory f8767d = new c();
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        private e f8768e = e.f8783d;

        /* renamed from: f  reason: collision with root package name */
        private String f8769f;

        /* renamed from: g  reason: collision with root package name */
        private long f8770g;

        b(boolean z9) {
            this.f8764a = z9;
        }

        public a a() {
            if (!TextUtils.isEmpty(this.f8769f)) {
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f8765b, this.f8766c, this.f8770g, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new d(this.f8767d, this.f8769f, this.f8768e, this.f8764a));
                if (this.f8770g != 0) {
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
                return new a(threadPoolExecutor);
            }
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f8769f);
        }

        public b b(String str) {
            this.f8769f = str;
            return this;
        }

        public b c(@IntRange(from = 1) int i4) {
            this.f8765b = i4;
            this.f8766c = i4;
            return this;
        }

        public b d(long j4) {
            this.f8770g = j4;
            return this;
        }

        public b e(@NonNull e eVar) {
            this.f8768e = eVar;
            return this;
        }
    }

    /* compiled from: GlideExecutor.java */
    /* loaded from: classes.dex */
    private static final class c implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private static final int f8771a = 9;

        /* compiled from: GlideExecutor.java */
        /* renamed from: com.bumptech.glide.load.engine.executor.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0050a extends Thread {
            C0050a(Runnable runnable) {
                super(runnable);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                super.run();
            }
        }

        private c() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new C0050a(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GlideExecutor.java */
    /* loaded from: classes.dex */
    public static final class d implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final ThreadFactory f8773a;

        /* renamed from: b  reason: collision with root package name */
        private final String f8774b;

        /* renamed from: c  reason: collision with root package name */
        final e f8775c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f8776d;

        /* renamed from: e  reason: collision with root package name */
        private final AtomicInteger f8777e = new AtomicInteger();

        /* compiled from: GlideExecutor.java */
        /* renamed from: com.bumptech.glide.load.engine.executor.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0051a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f8778a;

            RunnableC0051a(Runnable runnable) {
                this.f8778a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f8776d) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    this.f8778a.run();
                } catch (Throwable th) {
                    d.this.f8775c.a(th);
                }
            }
        }

        d(ThreadFactory threadFactory, String str, e eVar, boolean z9) {
            this.f8773a = threadFactory;
            this.f8774b = str;
            this.f8775c = eVar;
            this.f8776d = z9;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            Thread newThread = this.f8773a.newThread(new RunnableC0051a(runnable));
            newThread.setName("glide-" + this.f8774b + "-thread-" + this.f8777e.getAndIncrement());
            return newThread;
        }
    }

    /* compiled from: GlideExecutor.java */
    /* loaded from: classes.dex */
    public interface e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f8780a = new C0052a();

        /* renamed from: b  reason: collision with root package name */
        public static final e f8781b;

        /* renamed from: c  reason: collision with root package name */
        public static final e f8782c;

        /* renamed from: d  reason: collision with root package name */
        public static final e f8783d;

        /* compiled from: GlideExecutor.java */
        /* renamed from: com.bumptech.glide.load.engine.executor.a$e$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0052a implements e {
            C0052a() {
            }

            @Override // com.bumptech.glide.load.engine.executor.a.e
            public void a(Throwable th) {
            }
        }

        /* compiled from: GlideExecutor.java */
        /* loaded from: classes.dex */
        class b implements e {
            b() {
            }

            @Override // com.bumptech.glide.load.engine.executor.a.e
            public void a(Throwable th) {
                if (th == null || !Log.isLoggable(a.f8756e, 6)) {
                    return;
                }
                Log.e(a.f8756e, "Request threw uncaught throwable", th);
            }
        }

        /* compiled from: GlideExecutor.java */
        /* loaded from: classes.dex */
        class c implements e {
            c() {
            }

            @Override // com.bumptech.glide.load.engine.executor.a.e
            public void a(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        }

        static {
            b bVar = new b();
            f8781b = bVar;
            f8782c = new c();
            f8783d = bVar;
        }

        void a(Throwable th);
    }

    @VisibleForTesting
    a(ExecutorService executorService) {
        this.f8762a = executorService;
    }

    public static int a() {
        if (f8761j == 0) {
            f8761j = Math.min(4, com.bumptech.glide.load.engine.executor.b.a());
        }
        return f8761j;
    }

    public static b b() {
        return new b(true).c(a() >= 4 ? 2 : 1).b(f8758g);
    }

    public static a c() {
        return b().a();
    }

    @Deprecated
    public static a d(int i4, e eVar) {
        return b().c(i4).e(eVar).a();
    }

    public static b e() {
        return new b(true).c(1).b(f8754c);
    }

    public static a f() {
        return e().a();
    }

    @Deprecated
    public static a g(int i4, String str, e eVar) {
        return e().c(i4).b(str).e(eVar).a();
    }

    @Deprecated
    public static a h(e eVar) {
        return e().e(eVar).a();
    }

    public static b i() {
        return new b(false).c(a()).b("source");
    }

    public static a j() {
        return i().a();
    }

    @Deprecated
    public static a l(int i4, String str, e eVar) {
        return i().c(i4).b(str).e(eVar).a();
    }

    @Deprecated
    public static a m(e eVar) {
        return i().e(eVar).a();
    }

    public static a n() {
        return new a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f8759h, TimeUnit.MILLISECONDS, new SynchronousQueue(), new d(new c(), f8757f, e.f8783d, false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j4, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f8762a.awaitTermination(j4, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f8762a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f8762a.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f8762a.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f8762a.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f8762a.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f8762a.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public List<Runnable> shutdownNow() {
        return this.f8762a.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public Future<?> submit(@NonNull Runnable runnable) {
        return this.f8762a.submit(runnable);
    }

    public String toString() {
        return this.f8762a.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j4, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f8762a.invokeAll(collection, j4, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j4, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f8762a.invokeAny(collection, j4, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> Future<T> submit(@NonNull Runnable runnable, T t9) {
        return this.f8762a.submit(runnable, t9);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.f8762a.submit(callable);
    }
}
