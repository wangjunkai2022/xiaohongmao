package com.iab.omid.library.giphy.d;

import android.os.Build;
import io.sentry.protocol.h;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a {
    public static String a() {
        return Build.MANUFACTURER + "; " + Build.MODEL;
    }

    public static String b() {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    public static String c() {
        return "Android";
    }

    public static JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        b.f(jSONObject, "deviceType", a());
        b.f(jSONObject, "osVersion", b());
        b.f(jSONObject, h.f83693h, c());
        return jSONObject;
    }
}
