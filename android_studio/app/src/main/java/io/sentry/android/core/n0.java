package io.sentry.android.core;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import io.sentry.SentryLevel;
import java.util.List;

/* compiled from: ContextUtils.java */
/* loaded from: classes4.dex */
final class n0 {
    private n0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    @SuppressLint({"NewApi"})
    public static ApplicationInfo a(@m8.g Context context, long j4, @m8.g m0 m0Var) throws PackageManager.NameNotFoundException {
        if (m0Var.d() >= 33) {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), PackageManager.ApplicationInfoFlags.of(j4));
        }
        return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    @SuppressLint({"NewApi"})
    public static PackageInfo b(@m8.g Context context, int i4, @m8.g io.sentry.o0 o0Var, @m8.g m0 m0Var) {
        try {
            if (m0Var.d() >= 33) {
                return context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(i4));
            }
            return context.getPackageManager().getPackageInfo(context.getPackageName(), i4);
        } catch (Throwable th) {
            o0Var.b(SentryLevel.ERROR, "Error getting package info.", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public static PackageInfo c(@m8.g Context context, @m8.g io.sentry.o0 o0Var, @m8.g m0 m0Var) {
        return b(context, 0, o0Var, m0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    @SuppressLint({"NewApi"})
    public static String d(@m8.g PackageInfo packageInfo, @m8.g m0 m0Var) {
        if (m0Var.d() >= 28) {
            return Long.toString(packageInfo.getLongVersionCode());
        }
        return e(packageInfo);
    }

    @m8.g
    private static String e(@m8.g PackageInfo packageInfo) {
        return Integer.toString(packageInfo.versionCode);
    }

    @m8.h
    static String f(@m8.g PackageInfo packageInfo) {
        return packageInfo.versionName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(@m8.g Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            Object systemService = context.getSystemService("activity");
            if (!(systemService instanceof ActivityManager) || (runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses()) == null) {
                return false;
            }
            int myPid = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.importance == 100;
                }
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
