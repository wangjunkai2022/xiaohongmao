package com.clj.fastble.utils;

import android.util.Log;

/* compiled from: BleLog.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f9893a = true;

    /* renamed from: b  reason: collision with root package name */
    private static String f9894b = "FastBle";

    public static void a(String str) {
        if (!f9893a || str == null) {
            return;
        }
        Log.d(f9894b, str);
    }

    public static void b(String str) {
        if (!f9893a || str == null) {
            return;
        }
        Log.e(f9894b, str);
    }

    public static void c(String str) {
        if (!f9893a || str == null) {
            return;
        }
        Log.i(f9894b, str);
    }

    public static void d(String str) {
        if (!f9893a || str == null) {
            return;
        }
        Log.w(f9894b, str);
    }
}
