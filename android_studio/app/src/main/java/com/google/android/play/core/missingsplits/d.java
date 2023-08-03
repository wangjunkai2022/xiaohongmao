package com.google.android.play.core.missingsplits;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.play.core.internal.h;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class d implements a {

    /* renamed from: e  reason: collision with root package name */
    private static final h f31798e = new h("MissingSplitsManagerImpl");

    /* renamed from: a  reason: collision with root package name */
    private final Context f31799a;

    /* renamed from: b  reason: collision with root package name */
    private final Runtime f31800b;

    /* renamed from: c  reason: collision with root package name */
    private final c f31801c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference f31802d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, Runtime runtime, c cVar, AtomicReference atomicReference) {
        this.f31799a = context;
        this.f31800b = runtime;
        this.f31801c = cVar;
        this.f31802d = atomicReference;
    }

    @TargetApi(21)
    private final List c() {
        List<ActivityManager.AppTask> appTasks = ((ActivityManager) this.f31799a.getSystemService("activity")).getAppTasks();
        return appTasks != null ? appTasks : Collections.emptyList();
    }

    @Override // com.google.android.play.core.missingsplits.a
    public final boolean a() {
        boolean booleanValue;
        boolean z9;
        Intent intent;
        Class<?> cls;
        boolean z10;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        Set emptySet;
        String[] strArr;
        synchronized (this.f31802d) {
            if (((Boolean) this.f31802d.get()) == null) {
                AtomicReference atomicReference = this.f31802d;
                try {
                    applicationInfo = this.f31799a.getPackageManager().getApplicationInfo(this.f31799a.getPackageName(), 128);
                } catch (PackageManager.NameNotFoundException unused) {
                    f31798e.e("App '%s' is not found in the PackageManager", this.f31799a.getPackageName());
                }
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    if (Boolean.TRUE.equals(bundle.get("com.android.vending.splits.required"))) {
                        try {
                            PackageInfo packageInfo = this.f31799a.getPackageManager().getPackageInfo(this.f31799a.getPackageName(), 0);
                            emptySet = new HashSet();
                            if (packageInfo != null && (strArr = packageInfo.splitNames) != null) {
                                Collections.addAll(emptySet, strArr);
                            }
                        } catch (PackageManager.NameNotFoundException unused2) {
                            f31798e.e("App '%s' is not found in PackageManager", this.f31799a.getPackageName());
                            emptySet = Collections.emptySet();
                        }
                        if (emptySet.isEmpty() || (emptySet.size() == 1 && emptySet.contains(""))) {
                            z10 = true;
                            atomicReference.set(Boolean.valueOf(z10));
                        }
                    }
                }
                z10 = false;
                atomicReference.set(Boolean.valueOf(z10));
            }
            booleanValue = ((Boolean) this.f31802d.get()).booleanValue();
        }
        if (booleanValue) {
            Iterator it = c().iterator();
            while (true) {
                if (it.hasNext()) {
                    ActivityManager.AppTask appTask = (ActivityManager.AppTask) it.next();
                    if (appTask.getTaskInfo() != null && appTask.getTaskInfo().baseIntent != null && appTask.getTaskInfo().baseIntent.getComponent() != null && PlayCoreMissingSplitsActivity.class.getName().equals(appTask.getTaskInfo().baseIntent.getComponent().getClassName())) {
                        break;
                    }
                } else {
                    loop1: for (ActivityManager.AppTask appTask2 : c()) {
                        ActivityManager.RecentTaskInfo taskInfo = appTask2.getTaskInfo();
                        if (taskInfo != null && (intent = taskInfo.baseIntent) != null && intent.getComponent() != null) {
                            ComponentName component = taskInfo.baseIntent.getComponent();
                            String className = component.getClassName();
                            try {
                                cls = Class.forName(className);
                            } catch (ClassNotFoundException unused3) {
                                f31798e.e("ClassNotFoundException when scanning class hierarchy of '%s'", className);
                                try {
                                    if (this.f31799a.getPackageManager().getActivityInfo(component, 0) != null) {
                                    }
                                } catch (PackageManager.NameNotFoundException unused4) {
                                }
                            }
                            while (cls != null) {
                                if (cls.equals(Activity.class)) {
                                    z9 = true;
                                    break;
                                }
                                Class<? super Object> superclass = cls.getSuperclass();
                                cls = superclass != cls ? superclass : null;
                            }
                            continue;
                        }
                    }
                    z9 = false;
                    this.f31801c.a();
                    for (ActivityManager.AppTask appTask3 : c()) {
                        appTask3.finishAndRemoveTask();
                    }
                    if (z9) {
                        this.f31799a.getPackageManager().setComponentEnabledSetting(new ComponentName(this.f31799a, PlayCoreMissingSplitsActivity.class), 1, 1);
                        this.f31799a.startActivity(new Intent(this.f31799a, PlayCoreMissingSplitsActivity.class).addFlags(884998144));
                    }
                    this.f31800b.exit(0);
                }
            }
            return true;
        }
        if (this.f31801c.c()) {
            this.f31801c.b();
            this.f31800b.exit(0);
        }
        return false;
    }

    @Override // com.google.android.play.core.missingsplits.a
    public final boolean b() {
        boolean booleanValue;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        Set emptySet;
        String[] strArr;
        synchronized (this.f31802d) {
            if (((Boolean) this.f31802d.get()) == null) {
                AtomicReference atomicReference = this.f31802d;
                boolean z9 = true;
                try {
                    applicationInfo = this.f31799a.getPackageManager().getApplicationInfo(this.f31799a.getPackageName(), 128);
                } catch (PackageManager.NameNotFoundException unused) {
                    f31798e.e("App '%s' is not found in the PackageManager", this.f31799a.getPackageName());
                }
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    if (Boolean.TRUE.equals(bundle.get("com.android.vending.splits.required"))) {
                        try {
                            PackageInfo packageInfo = this.f31799a.getPackageManager().getPackageInfo(this.f31799a.getPackageName(), 0);
                            emptySet = new HashSet();
                            if (packageInfo != null && (strArr = packageInfo.splitNames) != null) {
                                Collections.addAll(emptySet, strArr);
                            }
                        } catch (PackageManager.NameNotFoundException unused2) {
                            f31798e.e("App '%s' is not found in PackageManager", this.f31799a.getPackageName());
                            emptySet = Collections.emptySet();
                        }
                        if (!emptySet.isEmpty()) {
                            if (emptySet.size() == 1 && emptySet.contains("")) {
                            }
                        }
                        atomicReference.set(Boolean.valueOf(z9));
                    }
                }
                z9 = false;
                atomicReference.set(Boolean.valueOf(z9));
            }
            booleanValue = ((Boolean) this.f31802d.get()).booleanValue();
        }
        return booleanValue;
    }
}
