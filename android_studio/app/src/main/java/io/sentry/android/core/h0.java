package io.sentry.android.core;

import androidx.lifecycle.ProcessLifecycleOwner;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: AppLifecycleIntegration.java */
/* loaded from: classes4.dex */
public final class h0 implements io.sentry.z0, Closeable {
    @m8.h
    @m8.k

    /* renamed from: a  reason: collision with root package name */
    LifecycleWatcher f82416a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private SentryAndroidOptions f82417b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final z0 f82418c;

    public h0() {
        this(new z0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void k(@m8.g io.sentry.n0 n0Var) {
        SentryAndroidOptions sentryAndroidOptions = this.f82417b;
        if (sentryAndroidOptions == null) {
            return;
        }
        this.f82416a = new LifecycleWatcher(n0Var, sentryAndroidOptions.getSessionTrackingIntervalMillis(), this.f82417b.isEnableAutoSessionTracking(), this.f82417b.isEnableAppLifecycleBreadcrumbs());
        try {
            ProcessLifecycleOwner.get().getLifecycle().addObserver(this.f82416a);
            this.f82417b.getLogger().c(SentryLevel.DEBUG, "AppLifecycleIntegration installed.", new Object[0]);
        } catch (Throwable th) {
            this.f82416a = null;
            this.f82417b.getLogger().b(SentryLevel.ERROR, "AppLifecycleIntegration failed to get Lifecycle and could not be installed.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void i() {
        ProcessLifecycleOwner.get().getLifecycle().removeObserver(this.f82416a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x007b -> B:20:0x0093). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0088 -> B:20:0x0093). Please submit an issue!!! */
    @Override // io.sentry.z0
    public void a(@m8.g final io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        io.sentry.util.l.c(n0Var, "Hub is required");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) io.sentry.util.l.c(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.f82417b = sentryAndroidOptions;
        io.sentry.o0 logger = sentryAndroidOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "enableSessionTracking enabled: %s", Boolean.valueOf(this.f82417b.isEnableAutoSessionTracking()));
        this.f82417b.getLogger().c(sentryLevel, "enableAppLifecycleBreadcrumbs enabled: %s", Boolean.valueOf(this.f82417b.isEnableAppLifecycleBreadcrumbs()));
        if (this.f82417b.isEnableAutoSessionTracking() || this.f82417b.isEnableAppLifecycleBreadcrumbs()) {
            try {
                Class.forName("androidx.lifecycle.ProcessLifecycleOwner");
                if (io.sentry.android.core.internal.util.b.e().a()) {
                    k(n0Var);
                    sentryOptions = sentryOptions;
                } else {
                    this.f82418c.b(new Runnable() { // from class: io.sentry.android.core.g0
                        @Override // java.lang.Runnable
                        public final void run() {
                            h0.this.k(n0Var);
                        }
                    });
                    sentryOptions = sentryOptions;
                }
            } catch (ClassNotFoundException e4) {
                io.sentry.o0 logger2 = sentryOptions.getLogger();
                logger2.b(SentryLevel.INFO, "androidx.lifecycle is not available, AppLifecycleIntegration won't be installed", e4);
                sentryOptions = logger2;
            } catch (IllegalStateException e10) {
                io.sentry.o0 logger3 = sentryOptions.getLogger();
                logger3.b(SentryLevel.ERROR, "AppLifecycleIntegration could not be installed", e10);
                sentryOptions = logger3;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f82416a != null) {
            if (io.sentry.android.core.internal.util.b.e().a()) {
                i();
            } else {
                this.f82418c.b(new Runnable() { // from class: io.sentry.android.core.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h0.this.i();
                    }
                });
            }
            this.f82416a = null;
            SentryAndroidOptions sentryAndroidOptions = this.f82417b;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "AppLifecycleIntegration removed.", new Object[0]);
            }
        }
    }

    h0(@m8.g z0 z0Var) {
        this.f82418c = z0Var;
    }
}
