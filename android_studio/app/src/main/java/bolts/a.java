package bolts;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: AndroidExecutors.java */
/* loaded from: classes.dex */
final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final a f3016b = new a();

    /* renamed from: c  reason: collision with root package name */
    private static final int f3017c;

    /* renamed from: d  reason: collision with root package name */
    static final int f3018d;

    /* renamed from: e  reason: collision with root package name */
    static final int f3019e;

    /* renamed from: f  reason: collision with root package name */
    static final long f3020f = 1;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f3021a = new b();

    /* compiled from: AndroidExecutors.java */
    /* loaded from: classes.dex */
    private static class b implements Executor {
        private b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f3017c = availableProcessors;
        f3018d = availableProcessors + 1;
        f3019e = (availableProcessors * 2) + 1;
    }

    private a() {
    }

    @SuppressLint({"NewApi"})
    public static void a(ThreadPoolExecutor threadPoolExecutor, boolean z9) {
        threadPoolExecutor.allowCoreThreadTimeOut(z9);
    }

    public static ExecutorService b() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f3018d, f3019e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    public static ExecutorService c(ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f3018d, f3019e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    public static Executor d() {
        return f3016b.f3021a;
    }
}
