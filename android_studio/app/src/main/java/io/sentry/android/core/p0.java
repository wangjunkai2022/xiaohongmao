package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.NonNull;
import io.sentry.SentryOptions;
import java.io.Closeable;
import java.io.IOException;
import m8.a;

/* compiled from: CurrentActivityIntegration.java */
@a.c
/* loaded from: classes4.dex */
public final class p0 implements io.sentry.z0, Closeable, Application.ActivityLifecycleCallbacks {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Application f82560a;

    public p0(@m8.g Application application) {
        this.f82560a = (Application) io.sentry.util.l.c(application, "Application is required");
    }

    private void b(@m8.g Activity activity) {
        if (o0.c().b() == activity) {
            o0.c().a();
        }
    }

    private void d(@m8.g Activity activity) {
        o0.c().d(activity);
    }

    @Override // io.sentry.z0
    public void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        this.f82560a.registerActivityLifecycleCallbacks(this);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f82560a.unregisterActivityLifecycleCallbacks(this);
        o0.c().a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NonNull Activity activity, @m8.h Bundle bundle) {
        d(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NonNull Activity activity) {
        b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NonNull Activity activity) {
        b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NonNull Activity activity) {
        d(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NonNull Activity activity) {
        d(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NonNull Activity activity) {
        b(activity);
    }
}
