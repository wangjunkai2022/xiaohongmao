package io.sentry.android.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.t5;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: SystemEventsBreadcrumbsIntegration.java */
/* loaded from: classes4.dex */
public final class p1 implements io.sentry.z0, Closeable {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f82561a;
    @m8.h
    @m8.k

    /* renamed from: b  reason: collision with root package name */
    a f82562b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private SentryAndroidOptions f82563c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final List<String> f82564d;

    /* compiled from: SystemEventsBreadcrumbsIntegration.java */
    /* loaded from: classes4.dex */
    static final class a extends BroadcastReceiver {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final io.sentry.n0 f82565a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final io.sentry.o0 f82566b;

        a(@m8.g io.sentry.n0 n0Var, @m8.g io.sentry.o0 o0Var) {
            this.f82565a = n0Var;
            this.f82566b = o0Var;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            io.sentry.f fVar = new io.sentry.f();
            fVar.y("system");
            fVar.u("device.event");
            String action = intent.getAction();
            String e4 = io.sentry.util.q.e(action);
            if (e4 != null) {
                fVar.v(com.alipay.sdk.packet.d.f6907q, e4);
            }
            Bundle extras = intent.getExtras();
            HashMap hashMap = new HashMap();
            if (extras != null && !extras.isEmpty()) {
                for (String str : extras.keySet()) {
                    try {
                        Object obj = extras.get(str);
                        if (obj != null) {
                            hashMap.put(str, obj.toString());
                        }
                    } catch (Throwable th) {
                        this.f82566b.a(SentryLevel.ERROR, th, "%s key of the %s action threw an error.", str, action);
                    }
                }
                fVar.v("extras", hashMap);
            }
            fVar.w(SentryLevel.INFO);
            io.sentry.b0 b0Var = new io.sentry.b0();
            b0Var.m(t5.f83986i, intent);
            this.f82565a.s(fVar, b0Var);
        }
    }

    public p1(@m8.g Context context) {
        this(context, b());
    }

    @m8.g
    private static List<String> b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.appwidget.action.APPWIDGET_DELETED");
        arrayList.add("android.appwidget.action.APPWIDGET_DISABLED");
        arrayList.add("android.appwidget.action.APPWIDGET_ENABLED");
        arrayList.add("android.appwidget.action.APPWIDGET_HOST_RESTORED");
        arrayList.add("android.appwidget.action.APPWIDGET_RESTORED");
        arrayList.add("android.appwidget.action.APPWIDGET_UPDATE");
        arrayList.add("android.appwidget.action.APPWIDGET_UPDATE_OPTIONS");
        arrayList.add("android.intent.action.ACTION_POWER_CONNECTED");
        arrayList.add("android.intent.action.ACTION_POWER_DISCONNECTED");
        arrayList.add("android.intent.action.ACTION_SHUTDOWN");
        arrayList.add("android.intent.action.AIRPLANE_MODE");
        arrayList.add("android.intent.action.BATTERY_LOW");
        arrayList.add("android.intent.action.BATTERY_OKAY");
        arrayList.add("android.intent.action.BOOT_COMPLETED");
        arrayList.add("android.intent.action.CAMERA_BUTTON");
        arrayList.add("android.intent.action.CONFIGURATION_CHANGED");
        arrayList.add("android.intent.action.CONTENT_CHANGED");
        arrayList.add("android.intent.action.DATE_CHANGED");
        arrayList.add("android.intent.action.DEVICE_STORAGE_LOW");
        arrayList.add("android.intent.action.DEVICE_STORAGE_OK");
        arrayList.add("android.intent.action.DOCK_EVENT");
        arrayList.add("android.intent.action.DREAMING_STARTED");
        arrayList.add("android.intent.action.DREAMING_STOPPED");
        arrayList.add("android.intent.action.INPUT_METHOD_CHANGED");
        arrayList.add("android.intent.action.LOCALE_CHANGED");
        arrayList.add("android.intent.action.REBOOT");
        arrayList.add("android.intent.action.SCREEN_OFF");
        arrayList.add("android.intent.action.SCREEN_ON");
        arrayList.add("android.intent.action.TIMEZONE_CHANGED");
        arrayList.add("android.intent.action.TIME_SET");
        arrayList.add("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        arrayList.add("android.os.action.POWER_SAVE_MODE_CHANGED");
        arrayList.add("android.intent.action.APP_ERROR");
        arrayList.add("android.intent.action.BUG_REPORT");
        arrayList.add("android.intent.action.MEDIA_BAD_REMOVAL");
        arrayList.add("android.intent.action.MEDIA_MOUNTED");
        arrayList.add("android.intent.action.MEDIA_UNMOUNTABLE");
        arrayList.add("android.intent.action.MEDIA_UNMOUNTED");
        return arrayList;
    }

    @Override // io.sentry.z0
    public void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        io.sentry.util.l.c(n0Var, "Hub is required");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) io.sentry.util.l.c(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.f82563c = sentryAndroidOptions;
        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "SystemEventsBreadcrumbsIntegration enabled: %s", Boolean.valueOf(this.f82563c.isEnableSystemEventBreadcrumbs()));
        if (this.f82563c.isEnableSystemEventBreadcrumbs()) {
            this.f82562b = new a(n0Var, this.f82563c.getLogger());
            IntentFilter intentFilter = new IntentFilter();
            for (String str : this.f82564d) {
                intentFilter.addAction(str);
            }
            try {
                this.f82561a.registerReceiver(this.f82562b, intentFilter);
                this.f82563c.getLogger().c(SentryLevel.DEBUG, "SystemEventsBreadcrumbsIntegration installed.", new Object[0]);
            } catch (Throwable th) {
                this.f82563c.setEnableSystemEventBreadcrumbs(false);
                this.f82563c.getLogger().b(SentryLevel.ERROR, "Failed to initialize SystemEventsBreadcrumbsIntegration.", th);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a aVar = this.f82562b;
        if (aVar != null) {
            this.f82561a.unregisterReceiver(aVar);
            this.f82562b = null;
            SentryAndroidOptions sentryAndroidOptions = this.f82563c;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "SystemEventsBreadcrumbsIntegration remove.", new Object[0]);
            }
        }
    }

    public p1(@m8.g Context context, @m8.g List<String> list) {
        this.f82561a = (Context) io.sentry.util.l.c(context, "Context is required");
        this.f82564d = (List) io.sentry.util.l.c(list, "Actions list is required");
    }
}
