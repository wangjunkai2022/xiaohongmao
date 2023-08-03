package com.qennnsad.aknkaksd.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;

/* compiled from: Packages.java */
/* loaded from: classes3.dex */
public final class x0 {

    /* compiled from: Packages.java */
    /* loaded from: classes3.dex */
    class a implements b {
        a() {
        }

        @Override // com.qennnsad.aknkaksd.util.x0.b
        public void a() {
            throw new RuntimeException();
        }
    }

    /* compiled from: Packages.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a();
    }

    public static String a(Context context, String str) {
        try {
            Object obj = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get(str);
            if (obj != null) {
                return obj.toString();
            }
            return null;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static int b(Context context) {
        return c(context, context.getPackageName());
    }

    public static int c(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    public static String d(Context context) {
        return e(context, context.getPackageName());
    }

    public static String e(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String f(Context context, Boolean bool) {
        String str = bool.booleanValue() ? "-test-server" : "";
        return d(context) + " (" + b(context) + ")" + str;
    }

    public static void g(Activity activity, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        h(activity, new File(str));
    }

    public static void h(Context context, File file) {
        if (file.exists() && file.isFile()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            b6.a.e(context, intent, "application/vnd.android.package-archive", file, true);
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
    }

    public static void i(Context context, b bVar) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context.getPackageName()));
        intent.addFlags(268435456);
        if (k(context, intent) <= 0) {
            if (bVar != null) {
                bVar.a();
                return;
            }
            return;
        }
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            bVar.a();
        }
    }

    public static void j(Context context) {
        i(context, new a());
    }

    public static int k(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size();
    }
}
