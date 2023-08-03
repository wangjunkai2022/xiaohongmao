package com.alipay.security.mobile.module.deviceinfo;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import java.io.File;

/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static e f7020a = new e();

    private e() {
    }

    private static String a(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public static e i() {
        return f7020a;
    }

    public String b() {
        return Build.DISPLAY;
    }

    public String c() {
        return Build.TAGS;
    }

    public String d() {
        return Build.VERSION.INCREMENTAL;
    }

    public String e() {
        return Build.VERSION.RELEASE;
    }

    public String f() {
        return Build.VERSION.SDK;
    }

    public String g() {
        return a("gsm.sim.state", "");
    }

    public String h() {
        return a("gsm.sim.state.2", "");
    }

    public String j() {
        return a("ro.kernel.qemu", "0");
    }

    public String k(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            return connectivityManager.getActiveNetworkInfo().isConnected() ? t.a.b(connectivityManager.getActiveNetworkInfo().getTypeName(), "WIFI") ? "WIFI" : connectivityManager.getActiveNetworkInfo().getExtraInfo() : "";
        } catch (Exception unused) {
            return "";
        }
    }

    public String l() {
        return "android";
    }

    public String m() {
        return Build.BOARD;
    }

    public String n() {
        return Build.BRAND;
    }

    public String o() {
        return Build.DEVICE;
    }

    public String p() {
        return Build.MANUFACTURER;
    }

    public String q() {
        return Build.MODEL;
    }

    public String r() {
        return Build.PRODUCT;
    }

    public String s() {
        return a("sys.usb.state", "");
    }

    public String t() {
        return a("wifi.interface", "");
    }

    public boolean u(Context context) {
        try {
            if (!Build.HARDWARE.contains("goldfish") && !Build.PRODUCT.contains("sdk") && !Build.FINGERPRINT.contains("generic")) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null || !t.a.g(telephonyManager.getDeviceId())) {
                    return t.a.e(Settings.Secure.getString(context.getContentResolver(), "android_id"));
                }
                return true;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean v() {
        String[] strArr = {"/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        for (int i4 = 0; i4 < 5; i4++) {
            try {
                if (new File(strArr[i4] + "su").exists()) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
