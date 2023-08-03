package io.sentry.android.core;

import android.app.Activity;
import android.util.SparseIntArray;
import androidx.core.app.FrameMetricsAggregator;
import io.sentry.SentryLevel;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ActivityFramesTracker.java */
/* loaded from: classes4.dex */
public final class g {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private FrameMetricsAggregator f82402a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final SentryAndroidOptions f82403b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Map<io.sentry.protocol.n, Map<String, io.sentry.protocol.e>> f82404c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Map<Activity, b> f82405d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final z0 f82406e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ActivityFramesTracker.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f82407a;

        /* renamed from: b  reason: collision with root package name */
        private final int f82408b;

        /* renamed from: c  reason: collision with root package name */
        private final int f82409c;

        private b(int i4, int i10, int i11) {
            this.f82407a = i4;
            this.f82408b = i10;
            this.f82409c = i11;
        }
    }

    public g(@m8.g y0 y0Var, @m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g z0 z0Var) {
        this.f82402a = null;
        this.f82404c = new ConcurrentHashMap();
        this.f82405d = new WeakHashMap();
        if (y0Var.a("androidx.core.app.FrameMetricsAggregator", sentryAndroidOptions.getLogger())) {
            this.f82402a = new FrameMetricsAggregator();
        }
        this.f82403b = sentryAndroidOptions;
        this.f82406e = z0Var;
    }

    @m8.h
    private b f() {
        FrameMetricsAggregator frameMetricsAggregator;
        int i4;
        int i10;
        SparseIntArray sparseIntArray;
        if (h() && (frameMetricsAggregator = this.f82402a) != null) {
            SparseIntArray[] metrics = frameMetricsAggregator.getMetrics();
            int i11 = 0;
            if (metrics == null || metrics.length <= 0 || (sparseIntArray = metrics[0]) == null) {
                i4 = 0;
                i10 = 0;
            } else {
                int i12 = 0;
                i4 = 0;
                i10 = 0;
                while (i11 < sparseIntArray.size()) {
                    int keyAt = sparseIntArray.keyAt(i11);
                    int valueAt = sparseIntArray.valueAt(i11);
                    i12 += valueAt;
                    if (keyAt > 700) {
                        i10 += valueAt;
                    } else if (keyAt > 16) {
                        i4 += valueAt;
                    }
                    i11++;
                }
                i11 = i12;
            }
            return new b(i11, i4, i10);
        }
        return null;
    }

    @m8.h
    private b g(@m8.g Activity activity) {
        b f10;
        b remove = this.f82405d.remove(activity);
        if (remove == null || (f10 = f()) == null) {
            return null;
        }
        return new b(f10.f82407a - remove.f82407a, f10.f82408b - remove.f82408b, f10.f82409c - remove.f82409c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(Activity activity) {
        this.f82402a.add(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(Runnable runnable, String str) {
        try {
            runnable.run();
        } catch (Throwable unused) {
            if (str != null) {
                io.sentry.o0 logger = this.f82403b.getLogger();
                SentryLevel sentryLevel = SentryLevel.WARNING;
                logger.c(sentryLevel, "Failed to execute " + str, new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(Activity activity) {
        this.f82402a.remove(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        this.f82402a.stop();
    }

    private void m(final Runnable runnable, final String str) {
        try {
            if (io.sentry.android.core.internal.util.b.e().a()) {
                runnable.run();
            } else {
                this.f82406e.b(new Runnable() { // from class: io.sentry.android.core.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.this.j(runnable, str);
                    }
                });
            }
        } catch (Throwable unused) {
            if (str != null) {
                io.sentry.o0 logger = this.f82403b.getLogger();
                SentryLevel sentryLevel = SentryLevel.WARNING;
                logger.c(sentryLevel, "Failed to execute " + str, new Object[0]);
            }
        }
    }

    private void o(@m8.g Activity activity) {
        b f10 = f();
        if (f10 != null) {
            this.f82405d.put(activity, f10);
        }
    }

    public synchronized void e(@m8.g final Activity activity) {
        if (h()) {
            m(new Runnable() { // from class: io.sentry.android.core.e
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.i(activity);
                }
            }, "FrameMetricsAggregator.add");
            o(activity);
        }
    }

    @m8.n
    public boolean h() {
        return this.f82402a != null && this.f82403b.isEnableFramesTracking();
    }

    public synchronized void n(@m8.g final Activity activity, @m8.g io.sentry.protocol.n nVar) {
        if (h()) {
            m(new Runnable() { // from class: io.sentry.android.core.d
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.k(activity);
                }
            }, null);
            b g4 = g(activity);
            if (g4 != null && (g4.f82407a != 0 || g4.f82408b != 0 || g4.f82409c != 0)) {
                io.sentry.protocol.e eVar = new io.sentry.protocol.e(Integer.valueOf(g4.f82407a), "none");
                io.sentry.protocol.e eVar2 = new io.sentry.protocol.e(Integer.valueOf(g4.f82408b), "none");
                io.sentry.protocol.e eVar3 = new io.sentry.protocol.e(Integer.valueOf(g4.f82409c), "none");
                HashMap hashMap = new HashMap();
                hashMap.put("frames_total", eVar);
                hashMap.put("frames_slow", eVar2);
                hashMap.put("frames_frozen", eVar3);
                this.f82404c.put(nVar, hashMap);
            }
        }
    }

    public synchronized void p() {
        if (h()) {
            m(new Runnable() { // from class: io.sentry.android.core.c
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.l();
                }
            }, "FrameMetricsAggregator.stop");
            this.f82402a.reset();
        }
        this.f82404c.clear();
    }

    @m8.h
    public synchronized Map<String, io.sentry.protocol.e> q(@m8.g io.sentry.protocol.n nVar) {
        if (h()) {
            Map<String, io.sentry.protocol.e> map = this.f82404c.get(nVar);
            this.f82404c.remove(nVar);
            return map;
        }
        return null;
    }

    public g(@m8.g y0 y0Var, @m8.g SentryAndroidOptions sentryAndroidOptions) {
        this(y0Var, sentryAndroidOptions, new z0());
    }

    @m8.k
    g(@m8.g y0 y0Var, @m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g z0 z0Var, @m8.h FrameMetricsAggregator frameMetricsAggregator) {
        this(y0Var, sentryAndroidOptions, z0Var);
        this.f82402a = frameMetricsAggregator;
    }
}
