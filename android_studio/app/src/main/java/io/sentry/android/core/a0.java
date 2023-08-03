package io.sentry.android.core;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Debug;
import android.os.Process;
import android.os.SystemClock;
import android.view.FrameMetrics;
import io.sentry.SentryLevel;
import io.sentry.android.core.internal.util.n;
import io.sentry.k2;
import io.sentry.m2;
import io.sentry.n2;
import java.io.File;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidTransactionProfiler.java */
/* loaded from: classes4.dex */
public final class a0 implements io.sentry.x0 {

    /* renamed from: u  reason: collision with root package name */
    private static final int f82112u = 3000000;

    /* renamed from: v  reason: collision with root package name */
    private static final int f82113v = 30000;

    /* renamed from: a  reason: collision with root package name */
    private int f82114a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private File f82115b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private File f82116c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Future<?> f82117d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private volatile m2 f82118e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Context f82119f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final SentryAndroidOptions f82120g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final io.sentry.n0 f82121h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final m0 f82122i;

    /* renamed from: j  reason: collision with root package name */
    private long f82123j;

    /* renamed from: k  reason: collision with root package name */
    private long f82124k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f82125l;

    /* renamed from: m  reason: collision with root package name */
    private int f82126m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private String f82127n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final io.sentry.android.core.internal.util.n f82128o;
    @m8.h

    /* renamed from: p  reason: collision with root package name */
    private n2 f82129p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final ArrayDeque<io.sentry.profilemeasurements.b> f82130q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final ArrayDeque<io.sentry.profilemeasurements.b> f82131r;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private final ArrayDeque<io.sentry.profilemeasurements.b> f82132s;
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final Map<String, io.sentry.profilemeasurements.a> f82133t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidTransactionProfiler.java */
    /* loaded from: classes4.dex */
    public class a implements n.b {

        /* renamed from: a  reason: collision with root package name */
        final long f82134a = TimeUnit.SECONDS.toNanos(1);

        /* renamed from: b  reason: collision with root package name */
        final long f82135b = TimeUnit.MILLISECONDS.toNanos(700);

        /* renamed from: c  reason: collision with root package name */
        float f82136c = 0.0f;

        a() {
        }

        @Override // io.sentry.android.core.internal.util.n.b
        public void a(@m8.g FrameMetrics frameMetrics, float f10) {
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() - a0.this.f82123j;
            if (elapsedRealtimeNanos < 0) {
                return;
            }
            long metric = frameMetrics.getMetric(8);
            boolean z9 = ((float) metric) > ((float) this.f82134a) / (f10 - 1.0f);
            float f11 = ((int) (f10 * 100.0f)) / 100.0f;
            if (metric > this.f82135b) {
                a0.this.f82132s.addLast(new io.sentry.profilemeasurements.b(Long.valueOf(elapsedRealtimeNanos), Long.valueOf(metric)));
            } else if (z9) {
                a0.this.f82131r.addLast(new io.sentry.profilemeasurements.b(Long.valueOf(elapsedRealtimeNanos), Long.valueOf(metric)));
            }
            if (f11 != this.f82136c) {
                this.f82136c = f11;
                a0.this.f82130q.addLast(new io.sentry.profilemeasurements.b(Long.valueOf(elapsedRealtimeNanos), Float.valueOf(f11)));
            }
        }
    }

    public a0(@m8.g Context context, @m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g m0 m0Var, @m8.g io.sentry.android.core.internal.util.n nVar) {
        this(context, sentryAndroidOptions, m0Var, nVar, io.sentry.i0.d0());
    }

