package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import io.sentry.j3;
import m8.a;

/* compiled from: SentryPerformanceProvider.java */
@a.c
/* loaded from: classes4.dex */
public final class o1 extends s0 implements Application.ActivityLifecycleCallbacks {
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static j3 f82546d = q.a();

    /* renamed from: e  reason: collision with root package name */
    private static long f82547e = SystemClock.uptimeMillis();

    /* renamed from: b  reason: collision with root package name */
    private boolean f82548b = false;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Application f82549c;

    public o1() {
        i0.d().k(f82547e, f82546d);
    }

    @m8.k
    static void a(long j4, @m8.g j3 j3Var) {
        f82547e = j4;
        f82546d = j3Var;
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        if (!o1.class.getName().equals(providerInfo.authority)) {
            super.attachInfo(context, providerInfo);
            return;
        }
        throw new IllegalStateException("An applicationId is required to fulfill the manifest placeholder.");
    }

    @Override // android.content.ContentProvider
    @m8.h
    public String getType(@m8.g Uri uri) {
        return null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@m8.g Activity activity, @m8.h Bundle bundle) {
        if (this.f82548b) {
            return;
        }
        i0.d().l(bundle == null);
        Application application = this.f82549c;
        if (application != null) {
            application.unregisterActivityLifecycleCallbacks(this);
        }
        this.f82548b = true;
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
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@m8.g Activity activity) {
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        if (context == null) {
            return false;
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        if (context instanceof Application) {
            Application application = (Application) context;
            this.f82549c = application;
            application.registerActivityLifecycleCallbacks(this);
            return true;
        }
        return true;
    }
}
