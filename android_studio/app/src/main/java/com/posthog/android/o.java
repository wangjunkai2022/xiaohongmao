package com.posthog.android;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.posthog.android.internal.Utils;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CountDownLatch;

/* compiled from: PostHogContext.java */
/* loaded from: classes3.dex */
public class o extends x {

    /* renamed from: b  reason: collision with root package name */
    private static final String f47527b = "$locale";

    /* renamed from: c  reason: collision with root package name */
    private static final String f47528c = "$user_agent";

    /* renamed from: d  reason: collision with root package name */
    private static final String f47529d = "$timezone";

    /* renamed from: e  reason: collision with root package name */
    private static final String f47530e = "$app_name";

    /* renamed from: f  reason: collision with root package name */
    private static final String f47531f = "$app_version";

    /* renamed from: g  reason: collision with root package name */
    private static final String f47532g = "$app_namespace";

    /* renamed from: h  reason: collision with root package name */
    private static final String f47533h = "$app_build";

    /* renamed from: i  reason: collision with root package name */
    private static final String f47534i = "$device_id";

    /* renamed from: j  reason: collision with root package name */
    private static final String f47535j = "$device_manufacturer";

    /* renamed from: k  reason: collision with root package name */
    private static final String f47536k = "$device_model";

    /* renamed from: l  reason: collision with root package name */
    private static final String f47537l = "$device_name";

    /* renamed from: m  reason: collision with root package name */
    private static final String f47538m = "$device_token";

    /* renamed from: n  reason: collision with root package name */
    private static final String f47539n = "$device_advertising_id";

    /* renamed from: o  reason: collision with root package name */
    private static final String f47540o = "$device_ad_capturing_enabled";

    /* renamed from: p  reason: collision with root package name */
    private static final String f47541p = "$lib";

    /* renamed from: q  reason: collision with root package name */
    private static final String f47542q = "$lib_version";

    /* renamed from: r  reason: collision with root package name */
    private static final String f47543r = "$network_bluetooth";

    /* renamed from: s  reason: collision with root package name */
    private static final String f47544s = "$network_carrier";

    /* renamed from: t  reason: collision with root package name */
    private static final String f47545t = "$network_cellular";

    /* renamed from: u  reason: collision with root package name */
    private static final String f47546u = "$network_wifi";

    /* renamed from: v  reason: collision with root package name */
    private static final String f47547v = "$os_name";

    /* renamed from: w  reason: collision with root package name */
    private static final String f47548w = "$os_version";

    /* renamed from: x  reason: collision with root package name */
    private static final String f47549x = "$screen_density";

    /* renamed from: y  reason: collision with root package name */
    private static final String f47550y = "$screen_height";

    /* renamed from: z  reason: collision with root package name */
    private static final String f47551z = "$screen_width";

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Map<String, Object> map) {
        super(map);
    }

    static void D(Map<String, Object> map, String str, CharSequence charSequence) {
        if (Utils.w(charSequence)) {
            map.put(str, "undefined");
        } else {
            map.put(str, charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized o t(Context context, s sVar, boolean z9) {
        o oVar;
        synchronized (o.class) {
            oVar = new o(new Utils.NullableConcurrentHashMap());
            oVar.v(context);
            oVar.w(context, sVar, z9);
            oVar.y();
            oVar.put(f47527b, Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry());
            oVar.A(context);
            oVar.B();
            oVar.C(context);
            D(oVar, f47528c, System.getProperty("http.agent"));
            D(oVar, f47529d, TimeZone.getDefault().getID());
        }
        return oVar;
    }

    @SuppressLint({"MissingPermission"})
    void A(Context context) {
        ConnectivityManager connectivityManager;
        if (Utils.r(context, "android.permission.ACCESS_NETWORK_STATE") && (connectivityManager = (ConnectivityManager) Utils.o(context, "connectivity")) != null) {
            boolean z9 = true;
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            put(f47546u, Boolean.valueOf(networkInfo != null && networkInfo.isConnected()));
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(7);
            put(f47543r, Boolean.valueOf(networkInfo2 != null && networkInfo2.isConnected()));
            NetworkInfo networkInfo3 = connectivityManager.getNetworkInfo(0);
            put(f47545t, Boolean.valueOf((networkInfo3 == null || !networkInfo3.isConnected()) ? false : false));
        }
        TelephonyManager telephonyManager = (TelephonyManager) Utils.o(context, "phone");
        if (telephonyManager != null) {
            put(f47544s, telephonyManager.getNetworkOperatorName());
        } else {
            put(f47544s, "unknown");
        }
    }

    void B() {
        put(f47547v, "Android");
        put(f47548w, Build.VERSION.RELEASE);
    }

    void C(Context context) {
        Display defaultDisplay = ((WindowManager) Utils.o(context, "window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        put(f47549x, Float.valueOf(displayMetrics.density));
        put(f47550y, Integer.valueOf(displayMetrics.heightPixels));
        put(f47551z, Integer.valueOf(displayMetrics.widthPixels));
    }

    @Override // com.posthog.android.x
    /* renamed from: E */
    public o o(String str, Object obj) {
        super.o(str, obj);
        return this;
    }

    public o F() {
        return new o(Collections.unmodifiableMap(new LinkedHashMap(this)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(Context context, CountDownLatch countDownLatch, i iVar) {
        if (Utils.A("com.google.android.gms.ads.identifier.AdvertisingIdClient")) {
            new f(this, countDownLatch, iVar).execute(context);
            return;
        }
        iVar.a("Not collecting advertising ID because com.google.android.gms.ads.identifier.AdvertisingIdClient was not found on the classpath.", new Object[0]);
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(String str, boolean z9) {
        if (z9 && !Utils.w(str)) {
            put(f47539n, str);
        }
        put(f47540o, Boolean.valueOf(z9));
    }

    void v(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            D(this, f47530e, packageInfo.applicationInfo.loadLabel(packageManager));
            D(this, f47531f, packageInfo.versionName);
            D(this, f47532g, packageInfo.packageName);
            put(f47533h, String.valueOf(packageInfo.versionCode));
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    void w(Context context, s sVar, boolean z9) {
        put(f47534i, z9 ? Utils.j(context) : sVar.t());
        put(f47535j, Build.MANUFACTURER);
        put(f47536k, Build.MODEL);
        put(f47537l, Build.DEVICE);
    }

    void x(String str) {
        put(f47538m, str);
    }

    void y() {
        put(f47541p, "posthog-android");
        put(f47542q, w4.a.f94451f);
    }
}
