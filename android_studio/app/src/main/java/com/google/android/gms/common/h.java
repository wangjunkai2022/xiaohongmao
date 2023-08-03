package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.l1;
import com.google.android.gms.common.m;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@com.google.android.gms.common.internal.y
/* loaded from: classes2.dex */
public class h {
    @u2.a
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final int f29014a = 12451000;
    @NonNull
    @u2.a
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final String f29015b = "com.google.android.gms";
    @NonNull
    @u2.a

    /* renamed from: c  reason: collision with root package name */
    public static final String f29016c = "com.google.android.play.games";
    @NonNull
    @u2.a

    /* renamed from: d  reason: collision with root package name */
    public static final String f29017d = "com.android.vending";
    @u2.a

    /* renamed from: e  reason: collision with root package name */
    static final int f29018e = 39789;
    @u2.a

    /* renamed from: f  reason: collision with root package name */
    static final int f29019f = 10436;

    /* renamed from: h  reason: collision with root package name */
    private static boolean f29021h = false;
    @y2.d0

    /* renamed from: i  reason: collision with root package name */
    static boolean f29022i = false;
    @u2.a
    @y2.d0

    /* renamed from: g  reason: collision with root package name */
    static final AtomicBoolean f29020g = new AtomicBoolean();

    /* renamed from: j  reason: collision with root package name */
    private static final AtomicBoolean f29023j = new AtomicBoolean();

    @u2.a
    @Deprecated
    public static void a(@NonNull Context context) {
        if (f29020g.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.cancel(f29019f);
            }
        } catch (SecurityException unused) {
        }
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    public static void b() {
        f29023j.set(true);
    }

    @u2.a
    @Deprecated
    public static void c(@NonNull Context context, int i4) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int k10 = f.i().k(context, i4);
        if (k10 != 0) {
            Intent e4 = f.i().e(context, k10, "e");
            StringBuilder sb = new StringBuilder(57);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(k10);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (e4 == null) {
                throw new GooglePlayServicesNotAvailableException(k10);
            }
            throw new GooglePlayServicesRepairableException(k10, "Google Play Services not available", e4);
        }
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    @Deprecated
    public static int d(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    @Deprecated
    public static int e(@NonNull Context context) {
        com.google.android.gms.common.internal.u.q(true);
        return y2.e.a(context, context.getPackageName());
    }

    @Nullable
    @u2.a
    @Deprecated
    public static PendingIntent f(int i4, @NonNull Context context, int i10) {
        return f.i().f(context, i4, i10);
    }

    @NonNull
    @u2.a
    @Deprecated
    @y2.d0
    public static String g(int i4) {
        return ConnectionResult.zza(i4);
    }

    @u2.a
    @Deprecated
    @Nullable
    @com.google.android.gms.common.internal.y
    public static Intent h(int i4) {
        return f.i().e(null, i4, null);
    }

    @Nullable
    @u2.a
    public static Context i(@NonNull Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Nullable
    @u2.a
    public static Resources j(@NonNull Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    public static boolean k(@NonNull Context context) {
        try {
            if (!f29022i) {
                PackageInfo f10 = com.google.android.gms.common.wrappers.c.a(context).f("com.google.android.gms", 64);
                i.a(context);
                if (f10 == null || i.f(f10, false) || !i.f(f10, true)) {
                    f29021h = false;
                } else {
                    f29021h = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e4) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e4);
        } finally {
            f29022i = true;
        }
        return f29021h || !y2.l.j();
    }

    @com.google.android.gms.common.internal.l
    @u2.a
    @Deprecated
    public static int l(@NonNull Context context) {
        return m(context, f29014a);
    }

    @u2.a
    @Deprecated
    public static int m(@NonNull Context context, int i4) {
        PackageInfo packageInfo;
        try {
            context.getResources().getString(m.b.f29232a);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f29023j.get()) {
            int a10 = l1.a(context);
            if (a10 != 0) {
                if (a10 != f29014a) {
                    throw new GooglePlayServicesIncorrectManifestValueException(a10);
                }
            } else {
                throw new GooglePlayServicesMissingManifestValueException();
            }
        }
        boolean z9 = (y2.l.l(context) || y2.l.n(context)) ? false : true;
        com.google.android.gms.common.internal.u.a(i4 >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z9) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            i.a(context);
            if (!i.f(packageInfo2, true)) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
            } else {
                if (z9) {
                    com.google.android.gms.common.internal.u.k(packageInfo);
                    if (!i.f(packageInfo, true)) {
                        Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                    }
                }
                if (z9 && packageInfo != null && !packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
                } else if (y2.f0.a(packageInfo2.versionCode) < y2.f0.a(i4)) {
                    int i10 = packageInfo2.versionCode;
                    StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 82);
                    sb.append("Google Play services out of date for ");
                    sb.append(packageName);
                    sb.append(".  Requires ");
                    sb.append(i4);
                    sb.append(" but found ");
                    sb.append(i10);
                    Log.w("GooglePlayServicesUtil", sb.toString());
                    return 2;
                } else {
                    ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        try {
                            applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                        } catch (PackageManager.NameNotFoundException e4) {
                            Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e4);
                            return 1;
                        }
                    }
                    return !applicationInfo.enabled ? 3 : 0;
                }
            }
            return 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            return 1;
        }
    }

    @u2.a
    @Deprecated
    public static boolean n(@NonNull Context context, int i4) {
        return y2.c0.a(context, i4);
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    @Deprecated
    public static boolean o(@NonNull Context context, int i4) {
        if (i4 == 18) {
            return true;
        }
        if (i4 == 1) {
            return u(context, "com.google.android.gms");
        }
        return false;
    }

    @u2.a
    @com.google.android.gms.common.internal.y
    @Deprecated
    public static boolean p(@NonNull Context context, int i4) {
        if (i4 == 9) {
            return u(context, "com.android.vending");
        }
        return false;
    }

    @u2.a
    @TargetApi(18)
    public static boolean q(@NonNull Context context) {
        if (y2.v.g()) {
            Object systemService = context.getSystemService("user");
            com.google.android.gms.common.internal.u.k(systemService);
            Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
            return applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
        }
        return false;
    }

    @u2.a
    @Deprecated
    @com.google.android.gms.common.internal.y
    @y2.d0
    public static boolean r(@NonNull Context context) {
        return y2.l.f(context);
    }

    @u2.a
    @Deprecated
    public static boolean s(int i4) {
        return i4 == 1 || i4 == 2 || i4 == 3 || i4 == 9;
    }

    @u2.a
    @TargetApi(19)
    @Deprecated
    public static boolean t(@NonNull Context context, int i4, @NonNull String str) {
        return y2.c0.b(context, i4, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    public static boolean u(Context context, String str) {
        ApplicationInfo applicationInfo;
        boolean equals = str.equals("com.google.android.gms");
        if (y2.v.j()) {
            try {
                for (PackageInstaller.SessionInfo sessionInfo : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                    if (str.equals(sessionInfo.getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        if (equals) {
            return applicationInfo.enabled;
        }
        return applicationInfo.enabled && !q(context);
    }
}
