package bolts;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: BoltsExecutors.java */
/* loaded from: classes.dex */
final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final b f3022d = new b();

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f3023a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f3024b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f3025c;

    /* compiled from: BoltsExecutors.java */
    /* renamed from: bolts.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class ExecutorC0025b implements Executor {

        /* renamed from: b  reason: collision with root package name */
        private static final int f3026b = 15;

        /* renamed from: a  reason: collision with root package name */
        private ThreadLocal<Integer> f3027a;

        private ExecutorC0025b() {
            this.f3027a = new ThreadLocal<>();
        }

        private int a() {
            Integer num = this.f3027a.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f3027a.remove();
            } else {
                this.f3027a.set(Integer.valueOf(intValue));
            }
            return intValue;
        }

        private int b() {
            Integer num = this.f3027a.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() + 1;
            this.f3027a.set(Integer.valueOf(intValue));
            return intValue;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                if (b() <= 15) {
                    runnable.run();
                } else {
                    b.a().execute(runnable);
                }
            } finally {
                a();
            }
        }
    }

    private b() {
        this.f3023a = !c() ? Executors.newCachedThreadPool() : bolts.a.b();
        this.f3024b = Executors.newSingleThreadScheduledExecutor();
        this.f3025c = new ExecutorC0025b();
    }

    public static ExecutorService a() {
        return f3022d.f3023a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor b() {
        return f3022d.f3025c;
    }

    private static boolean c() {
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            return false;
        }
        return property.toLowerCase(Locale.US).contains("android");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScheduledExecutorService d() {
        return f3022d.f3024b;
    }
}
