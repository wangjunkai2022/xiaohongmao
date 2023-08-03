package com.google.android.gms.common.api.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class d implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: e  reason: collision with root package name */
    private static final d f28657e = new d();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f28658a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f28659b = new AtomicBoolean();
    @s7.a("sInstance")

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<a> f28660c = new ArrayList<>();
    @s7.a("sInstance")

    /* renamed from: d  reason: collision with root package name */
    private boolean f28661d = false;

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface a {
        @u2.a
        void a(boolean z9);
    }

    @u2.a
    private d() {
    }

    @NonNull
    @u2.a
    public static d b() {
        return f28657e;
    }

    @u2.a
    public static void c(@NonNull Application application) {
        d dVar = f28657e;
        synchronized (dVar) {
            if (!dVar.f28661d) {
                application.registerActivityLifecycleCallbacks(dVar);
                application.registerComponentCallbacks(dVar);
                dVar.f28661d = true;
            }
        }
    }

    private final void f(boolean z9) {
        synchronized (f28657e) {
            Iterator<a> it = this.f28660c.iterator();
            while (it.hasNext()) {
                it.next().a(z9);
            }
        }
    }

    @u2.a
    public void a(@NonNull a aVar) {
        synchronized (f28657e) {
            this.f28660c.add(aVar);
        }
    }

    @u2.a
    public boolean d() {
        return this.f28658a.get();
    }

    @u2.a
    @TargetApi(16)
    public boolean e(boolean z9) {
        if (!this.f28659b.get()) {
            if (!y2.v.e()) {
                return z9;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f28659b.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f28658a.set(true);
            }
        }
        return d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        boolean compareAndSet = this.f28658a.compareAndSet(true, false);
        this.f28659b.set(true);
        if (compareAndSet) {
            f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(@NonNull Activity activity) {
        boolean compareAndSet = this.f28658a.compareAndSet(true, false);
        this.f28659b.set(true);
        if (compareAndSet) {
            f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(@NonNull Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i4) {
        if (i4 == 20 && this.f28658a.compareAndSet(false, true)) {
            this.f28659b.set(true);
            f(true);
        }
    }
}