    @m8.h
    private ActivityManager.MemoryInfo k() {
        try {
            ActivityManager activityManager = (ActivityManager) this.f82119f.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager != null) {
                activityManager.getMemoryInfo(memoryInfo);
                return memoryInfo;
            }
            this.f82120g.getLogger().c(SentryLevel.INFO, "Error getting MemoryInfo.", new Object[0]);
            return null;
        } catch (Throwable th) {
            this.f82120g.getLogger().b(SentryLevel.ERROR, "Error getting MemoryInfo.", th);
            return null;
        }
    }

    private void l() {
        if (this.f82125l) {
            return;
        }
        this.f82125l = true;
        String profilingTracesDirPath = this.f82120g.getProfilingTracesDirPath();
        if (!this.f82120g.isProfilingEnabled()) {
            this.f82120g.getLogger().c(SentryLevel.INFO, "Profiling is disabled in options.", new Object[0]);
        } else if (profilingTracesDirPath == null) {
            this.f82120g.getLogger().c(SentryLevel.WARNING, "Disabling profiling because no profiling traces dir path is defined in options.", new Object[0]);
        } else {
            int profilingTracesHz = this.f82120g.getProfilingTracesHz();
            if (profilingTracesHz <= 0) {
                this.f82120g.getLogger().c(SentryLevel.WARNING, "Disabling profiling because trace rate is set to %d", Integer.valueOf(profilingTracesHz));
                return;
            }
            this.f82114a = ((int) TimeUnit.SECONDS.toMicros(1L)) / profilingTracesHz;
            this.f82116c = new File(profilingTracesDirPath);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(io.sentry.w0 w0Var) {
        this.f82118e = r(w0Var, true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ m2 n(io.sentry.w0 w0Var, k2 k2Var) throws Exception {
        return r(w0Var, false, k2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List o() throws Exception {
        return io.sentry.android.core.internal.util.e.b().d();
    }

    @SuppressLint({"NewApi"})
    private void q(@m8.g final io.sentry.w0 w0Var) {
        File file = this.f82116c;
        this.f82115b = new File(file, UUID.randomUUID() + ".trace");
        this.f82133t.clear();
        this.f82130q.clear();
        this.f82131r.clear();
        this.f82132s.clear();
        this.f82127n = this.f82128o.f(new a());
        this.f82117d = this.f82120g.getExecutorService().b(new Runnable() { // from class: io.sentry.android.core.w
            @Override // java.lang.Runnable
            public final void run() {
                a0.this.m(w0Var);
            }
        }, 30000L);
        this.f82123j = SystemClock.elapsedRealtimeNanos();
        this.f82124k = Process.getElapsedCpuTime();
        this.f82129p = new n2(w0Var, Long.valueOf(this.f82123j), Long.valueOf(this.f82124k));
        Debug.startMethodTracingSampling(this.f82115b.getPath(), f82112u, this.f82114a);
    }

    @m8.h
    @SuppressLint({"NewApi"})
    private m2 r(@m8.g io.sentry.w0 w0Var, boolean z9, @m8.h k2 k2Var) {
        if (this.f82122i.d() < 21) {
            return null;
        }
        m2 m2Var = this.f82118e;
        n2 n2Var = this.f82129p;
        if (n2Var == null || !n2Var.h().equals(w0Var.m().toString())) {
            if (m2Var != null) {
                if (m2Var.U().equals(w0Var.m().toString())) {
                    this.f82118e = null;
                    return m2Var;
                }
                this.f82120g.getLogger().c(SentryLevel.INFO, "A timed out profiling data exists, but the finishing transaction %s (%s) is not part of it", w0Var.getName(), w0Var.E().j().toString());
                return null;
            }
            this.f82120g.getLogger().c(SentryLevel.INFO, "Transaction %s (%s) finished, but was not currently being profiled. Skipping", w0Var.getName(), w0Var.E().j().toString());
            return null;
        }
        int i4 = this.f82126m;
        if (i4 > 0) {
            this.f82126m = i4 - 1;
        }
        this.f82120g.getLogger().c(SentryLevel.DEBUG, "Transaction %s (%s) finished.", w0Var.getName(), w0Var.E().j().toString());
        if (this.f82126m != 0 && !z9) {
            n2 n2Var2 = this.f82129p;
            if (n2Var2 != null) {
                n2Var2.o(Long.valueOf(SystemClock.elapsedRealtimeNanos()), Long.valueOf(this.f82123j), Long.valueOf(Process.getElapsedCpuTime()), Long.valueOf(this.f82124k));
            }
            return null;
        }
        Debug.stopMethodTracing();
        this.f82128o.g(this.f82127n);
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        long elapsedCpuTime = Process.getElapsedCpuTime();
        long j4 = elapsedRealtimeNanos - this.f82123j;
        ArrayList<n2> arrayList = new ArrayList(1);
        arrayList.add(this.f82129p);
        this.f82129p = null;
        this.f82126m = 0;
        Future<?> future = this.f82117d;
        if (future != null) {
            future.cancel(true);
            this.f82117d = null;
        }
        if (this.f82115b == null) {
            this.f82120g.getLogger().c(SentryLevel.ERROR, "Trace file does not exists", new Object[0]);
            return null;
        }
        ActivityManager.MemoryInfo k10 = k();
        String l10 = k10 != null ? Long.toString(k10.totalMem) : "0";
        String[] strArr = Build.SUPPORTED_ABIS;
        for (n2 n2Var3 : arrayList) {
            n2Var3.o(Long.valueOf(elapsedRealtimeNanos), Long.valueOf(this.f82123j), Long.valueOf(elapsedCpuTime), Long.valueOf(this.f82124k));
            elapsedCpuTime = elapsedCpuTime;
        }
        if (!this.f82131r.isEmpty()) {
            this.f82133t.put(io.sentry.profilemeasurements.a.f83533e, new io.sentry.profilemeasurements.a(io.sentry.profilemeasurements.a.f83540l, this.f82131r));
        }
        if (!this.f82132s.isEmpty()) {
            this.f82133t.put(io.sentry.profilemeasurements.a.f83532d, new io.sentry.profilemeasurements.a(io.sentry.profilemeasurements.a.f83540l, this.f82132s));
        }
        if (!this.f82130q.isEmpty()) {
            this.f82133t.put(io.sentry.profilemeasurements.a.f83534f, new io.sentry.profilemeasurements.a(io.sentry.profilemeasurements.a.f83539k, this.f82130q));
        }
        t(k2Var);
        return new m2(this.f82115b, arrayList, w0Var, Long.toString(j4), this.f82122i.d(), (strArr == null || strArr.length <= 0) ? "" : strArr[0], z.f82618a, this.f82122i.b(), this.f82122i.c(), this.f82122i.e(), this.f82122i.f(), l10, this.f82120g.getProguardUuid(), this.f82120g.getRelease(), this.f82120g.getEnvironment(), z9 ? "timeout" : m2.D, this.f82133t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    /* renamed from: s */
    public void p(@m8.g io.sentry.w0 w0Var) {
        if (this.f82122i.d() < 21) {
            return;
        }
        l();
        File file = this.f82116c;
        if (file == null || this.f82114a == 0 || !file.canWrite()) {
            return;
        }
        int i4 = this.f82126m + 1;
        this.f82126m = i4;
        if (i4 == 1) {
            q(w0Var);
            this.f82120g.getLogger().c(SentryLevel.DEBUG, "Transaction %s (%s) started and being profiled.", w0Var.getName(), w0Var.E().j().toString());
            return;
        }
        this.f82126m = i4 - 1;
        this.f82120g.getLogger().c(SentryLevel.WARNING, "A transaction is already being profiled. Transaction %s (%s) will be ignored.", w0Var.getName(), w0Var.E().j().toString());
    }

    private void t(@m8.h k2 k2Var) {
        if (k2Var != null) {
            ArrayDeque arrayDeque = new ArrayDeque();
            ArrayDeque arrayDeque2 = new ArrayDeque();
            ArrayDeque arrayDeque3 = new ArrayDeque();
            for (io.sentry.i iVar : k2Var.d()) {
                arrayDeque3.add(new io.sentry.profilemeasurements.b(Long.valueOf(TimeUnit.MILLISECONDS.toNanos(iVar.b()) - this.f82123j), Double.valueOf(iVar.a())));
            }
            for (io.sentry.r1 r1Var : k2Var.e()) {
                if (r1Var.b() > -1) {
                    arrayDeque.add(new io.sentry.profilemeasurements.b(Long.valueOf(TimeUnit.MILLISECONDS.toNanos(r1Var.a()) - this.f82123j), Long.valueOf(r1Var.b())));
                }
                if (r1Var.c() > -1) {
                    arrayDeque2.add(new io.sentry.profilemeasurements.b(Long.valueOf(TimeUnit.MILLISECONDS.toNanos(r1Var.a()) - this.f82123j), Long.valueOf(r1Var.c())));
                }
            }
            if (!arrayDeque3.isEmpty()) {
                this.f82133t.put(io.sentry.profilemeasurements.a.f83535g, new io.sentry.profilemeasurements.a(io.sentry.profilemeasurements.a.f83542n, arrayDeque3));
            }
            if (!arrayDeque.isEmpty()) {
                this.f82133t.put(io.sentry.profilemeasurements.a.f83536h, new io.sentry.profilemeasurements.a(io.sentry.profilemeasurements.a.f83541m, arrayDeque));
            }
            if (arrayDeque2.isEmpty()) {
                return;
            }
            this.f82133t.put(io.sentry.profilemeasurements.a.f83537i, new io.sentry.profilemeasurements.a(io.sentry.profilemeasurements.a.f83541m, arrayDeque2));
        }
    }

    @Override // io.sentry.x0
    @m8.h
    public synchronized m2 a(@m8.g final io.sentry.w0 w0Var, @m8.h final k2 k2Var) {
        try {
            return (m2) this.f82120g.getExecutorService().submit(new Callable() { // from class: io.sentry.android.core.y
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    m2 n9;
                    n9 = a0.this.n(w0Var, k2Var);
                    return n9;
                }
            }).get();
        } catch (InterruptedException e4) {
            this.f82120g.getLogger().b(SentryLevel.ERROR, "Error finishing profiling: ", e4);
            return null;
        } catch (ExecutionException e10) {
            this.f82120g.getLogger().b(SentryLevel.ERROR, "Error finishing profiling: ", e10);
            return null;
        }
    }

    @Override // io.sentry.x0
    public synchronized void b(@m8.g final io.sentry.w0 w0Var) {
        this.f82120g.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.x
            @Override // java.lang.Runnable
            public final void run() {
                a0.this.p(w0Var);
            }
        });
    }

    public a0(@m8.g Context context, @m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g m0 m0Var, @m8.g io.sentry.android.core.internal.util.n nVar, @m8.g io.sentry.n0 n0Var) {
        this.f82115b = null;
        this.f82116c = null;
        this.f82117d = null;
        this.f82118e = null;
        this.f82123j = 0L;
        this.f82124k = 0L;
        this.f82125l = false;
        this.f82126m = 0;
        this.f82130q = new ArrayDeque<>();
        this.f82131r = new ArrayDeque<>();
        this.f82132s = new ArrayDeque<>();
        this.f82133t = new HashMap();
        this.f82119f = (Context) io.sentry.util.l.c(context, "The application context is required");
        this.f82120g = (SentryAndroidOptions) io.sentry.util.l.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f82121h = (io.sentry.n0) io.sentry.util.l.c(n0Var, "Hub is required");
        this.f82128o = (io.sentry.android.core.internal.util.n) io.sentry.util.l.c(nVar, "SentryFrameMetricsCollector is required");
        this.f82122i = (m0) io.sentry.util.l.c(m0Var, "The BuildInfoProvider is required.");
    }
}
