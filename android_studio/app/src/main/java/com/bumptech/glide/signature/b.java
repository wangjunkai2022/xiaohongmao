package com.bumptech.glide.signature;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: ApplicationVersionSignature.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f9683a = "AppVersionSignature";

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentMap<String, com.bumptech.glide.load.c> f9684b = new ConcurrentHashMap();

    private b() {
    }

    @Nullable
    private static PackageInfo a(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e4) {
            Log.e(f9683a, "Cannot resolve info for" + context.getPackageName(), e4);
            return null;
        }
    }

    @NonNull
    private static String b(@Nullable PackageInfo packageInfo) {
        if (packageInfo != null) {
            return String.valueOf(packageInfo.versionCode);
        }
        return UUID.randomUUID().toString();
    }

    @NonNull
    public static com.bumptech.glide.load.c c(@NonNull Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, com.bumptech.glide.load.c> concurrentMap = f9684b;
        com.bumptech.glide.load.c cVar = concurrentMap.get(packageName);
        if (cVar == null) {
            com.bumptech.glide.load.c d4 = d(context);
            com.bumptech.glide.load.c putIfAbsent = concurrentMap.putIfAbsent(packageName, d4);
            return putIfAbsent == null ? d4 : putIfAbsent;
        }
        return cVar;
    }

    @NonNull
    private static com.bumptech.glide.load.c d(@NonNull Context context) {
        return new e(b(a(context)));
    }

    @VisibleForTesting
    static void e() {
        f9684b.clear();
    }
}
