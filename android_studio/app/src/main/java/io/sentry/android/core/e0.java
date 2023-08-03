package io.sentry.android.core;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import androidx.core.app.NotificationCompat;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.protocol.Device;
import io.sentry.t5;
import java.io.Closeable;
import java.io.IOException;
import java.util.Locale;

/* compiled from: AppComponentsBreadcrumbsIntegration.java */
/* loaded from: classes4.dex */
public final class e0 implements io.sentry.z0, Closeable, ComponentCallbacks2 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f82197a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private io.sentry.n0 f82198b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private SentryAndroidOptions f82199c;

    public e0(@m8.g Context context) {
        this.f82197a = (Context) io.sentry.util.l.c(context, "Context is required");
    }

    private void b(@m8.h Integer num) {
        if (this.f82198b != null) {
            io.sentry.f fVar = new io.sentry.f();
            if (num != null) {
                if (num.intValue() < 40) {
                    return;
                }
                fVar.v("level", num);
            }
            fVar.y("system");
            fVar.u("device.event");
            fVar.x("Low memory");
            fVar.v(com.alipay.sdk.packet.d.f6907q, "LOW_MEMORY");
            fVar.w(SentryLevel.WARNING);
            this.f82198b.g(fVar);
        }
    }

    @Override // io.sentry.z0
    public void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        this.f82198b = (io.sentry.n0) io.sentry.util.l.c(n0Var, "Hub is required");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) io.sentry.util.l.c(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.f82199c = sentryAndroidOptions;
        io.sentry.o0 logger = sentryAndroidOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "AppComponentsBreadcrumbsIntegration enabled: %s", Boolean.valueOf(this.f82199c.isEnableAppComponentBreadcrumbs()));
        if (this.f82199c.isEnableAppComponentBreadcrumbs()) {
            try {
                this.f82197a.registerComponentCallbacks(this);
                sentryOptions.getLogger().c(sentryLevel, "AppComponentsBreadcrumbsIntegration installed.", new Object[0]);
            } catch (Throwable th) {
                this.f82199c.setEnableAppComponentBreadcrumbs(false);
                sentryOptions.getLogger().a(SentryLevel.INFO, th, "ComponentCallbacks2 is not available.", new Object[0]);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f82197a.unregisterComponentCallbacks(this);
        } catch (Throwable th) {
            SentryAndroidOptions sentryAndroidOptions = this.f82199c;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().a(SentryLevel.DEBUG, th, "It was not possible to unregisterComponentCallbacks", new Object[0]);
            }
        }
        SentryAndroidOptions sentryAndroidOptions2 = this.f82199c;
        if (sentryAndroidOptions2 != null) {
            sentryAndroidOptions2.getLogger().c(SentryLevel.DEBUG, "AppComponentsBreadcrumbsIntegration removed.", new Object[0]);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(@m8.g Configuration configuration) {
        if (this.f82198b != null) {
            Device.DeviceOrientation a10 = io.sentry.android.core.internal.util.f.a(this.f82197a.getResources().getConfiguration().orientation);
            String lowerCase = a10 != null ? a10.name().toLowerCase(Locale.ROOT) : "undefined";
            io.sentry.f fVar = new io.sentry.f();
            fVar.y(NotificationCompat.CATEGORY_NAVIGATION);
            fVar.u("device.orientation");
            fVar.v("position", lowerCase);
            fVar.w(SentryLevel.INFO);
            io.sentry.b0 b0Var = new io.sentry.b0();
            b0Var.m(t5.f83985h, configuration);
            this.f82198b.s(fVar, b0Var);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        b(null);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i4) {
        b(Integer.valueOf(i4));
    }
}
