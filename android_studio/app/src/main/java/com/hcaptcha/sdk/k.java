package com.hcaptcha.sdk;

import android.util.Log;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final String f38401a = "hcaptcha";

    /* renamed from: b  reason: collision with root package name */
    public static boolean f38402b = false;

    private k() {
    }

    public static void a(String str) {
        if (f38402b) {
            Log.d(f38401a, str);
        }
    }

    public static void b(String str, Object... objArr) {
        if (f38402b) {
            Log.d(f38401a, String.format(Locale.getDefault(), str, objArr));
        }
    }

    public static void c(String str) {
        Log.w(f38401a, str);
    }
}
