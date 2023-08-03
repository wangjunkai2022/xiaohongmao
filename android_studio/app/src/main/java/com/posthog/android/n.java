package com.posthog.android;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Bundle;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PostHogActivityLifecycleCallbacks.java */
/* loaded from: classes3.dex */
public class n implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private PostHog f47511a;

    /* renamed from: b  reason: collision with root package name */
    private ExecutorService f47512b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f47513c;

    /* renamed from: d  reason: collision with root package name */
    private Boolean f47514d;

    /* renamed from: e  reason: collision with root package name */
    private Boolean f47515e;

    /* renamed from: f  reason: collision with root package name */
    private PackageInfo f47516f;

    /* renamed from: g  reason: collision with root package name */
    private AtomicBoolean f47517g;

    /* renamed from: h  reason: collision with root package name */
    private AtomicInteger f47518h;

    /* renamed from: i  reason: collision with root package name */
    private AtomicBoolean f47519i;

    /* renamed from: j  reason: collision with root package name */
    private AtomicBoolean f47520j;

    /* compiled from: PostHogActivityLifecycleCallbacks.java */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private PostHog f47521a;

        /* renamed from: b  reason: collision with root package name */
        private ExecutorService f47522b;

        /* renamed from: c  reason: collision with root package name */
        private Boolean f47523c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f47524d;

        /* renamed from: e  reason: collision with root package name */
        private Boolean f47525e;

        /* renamed from: f  reason: collision with root package name */
        private PackageInfo f47526f;

        public n a() {
            return new n(this.f47521a, this.f47522b, this.f47523c, this.f47524d, this.f47525e, this.f47526f);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b b(Boolean bool) {
            this.f47524d = bool;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b c(PackageInfo packageInfo) {
            this.f47526f = packageInfo;
            return this;
        }

        public b d(PostHog postHog) {
            this.f47521a = postHog;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b e(ExecutorService executorService) {
            this.f47522b = executorService;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b f(Boolean bool) {
            this.f47523c = bool;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b g(Boolean bool) {
            this.f47525e = bool;
            return this;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intent intent;
        this.f47511a.N(h.e(activity, bundle));
        if (this.f47517g.getAndSet(true) || !this.f47513c.booleanValue()) {
            return;
        }
        this.f47518h.set(0);
        this.f47520j.set(true);
        this.f47511a.h();
        if (!this.f47514d.booleanValue() || (intent = activity.getIntent()) == null || intent.getData() == null) {
            return;
        }
        s sVar = new s();
        Uri data = intent.getData();
        for (String str : data.getQueryParameterNames()) {
            String queryParameter = data.getQueryParameter(str);
            if (queryParameter != null && !queryParameter.trim().isEmpty()) {
                sVar.put(str, queryParameter);
            }
        }
        sVar.put("url", data.toString());
        this.f47511a.f("Deep Link Opened", sVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        this.f47511a.N(h.f(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f47511a.N(h.g(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f47511a.N(h.h(activity));
        if (this.f47513c.booleanValue() && this.f47518h.incrementAndGet() == 1 && !this.f47519i.get()) {
            s sVar = new s();
            if (this.f47520j.get()) {
                sVar.o("version", this.f47516f.versionName).o("build", Integer.valueOf(this.f47516f.versionCode));
            }
            sVar.o("from_background", Boolean.valueOf(true ^ this.f47520j.getAndSet(false)));
            this.f47511a.f("Application Opened", sVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f47511a.N(h.i(activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (this.f47515e.booleanValue()) {
            this.f47511a.J(activity);
        }
        this.f47511a.N(h.j(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        this.f47511a.N(h.k(activity));
        this.f47519i.set(activity.isChangingConfigurations());
        if (this.f47513c.booleanValue() && this.f47518h.decrementAndGet() == 0 && !this.f47519i.get()) {
            this.f47511a.e("Application Backgrounded");
        }
    }

    private n(PostHog postHog, ExecutorService executorService, Boolean bool, Boolean bool2, Boolean bool3, PackageInfo packageInfo) {
        this.f47517g = new AtomicBoolean(false);
        this.f47518h = new AtomicInteger(1);
        this.f47519i = new AtomicBoolean(false);
        this.f47520j = new AtomicBoolean(false);
        this.f47511a = postHog;
        this.f47512b = executorService;
        this.f47513c = bool;
        this.f47514d = bool2;
        this.f47515e = bool3;
        this.f47516f = packageInfo;
    }
}
