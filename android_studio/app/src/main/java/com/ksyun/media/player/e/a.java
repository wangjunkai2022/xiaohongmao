package com.ksyun.media.player.e;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: SharePreferenceUtil.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f45481a = "ksy_white_list";

    /* renamed from: b  reason: collision with root package name */
    public static final String f45482b = "ksy_support_h264";

    /* renamed from: c  reason: collision with root package name */
    public static final String f45483c = "ksy_support_h265";

    /* renamed from: d  reason: collision with root package name */
    public static final String f45484d = "ksy_264_name";

    /* renamed from: e  reason: collision with root package name */
    public static final String f45485e = "ksy_265_name";

    /* renamed from: f  reason: collision with root package name */
    public static final String f45486f = "ksy_interval";

    /* renamed from: g  reason: collision with root package name */
    public static final String f45487g = "ksy_update";

    public static boolean a(Context context, String str, boolean z9) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getSharedPreferences(f45481a, 0)) == null) {
            return false;
        }
        return sharedPreferences.getBoolean(str, z9);
    }

    public static void b(Context context, String str, boolean z9) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences(f45481a, 0).edit();
        edit.putBoolean(str, z9);
        edit.commit();
    }

    public static long a(Context context, String str, long j4) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getSharedPreferences(f45481a, 0)) == null) {
            return -1L;
        }
        return sharedPreferences.getLong(str, j4);
    }

    public static String a(Context context, String str, String str2) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getSharedPreferences(f45481a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(str, str2);
    }

    public static void b(Context context, String str, long j4) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences(f45481a, 0).edit();
        edit.putLong(str, j4);
        edit.commit();
    }

    public static void b(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences(f45481a, 0).edit();
        edit.putString(str, str2);
        edit.commit();
    }
}
