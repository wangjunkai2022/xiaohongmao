package com.alipay.sdk.util;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class j {
    private static String a() {
        return "1234567812345678A1F20E7=";
    }

    public static void b(Context context, String str, String str2) {
        try {
            String a10 = n.e.a("1234567812345678A1F20E7=", str2);
            if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(a10)) {
                com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f6781m, com.alipay.sdk.app.statistic.c.f6790v, String.format("%s,%s", str, str2));
            }
            PreferenceManager.getDefaultSharedPreferences(context).edit().putString(str, a10).commit();
        } catch (Throwable unused) {
        }
    }

    private static boolean c(Context context, String str) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context).contains(str);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String d(Context context, String str, String str2) {
        try {
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString(str, str2);
            r0 = TextUtils.isEmpty(string) ? null : n.e.c("1234567812345678A1F20E7=", string);
            if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(r0)) {
                com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f6781m, com.alipay.sdk.app.statistic.c.f6789u, String.format("%s,%s", str, string));
            }
        } catch (Exception unused) {
        }
        return r0;
    }

    private static void e(Context context, String str) {
        try {
            PreferenceManager.getDefaultSharedPreferences(context).edit().remove(str).commit();
        } catch (Throwable unused) {
        }
    }
}
