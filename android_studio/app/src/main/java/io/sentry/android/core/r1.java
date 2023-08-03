package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.Window;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: UserInteractionIntegration.java */
/* loaded from: classes4.dex */
public final class r1 implements io.sentry.z0, Closeable, Application.ActivityLifecycleCallbacks {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Application f82585a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private io.sentry.n0 f82586b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private SentryAndroidOptions f82587c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f82588d;

    public r1(@m8.g Application application, @m8.g y0 y0Var) {
        this.f82585a = (Application) io.sentry.util.l.c(application, "Application is required");
        this.f82588d = y0Var.b("androidx.core.view.GestureDetectorCompat", this.f82587c);
    }

    private void b(@m8.g Activity activity) {
        Window window = activity.getWindow();
        if (window == null) {
            SentryAndroidOptions sentryAndroidOptions = this.f82587c;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "Window was null in startTracking", new Object[0]);
            }
        } else if (this.f82586b == null || this.f82587c == null) {
        } else {
            Window.Callback callback = window.getCallback();
            if (callback == null) {
                callback = new io.sentry.android.core.internal.gestures.b();
            }
            window.setCallback(new io.sentry.android.core.internal.gestures.h(callback, activity, new io.sentry.android.core.internal.gestures.g(activity, this.f82586b, this.f82587c), this.f82587c));
        }
    }

    private void d(@m8.g Activity activity) {
        Window window = activity.getWindow();
        if (window == null) {
            SentryAndroidOptions sentryAndroidOptions = this.f82587c;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "Window was null in stopTracking", new Object[0]);
                return;
            }
            return;
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof io.sentry.android.core.internal.gestures.h) {
            io.sentry.android.core.internal.gestures.h hVar = (io.sentry.android.core.internal.gestures.h) callback;
            hVar.c();
            if (hVar.a() instanceof io.sentry.android.core.internal.gestures.b) {
                window.setCallback(null);
            } else {
                window.setCallback(hVar.a());
            }
        }
    }

    @Override // io.sentry.z0
    public void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        this.f82587c = (SentryAndroidOptions) io.sentry.util.l.c(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.f82586b = (io.sentry.n0) io.sentry.util.l.c(n0Var, "Hub is required");
        boolean z9 = this.f82587c.isEnableUserInteractionBreadcrumbs() || this.f82587c.isEnableUserInteractionTracing();
        io.sentry.o0 logger = this.f82587c.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "UserInteractionIntegration enabled: %s", Boolean.valueOf(z9));
        if (z9) {
            if (this.f82588d) {
                this.f82585a.registerActivityLifecycleCallbacks(this);
                this.f82587c.getLogger().c(sentryLevel, "UserInteractionIntegration installed.", new Object[0]);
                return;
            }
            sentryOptions.getLogger().c(SentryLevel.INFO, "androidx.core is not available, UserInteractionIntegration won't be installed", new Object[0]);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f82585a.unregisterActivityLifecycleCallbacks(this);
        SentryAndroidOptions sentryAndroidOptions = this.f82587c;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "UserInteractionIntegration removed.", new Object[0]);
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
        d(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@m8.g Activity activity) {
        b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@m8.g Activity activity, @m8.g Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@m8.g Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@m8.g Activity activity) {
    }
}
