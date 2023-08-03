package io.sentry.android.core;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import io.sentry.Instrumenter;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.SpanStatus;
import io.sentry.j3;
import io.sentry.p5;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.protocol.t;
import io.sentry.q5;
import io.sentry.r2;
import io.sentry.r5;
import io.sentry.s2;
import io.sentry.t5;
import java.io.Closeable;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: ActivityLifecycleIntegration.java */
/* loaded from: classes4.dex */
public final class o implements io.sentry.z0, Closeable, Application.ActivityLifecycleCallbacks {

    /* renamed from: p  reason: collision with root package name */
    static final String f82525p = "ui.load";

    /* renamed from: q  reason: collision with root package name */
    static final String f82526q = "app.start.warm";

    /* renamed from: r  reason: collision with root package name */
    static final String f82527r = "app.start.cold";

    /* renamed from: s  reason: collision with root package name */
    static final String f82528s = "ui.load.initial_display";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Application f82529a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final m0 f82530b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private io.sentry.n0 f82531c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private SentryAndroidOptions f82532d;

    /* renamed from: f  reason: collision with root package name */
    private boolean f82534f;

    /* renamed from: i  reason: collision with root package name */
    private boolean f82537i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private io.sentry.v0 f82538j;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final g f82543o;

    /* renamed from: e  reason: collision with root package name */
    private boolean f82533e = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f82535g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f82536h = false;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final WeakHashMap<Activity, io.sentry.v0> f82539k = new WeakHashMap<>();
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private j3 f82540l = q.a();
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final Handler f82541m = new Handler(Looper.getMainLooper());
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final WeakHashMap<Activity, io.sentry.w0> f82542n = new WeakHashMap<>();

