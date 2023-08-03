package io.sentry.android.core;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.Session;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: NdkIntegration.java */
/* loaded from: classes4.dex */
public final class b1 implements io.sentry.z0, Closeable {

    /* renamed from: c  reason: collision with root package name */
    public static final String f82176c = "io.sentry.android.ndk.SentryNdk";
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f82177a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private SentryAndroidOptions f82178b;

    public b1(@m8.h Class<?> cls) {
        this.f82177a = cls;
    }

    private void b(@m8.g SentryOptions sentryOptions) {
        sentryOptions.setEnableNdk(false);
        sentryOptions.setEnableScopeSync(false);
    }

    @Override // io.sentry.z0
    public final void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        io.sentry.util.l.c(n0Var, "Hub is required");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) io.sentry.util.l.c(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.f82178b = sentryAndroidOptions;
        boolean isEnableNdk = sentryAndroidOptions.isEnableNdk();
        io.sentry.o0 logger = this.f82178b.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "NdkIntegration enabled: %s", Boolean.valueOf(isEnableNdk));
        if (isEnableNdk && this.f82177a != null) {
            if (this.f82178b.getCacheDirPath() == null) {
                this.f82178b.getLogger().c(SentryLevel.ERROR, "No cache dir path is defined in options.", new Object[0]);
                b(this.f82178b);
                return;
            }
            try {
                this.f82177a.getMethod(Session.b.f81842c, SentryAndroidOptions.class).invoke(null, this.f82178b);
                this.f82178b.getLogger().c(sentryLevel, "NdkIntegration installed.", new Object[0]);
                return;
            } catch (NoSuchMethodException e4) {
                b(this.f82178b);
                this.f82178b.getLogger().b(SentryLevel.ERROR, "Failed to invoke the SentryNdk.init method.", e4);
                return;
            } catch (Throwable th) {
                b(this.f82178b);
                this.f82178b.getLogger().b(SentryLevel.ERROR, "Failed to initialize SentryNdk.", th);
                return;
            }
        }
        b(this.f82178b);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Class<?> cls;
        SentryAndroidOptions sentryAndroidOptions = this.f82178b;
        if (sentryAndroidOptions == null || !sentryAndroidOptions.isEnableNdk() || (cls = this.f82177a) == null) {
            return;
        }
        try {
            try {
                cls.getMethod("close", new Class[0]).invoke(null, new Object[0]);
                this.f82178b.getLogger().c(SentryLevel.DEBUG, "NdkIntegration removed.", new Object[0]);
            }
        } catch (NoSuchMethodException e4) {
            this.f82178b.getLogger().b(SentryLevel.ERROR, "Failed to invoke the SentryNdk.close method.", e4);
        }
        b(this.f82178b);
    }

    @m8.h
    @m8.k
    Class<?> d() {
        return this.f82177a;
    }
}
