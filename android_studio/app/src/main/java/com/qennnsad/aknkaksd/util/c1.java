package com.qennnsad.aknkaksd.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Process;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ProcessUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/util/c1;", "", "Landroid/app/Activity;", "activity", "", "d", "Landroid/content/Context;", "context", "c", "b", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final c1 f54588a = new c1();

    private c1() {
    }

    @JvmStatic
    public static final void c(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intent intent = new Intent(context, SplashActivity.class);
        intent.putExtra(SplashActivity.f52385j, true);
        intent.addFlags(335577088);
        context.startActivity(intent);
        f54588a.b(context);
    }

    @JvmStatic
    public static final void d(@m8.g final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        new Handler().postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.util.b1
            @Override // java.lang.Runnable
            public final void run() {
                c1.e(activity);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intent launchIntentForPackage = activity.getPackageManager().getLaunchIntentForPackage(activity.getPackageName());
        if (launchIntentForPackage == null) {
            return;
        }
        activity.finishAndRemoveTask();
        activity.startActivity(launchIntentForPackage);
        f54588a.b(activity);
        System.exit(10);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    public final void b(@m8.g Context context) {
        boolean contains;
        Intrinsics.checkNotNullParameter(context, "context");
        o0.a(BaseBeautyApplication.TAG, "Kill App Processes...");
        int myPid = Process.myPid();
        Object systemService = context.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            String packageName = context.getPackageName();
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (it.hasNext()) {
                ActivityManager.RunningAppProcessInfo next = it.next();
                boolean z9 = false;
                if (next != null && next.pid == myPid) {
                    z9 = true;
                }
                if (!z9) {
                    if ((next != null ? next.pkgList : null) != null) {
                        String[] packageNames = next.pkgList;
                        Intrinsics.checkNotNullExpressionValue(packageNames, "packageNames");
                        contains = ArraysKt___ArraysKt.contains(packageNames, packageName);
                        if (contains) {
                            o0.a(BaseBeautyApplication.TAG, "Killing sibling process: " + next.pid);
                            Process.killProcess(next.pid);
                        }
                    }
                }
            }
        }
        o0.g(BaseBeautyApplication.TAG, "Killing root process: " + myPid);
        Process.killProcess(myPid);
    }
}
