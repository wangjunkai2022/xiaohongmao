package io.sentry.android.core;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: PhoneStateBreadcrumbsIntegration.java */
/* loaded from: classes4.dex */
public final class e1 implements io.sentry.z0, Closeable {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f82200a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private SentryAndroidOptions f82201b;
    @m8.h
    @m8.k

    /* renamed from: c  reason: collision with root package name */
    a f82202c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private TelephonyManager f82203d;

    /* compiled from: PhoneStateBreadcrumbsIntegration.java */
    /* loaded from: classes4.dex */
    static final class a extends PhoneStateListener {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final io.sentry.n0 f82204a;

        a(@m8.g io.sentry.n0 n0Var) {
            this.f82204a = n0Var;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i4, String str) {
            if (i4 == 1) {
                io.sentry.f fVar = new io.sentry.f();
                fVar.y("system");
                fVar.u("device.event");
                fVar.v(com.alipay.sdk.packet.d.f6907q, "CALL_STATE_RINGING");
                fVar.x("Device ringing");
                fVar.w(SentryLevel.INFO);
                this.f82204a.g(fVar);
            }
        }
    }

    public e1(@m8.g Context context) {
        this.f82200a = (Context) io.sentry.util.l.c(context, "Context is required");
    }

    @Override // io.sentry.z0
    public void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        io.sentry.util.l.c(n0Var, "Hub is required");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) io.sentry.util.l.c(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.f82201b = sentryAndroidOptions;
        io.sentry.o0 logger = sentryAndroidOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "enableSystemEventBreadcrumbs enabled: %s", Boolean.valueOf(this.f82201b.isEnableSystemEventBreadcrumbs()));
        if (this.f82201b.isEnableSystemEventBreadcrumbs() && io.sentry.android.core.internal.util.i.a(this.f82200a, "android.permission.READ_PHONE_STATE")) {
            TelephonyManager telephonyManager = (TelephonyManager) this.f82200a.getSystemService("phone");
            this.f82203d = telephonyManager;
            if (telephonyManager != null) {
                try {
                    a aVar = new a(n0Var);
                    this.f82202c = aVar;
                    this.f82203d.listen(aVar, 32);
                    sentryOptions.getLogger().c(sentryLevel, "PhoneStateBreadcrumbsIntegration installed.", new Object[0]);
                    return;
                } catch (Throwable th) {
                    this.f82201b.getLogger().a(SentryLevel.INFO, th, "TelephonyManager is not available or ready to use.", new Object[0]);
                    return;
                }
            }
            this.f82201b.getLogger().c(SentryLevel.INFO, "TelephonyManager is not available", new Object[0]);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a aVar;
        TelephonyManager telephonyManager = this.f82203d;
        if (telephonyManager == null || (aVar = this.f82202c) == null) {
            return;
        }
        telephonyManager.listen(aVar, 0);
        this.f82202c = null;
        SentryAndroidOptions sentryAndroidOptions = this.f82201b;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "PhoneStateBreadcrumbsIntegration removed.", new Object[0]);
        }
    }
}