    public o(@m8.g Application application, @m8.g m0 m0Var, @m8.g g gVar) {
        this.f82537i = false;
        Application application2 = (Application) io.sentry.util.l.c(application, "Application is required");
        this.f82529a = application2;
        this.f82530b = (m0) io.sentry.util.l.c(m0Var, "BuildInfoProvider is required");
        this.f82543o = (g) io.sentry.util.l.c(gVar, "ActivityFramesTracker is required");
        if (m0Var.d() >= 29) {
            this.f82534f = true;
        }
        this.f82537i = n0.g(application2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public void n0(@m8.h io.sentry.v0 v0Var) {
        if (v0Var == null || v0Var.b()) {
            return;
        }
        v0Var.h();
    }

    private void D(@m8.h io.sentry.v0 v0Var, @m8.g SpanStatus spanStatus) {
        if (v0Var == null || v0Var.b()) {
            return;
        }
        v0Var.t(spanStatus);
    }

    private void E(@m8.h final io.sentry.w0 w0Var, @m8.h io.sentry.v0 v0Var) {
        if (w0Var == null || w0Var.b()) {
            return;
        }
        D(v0Var, SpanStatus.CANCELLED);
        SpanStatus status = w0Var.getStatus();
        if (status == null) {
            status = SpanStatus.OK;
        }
        w0Var.t(status);
        io.sentry.n0 n0Var = this.f82531c;
        if (n0Var != null) {
            n0Var.t(new s2() { // from class: io.sentry.android.core.j
                @Override // io.sentry.s2
                public final void a(r2 r2Var) {
                    o.this.h0(w0Var, r2Var);
                }
            });
        }
    }

    @m8.g
    private String I(@m8.g Activity activity) {
        return activity.getClass().getSimpleName();
    }

    @m8.g
    private String J(boolean z9) {
        return z9 ? "Cold Start" : "Warm Start";
    }

    @m8.g
    private String K(boolean z9) {
        return z9 ? f82527r : f82526q;
    }

    @m8.g
    private String M(@m8.g String str) {
        return str + " initial display";
    }

    private boolean X(@m8.g SentryAndroidOptions sentryAndroidOptions) {
        return sentryAndroidOptions.isTracingEnabled() && sentryAndroidOptions.isEnableAutoActivityLifecycleTracing();
    }

    private boolean b0(@m8.g Activity activity) {
        return this.f82542n.containsKey(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0(r2 r2Var, io.sentry.w0 w0Var, io.sentry.w0 w0Var2) {
        if (w0Var2 == null) {
            r2Var.O(w0Var);
            return;
        }
        SentryAndroidOptions sentryAndroidOptions = this.f82532d;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Transaction '%s' won't be bound to the Scope since there's one already in there.", w0Var.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g0(io.sentry.w0 w0Var, r2 r2Var, io.sentry.w0 w0Var2) {
        if (w0Var2 == w0Var) {
            r2Var.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o0(WeakReference weakReference, String str, io.sentry.w0 w0Var) {
        Activity activity = (Activity) weakReference.get();
        if (activity != null) {
            this.f82543o.n(activity, w0Var.m());
            return;
        }
        SentryAndroidOptions sentryAndroidOptions = this.f82532d;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.WARNING, "Unable to track activity frames as the Activity %s has been destroyed.", str);
        }
    }

    private void q0(@m8.h Bundle bundle) {
        if (this.f82535g) {
            return;
        }
        i0.d().l(bundle == null);
    }

    private void r(@m8.g Activity activity, @m8.g String str) {
        SentryAndroidOptions sentryAndroidOptions = this.f82532d;
        if (sentryAndroidOptions == null || this.f82531c == null || !sentryAndroidOptions.isEnableActivityLifecycleBreadcrumbs()) {
            return;
        }
        io.sentry.f fVar = new io.sentry.f();
        fVar.y(NotificationCompat.CATEGORY_NAVIGATION);
        fVar.v(t.b.f83859d, str);
        fVar.v("screen", I(activity));
        fVar.u("ui.lifecycle");
        fVar.w(SentryLevel.INFO);
        io.sentry.b0 b0Var = new io.sentry.b0();
        b0Var.m(t5.f83984g, activity);
        this.f82531c.s(fVar, b0Var);
    }

    private void r0(@m8.g Activity activity) {
        final WeakReference weakReference = new WeakReference(activity);
        if (!this.f82533e || b0(activity) || this.f82531c == null) {
            return;
        }
        s0();
        final String I = I(activity);
        j3 c10 = this.f82537i ? i0.d().c() : null;
        Boolean e4 = i0.d().e();
        r5 r5Var = new r5();
        r5Var.n(true);
        r5Var.l(new q5() { // from class: io.sentry.android.core.l
            @Override // io.sentry.q5
            public final void a(io.sentry.w0 w0Var) {
                o.this.o0(weakReference, I, w0Var);
            }
        });
        if (!this.f82535g && c10 != null && e4 != null) {
            r5Var.k(c10);
        }
        final io.sentry.w0 N = this.f82531c.N(new p5(I, TransactionNameSource.COMPONENT, "ui.load"), r5Var);
        if (!this.f82535g && c10 != null && e4 != null) {
            String K = K(e4.booleanValue());
            String J = J(e4.booleanValue());
            Instrumenter instrumenter = Instrumenter.SENTRY;
            this.f82538j = N.w(K, J, c10, instrumenter);
            this.f82539k.put(activity, N.w(f82528s, M(I), c10, instrumenter));
        } else {
            this.f82539k.put(activity, N.w(f82528s, M(I), this.f82540l, Instrumenter.SENTRY));
        }
        this.f82531c.t(new s2() { // from class: io.sentry.android.core.k
            @Override // io.sentry.s2
            public final void a(r2 r2Var) {
                o.this.p0(N, r2Var);
            }
        });
        this.f82542n.put(activity, N);
    }

    private void s0() {
        for (Map.Entry<Activity, io.sentry.w0> entry : this.f82542n.entrySet()) {
            E(entry.getValue(), this.f82539k.get(entry.getKey()));
        }
    }

    private void t0(@m8.g Activity activity, boolean z9) {
        if (this.f82533e && z9) {
            E(this.f82542n.get(activity), null);
        }
    }

    @m8.g
    @m8.k
    WeakHashMap<Activity, io.sentry.w0> G() {
        return this.f82542n;
    }

    @m8.g
    @m8.k
    g H() {
        return this.f82543o;
    }

    @m8.h
    @m8.k
    io.sentry.v0 L() {
        return this.f82538j;
    }

    @m8.g
    @m8.k
    WeakHashMap<Activity, io.sentry.v0> W() {
        return this.f82539k;
    }

    @Override // io.sentry.z0
    public void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        this.f82532d = (SentryAndroidOptions) io.sentry.util.l.c(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.f82531c = (io.sentry.n0) io.sentry.util.l.c(n0Var, "Hub is required");
        io.sentry.o0 logger = this.f82532d.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "ActivityLifecycleIntegration enabled: %s", Boolean.valueOf(this.f82532d.isEnableActivityLifecycleBreadcrumbs()));
        this.f82533e = X(this.f82532d);
        if (this.f82532d.isEnableActivityLifecycleBreadcrumbs() || this.f82533e) {
            this.f82529a.registerActivityLifecycleCallbacks(this);
            this.f82532d.getLogger().c(sentryLevel, "ActivityLifecycleIntegration installed.", new Object[0]);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f82529a.unregisterActivityLifecycleCallbacks(this);
        SentryAndroidOptions sentryAndroidOptions = this.f82532d;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "ActivityLifecycleIntegration removed.", new Object[0]);
        }
        this.f82543o.p();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityCreated(@m8.g Activity activity, @m8.h Bundle bundle) {
        q0(bundle);
        r(activity, "created");
        r0(activity);
        this.f82535g = true;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityDestroyed(@m8.g Activity activity) {
        r(activity, "destroyed");
        io.sentry.v0 v0Var = this.f82538j;
        SpanStatus spanStatus = SpanStatus.CANCELLED;
        D(v0Var, spanStatus);
        D(this.f82539k.get(activity), spanStatus);
        t0(activity, true);
        this.f82538j = null;
        this.f82539k.remove(activity);
        if (this.f82533e) {
            this.f82542n.remove(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityPaused(@m8.g Activity activity) {
        if (!this.f82534f) {
            io.sentry.n0 n0Var = this.f82531c;
            if (n0Var == null) {
                this.f82540l = q.a();
            } else {
                this.f82540l = n0Var.A().getDateProvider().now();
            }
        }
        r(activity, "paused");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityPostResumed(@m8.g Activity activity) {
        SentryAndroidOptions sentryAndroidOptions;
        if (this.f82534f && (sentryAndroidOptions = this.f82532d) != null) {
            t0(activity, sentryAndroidOptions.isEnableActivityLifecycleTracingAutoFinish());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPrePaused(@NonNull Activity activity) {
        if (this.f82534f) {
            io.sentry.n0 n0Var = this.f82531c;
            if (n0Var == null) {
                this.f82540l = q.a();
            } else {
                this.f82540l = n0Var.A().getDateProvider().now();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @SuppressLint({"NewApi"})
    public synchronized void onActivityResumed(@m8.g Activity activity) {
        SentryAndroidOptions sentryAndroidOptions;
        io.sentry.v0 v0Var;
        if (!this.f82536h) {
            if (this.f82537i) {
                i0.d().h();
            } else {
                SentryAndroidOptions sentryAndroidOptions2 = this.f82532d;
                if (sentryAndroidOptions2 != null) {
                    sentryAndroidOptions2.getLogger().c(SentryLevel.DEBUG, "App Start won't be reported because Process wasn't of foregroundImportance.", new Object[0]);
                }
            }
            if (this.f82533e && (v0Var = this.f82538j) != null) {
                v0Var.h();
            }
            this.f82536h = true;
        }
        final io.sentry.v0 v0Var2 = this.f82539k.get(activity);
        View findViewById = activity.findViewById(16908290);
        if (this.f82530b.d() >= 16 && findViewById != null) {
            io.sentry.android.core.internal.util.h.e(findViewById, new Runnable() { // from class: io.sentry.android.core.n
                @Override // java.lang.Runnable
                public final void run() {
                    o.this.l0(v0Var2);
                }
            }, this.f82530b);
        } else {
            this.f82541m.post(new Runnable() { // from class: io.sentry.android.core.m
                @Override // java.lang.Runnable
                public final void run() {
                    o.this.n0(v0Var2);
                }
            });
        }
        r(activity, "resumed");
        if (!this.f82534f && (sentryAndroidOptions = this.f82532d) != null) {
            t0(activity, sentryAndroidOptions.isEnableActivityLifecycleTracingAutoFinish());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivitySaveInstanceState(@m8.g Activity activity, @m8.g Bundle bundle) {
        r(activity, "saveInstanceState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStarted(@m8.g Activity activity) {
        this.f82543o.e(activity);
        r(activity, Session.b.f81843d);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStopped(@m8.g Activity activity) {
        r(activity, "stopped");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.n
    /* renamed from: s */
    public void p0(@m8.g final r2 r2Var, @m8.g final io.sentry.w0 w0Var) {
        r2Var.T(new r2.b() { // from class: io.sentry.android.core.i
            @Override // io.sentry.r2.b
            public final void a(io.sentry.w0 w0Var2) {
                o.this.d0(r2Var, w0Var, w0Var2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.n
    /* renamed from: y */
    public void h0(@m8.g final r2 r2Var, @m8.g final io.sentry.w0 w0Var) {
        r2Var.T(new r2.b() { // from class: io.sentry.android.core.h
            @Override // io.sentry.r2.b
            public final void a(io.sentry.w0 w0Var2) {
                o.g0(io.sentry.w0.this, r2Var, w0Var2);
            }
        });
    }
}
