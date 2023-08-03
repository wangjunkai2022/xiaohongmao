package com.ksy.statlibrary.util;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes3.dex */
public class PreferenceUtil {
    public static final String INTERVAL = "interval";
    private static final String INTERVAL_KEY = "interval_key";
    private static final String LAST_INTERVAL_KEY = "last_interval_time";
    private static SharedPreferences.Editor mEditor;
    private static SharedPreferences mSharedPreferences;

    public static void commitBoolean(String str, boolean z9) {
        SharedPreferences sharedPreferences = mSharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        mEditor = edit;
        edit.putBoolean(str, z9);
        mEditor.commit();
    }

    public static void commitInt(String str, int i4) {
        SharedPreferences sharedPreferences = mSharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        mEditor = edit;
        edit.putInt(str, i4);
        mEditor.commit();
    }

    public static void commitLong(String str, long j4) {
        SharedPreferences sharedPreferences = mSharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        mEditor = edit;
        edit.putLong(str, j4);
        mEditor.commit();
    }

    public static void commitString(String str, String str2) {
        SharedPreferences sharedPreferences = mSharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        mEditor = edit;
        edit.putString(str, str2);
        mEditor.commit();
    }

    public static Boolean getBoolean(String str, boolean z9) {
        SharedPreferences sharedPreferences = mSharedPreferences;
        if (sharedPreferences == null) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z9));
    }

    public static int getInt(String str, int i4) {
        SharedPreferences sharedPreferences = mSharedPreferences;
        return sharedPreferences == null ? i4 : sharedPreferences.getInt(str, i4);
    }

    public static int getIntervalTime() {
        return getInt(INTERVAL_KEY, 9999);
    }

    public static long getLastIntervalTime() {
        return getLong(LAST_INTERVAL_KEY, 0L);
    }

    public static long getLong(String str, long j4) {
        SharedPreferences sharedPreferences = mSharedPreferences;
        return sharedPreferences == null ? j4 : sharedPreferences.getLong(str, j4);
    }

    public static String getString(String str, String str2) {
        SharedPreferences sharedPreferences = mSharedPreferences;
        return sharedPreferences == null ? str2 : sharedPreferences.getString(str, str2);
    }

    public static void init(Context context) {
        if (mSharedPreferences != null || context == null) {
            return;
        }
        mSharedPreferences = context.getSharedPreferences(INTERVAL, 0);
    }

    public static boolean isAfterTwoWeek(long j4) {
        return getLastIntervalTime() == 0 || j4 - getLastIntervalTime() >= 1209600000;
    }

    public static void removeAll() {
        SharedPreferences sharedPreferences = mSharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        mEditor = edit;
        edit.clear();
        mEditor.commit();
    }

    public static void removeKey(String str) {
        SharedPreferences sharedPreferences = mSharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        mEditor = edit;
        edit.remove(str);
        mEditor.commit();
    }

    public static void saveInterval(int i4) {
        commitInt(INTERVAL_KEY, i4);
    }

    public static void saveLastIntervalTime(long j4) {
        commitLong(LAST_INTERVAL_KEY, j4);
    }
}
