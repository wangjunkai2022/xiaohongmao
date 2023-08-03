package io.sentry.android.core.internal.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.FrameMetrics;
import android.view.Window;
import androidx.annotation.RequiresApi;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.m0;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import m8.a;

/* compiled from: SentryFrameMetricsCollector.java */
@a.c
/* loaded from: classes4.dex */
public final class n implements Application.ActivityLifecycleCallbacks {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final m0 f82484a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Set<Window> f82485b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final SentryOptions f82486c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Handler f82487d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private WeakReference<Window> f82488e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final HashMap<String, b> f82489f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f82490g;

    /* renamed from: h  reason: collision with root package name */
    private final c f82491h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Window.OnFrameMetricsAvailableListener f82492i;

    /* compiled from: SentryFrameMetricsCollector.java */
    /* loaded from: classes4.dex */
    class a implements c {
        a() {
        }

        @Override // io.sentry.android.core.internal.util.n.c
        public /* synthetic */ void a(Window window, Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, Handler handler) {
            o.a(this, window, onFrameMetricsAvailableListener, handler);
        }

        @Override // io.sentry.android.core.internal.util.n.c
        public /* synthetic */ void b(Window window, Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener) {
            o.b(this, window, onFrameMetricsAvailableListener);
        }
    }

    /* compiled from: SentryFrameMetricsCollector.java */
    @a.c
    /* loaded from: classes4.dex */
    public interface b {
        void a(@m8.g FrameMetrics frameMetrics, float f10);
    }

    /* compiled from: SentryFrameMetricsCollector.java */
    @a.c
    /* loaded from: classes4.dex */
    public interface c {
        @RequiresApi(api = 24)
        void a(@m8.g Window window, @m8.h Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, @m8.h Handler handler);

        @RequiresApi(api = 24)
        void b(@m8.g Window window, @m8.h Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener);
    }

    @SuppressLint({"NewApi"})
    public n(@m8.g Context context, @m8.g SentryOptions sentryOptions, @m8.g m0 m0Var) {
        this(context, sentryOptions, m0Var, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(SentryOptions sentryOptions, Thread thread, Throwable th) {
        sentryOptions.getLogger().b(SentryLevel.ERROR, "Error during frames measurements.", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(m0 m0Var, Window window, FrameMetrics frameMetrics, int i4) {
        float refreshRate;
        if (m0Var.d() >= 30) {
            refreshRate = window.getContext().getDisplay().getRefreshRate();
        } else {
            refreshRate = window.getWindowManager().getDefaultDisplay().getRefreshRate();
        }
        for (b bVar : this.f82489f.values()) {
            bVar.a(frameMetrics, refreshRate);
        }
    }

    private void e(@m8.g Window window) {
        WeakReference<Window> weakReference = this.f82488e;
        if (weakReference == null || weakReference.get() != window) {
            this.f82488e = new WeakReference<>(window);
            i();
        }
    }

    @SuppressLint({"NewApi"})
    private void h(@m8.g Window window) {
        if (this.f82485b.contains(window)) {
            if (this.f82484a.d() >= 24) {
                try {
                    this.f82491h.b(window, this.f82492i);
                } catch (Exception e4) {
                    this.f82486c.getLogger().b(SentryLevel.ERROR, "Failed to remove frameMetricsAvailableListener", e4);
                }
            }
            this.f82485b.remove(window);
        }
    }

    @SuppressLint({"NewApi"})
    private void i() {
        WeakReference<Window> weakReference = this.f82488e;
        Window window = weakReference != null ? weakReference.get() : null;
        if (window == null || !this.f82490g || this.f82485b.contains(window) || this.f82489f.isEmpty() || this.f82484a.d() < 24 || this.f82487d == null) {
            return;
        }
        this.f82485b.add(window);
        this.f82491h.a(window, this.f82492i, this.f82487d);
    }

    @m8.h
    public String f(@m8.g b bVar) {
        if (this.f82490g) {
            String uuid = UUID.randomUUID().toString();
            this.f82489f.put(uuid, bVar);
            i();
            return uuid;
        }
        return null;
    }

    public void g(@m8.h String str) {
        if (this.f82490g) {
            if (str != null) {
                this.f82489f.remove(str);
            }
            WeakReference<Window> weakReference = this.f82488e;
            Window window = weakReference != null ? weakReference.get() : null;
            if (window == null || !this.f82489f.isEmpty()) {
                return;
            }
            h(window);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@m8.g Activity activity, @m8.h Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@m8.g Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@m8.g Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@m8.g Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@m8.g Activity activity, @m8.g Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@m8.g Activity activity) {
        e(activity.getWindow());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@m8.g Activity activity) {
        h(activity.getWindow());
        WeakReference<Window> weakReference = this.f82488e;
        if (weakReference == null || weakReference.get() != activity.getWindow()) {
            return;
        }
        this.f82488e = null;
    }

    @SuppressLint({"NewApi"})
    public n(@m8.g Context context, @m8.g final SentryOptions sentryOptions, @m8.g final m0 m0Var, @m8.g c cVar) {
        this.f82485b = new HashSet();
        this.f82489f = new HashMap<>();
        this.f82490g = false;
        io.sentry.util.l.c(context, "The context is required");
        this.f82486c = (SentryOptions) io.sentry.util.l.c(sentryOptions, "SentryOptions is required");
        this.f82484a = (m0) io.sentry.util.l.c(m0Var, "BuildInfoProvider is required");
        this.f82491h = (c) io.sentry.util.l.c(cVar, "WindowFrameMetricsManager is required");
        if ((context instanceof Application) && m0Var.d() >= 24) {
            this.f82490g = true;
            HandlerThread handlerThread = new HandlerThread("io.sentry.android.core.internal.util.SentryFrameMetricsCollector");
            handlerThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: io.sentry.android.core.internal.util.m
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th) {
                    n.c(SentryOptions.this, thread, th);
                }
            });
            handlerThread.start();
            this.f82487d = new Handler(handlerThread.getLooper());
            ((Application) context).registerActivityLifecycleCallbacks(this);
            this.f82492i = new Window.OnFrameMetricsAvailableListener() { // from class: io.sentry.android.core.internal.util.l
                @Override // android.view.Window.OnFrameMetricsAvailableListener
                public final void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i4) {
                    n.this.d(m0Var, window, frameMetrics, i4);
                }
            };
        }
    }
}
