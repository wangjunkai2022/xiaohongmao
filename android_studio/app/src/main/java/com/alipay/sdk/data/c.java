package com.alipay.sdk.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.sdk.util.i;
import com.alipay.sdk.util.k;
import com.alipay.sdk.util.l;
import java.util.HashMap;
import java.util.Random;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    private static final String f6876d = "virtualImeiAndImsi";

    /* renamed from: e  reason: collision with root package name */
    private static final String f6877e = "virtual_imei";

    /* renamed from: f  reason: collision with root package name */
    private static final String f6878f = "virtual_imsi";

    /* renamed from: g  reason: collision with root package name */
    private static c f6879g;

    /* renamed from: a  reason: collision with root package name */
    public String f6880a;

    /* renamed from: b  reason: collision with root package name */
    public String f6881b = "sdk-and-lite";

    /* renamed from: c  reason: collision with root package name */
    public String f6882c;

    private c() {
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (f6879g == null) {
                f6879g = new c();
            }
            cVar = f6879g;
        }
        return cVar;
    }

    private static String b(Context context) {
        return Float.toString(new TextView(context).getTextSize());
    }

    public static String c(Context context, HashMap<String, String> hashMap) {
        try {
            return k.a.a(context, hashMap);
        } catch (Throwable unused) {
            return "";
        }
    }

    private String d(com.alipay.sdk.tid.b bVar) {
        String b10;
        Context context = p.b.b().f93064a;
        com.alipay.sdk.util.b a10 = com.alipay.sdk.util.b.a(context);
        if (TextUtils.isEmpty(this.f6880a)) {
            String d4 = l.d();
            String k10 = l.k();
            String q9 = l.q(context);
            String a11 = k.a(context);
            String substring = a11.substring(0, a11.indexOf("://"));
            String s9 = l.s(context);
            String f10 = Float.toString(new TextView(context).getTextSize());
            this.f6880a = "Msp/15.1.3 (" + d4 + i.f6965b + k10 + i.f6965b + q9 + i.f6965b + substring + i.f6965b + s9 + i.f6965b + f10;
        }
        String str = com.alipay.sdk.util.b.d(context).f6950p;
        String b11 = a10.b();
        String e4 = a10.e();
        Context context2 = p.b.b().f93064a;
        SharedPreferences sharedPreferences = context2.getSharedPreferences(f6876d, 0);
        String string = sharedPreferences.getString(f6878f, null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(com.alipay.sdk.tid.b.a().f6925a)) {
                String e10 = p.b.b().e();
                b10 = TextUtils.isEmpty(e10) ? f() : e10.substring(3, 18);
            } else {
                b10 = com.alipay.sdk.util.b.a(context2).b();
            }
            string = b10;
            sharedPreferences.edit().putString(f6878f, string).commit();
        }
        Context context3 = p.b.b().f93064a;
        SharedPreferences sharedPreferences2 = context3.getSharedPreferences(f6876d, 0);
        String string2 = sharedPreferences2.getString(f6877e, null);
        if (TextUtils.isEmpty(string2)) {
            string2 = TextUtils.isEmpty(com.alipay.sdk.tid.b.a().f6925a) ? f() : com.alipay.sdk.util.b.a(context3).e();
            sharedPreferences2.edit().putString(f6877e, string2).commit();
        }
        if (bVar != null) {
            this.f6882c = bVar.f6926b;
        }
        String replace = Build.MANUFACTURER.replace(i.f6965b, " ");
        String replace2 = Build.MODEL.replace(i.f6965b, " ");
        boolean d10 = p.b.d();
        String str2 = a10.f6933c;
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        String ssid = connectionInfo != null ? connectionInfo.getSSID() : "-1";
        WifiInfo connectionInfo2 = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        String bssid = connectionInfo2 != null ? connectionInfo2.getBSSID() : "00";
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6880a);
        sb.append(i.f6965b);
        sb.append(str);
        sb.append(i.f6965b);
        sb.append("-1;-1");
        sb.append(i.f6965b);
        sb.append("1");
        sb.append(i.f6965b);
        sb.append(b11);
        sb.append(i.f6965b);
        sb.append(e4);
        sb.append(i.f6965b);
        sb.append(this.f6882c);
        sb.append(i.f6965b);
        sb.append(replace);
        sb.append(i.f6965b);
        sb.append(replace2);
        sb.append(i.f6965b);
        sb.append(d10);
        sb.append(i.f6965b);
        sb.append(str2);
        sb.append(";-1;-1;");
        sb.append(this.f6881b);
        sb.append(i.f6965b);
        sb.append(string);
        sb.append(i.f6965b);
        sb.append(string2);
        sb.append(i.f6965b);
        sb.append(ssid);
        sb.append(i.f6965b);
        sb.append(bssid);
        if (bVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(m.b.f86919c, bVar.f6925a);
            hashMap.put(m.b.f86923g, p.b.b().e());
            String c10 = c(context, hashMap);
            if (!TextUtils.isEmpty(c10)) {
                sb.append(i.f6965b);
                sb.append(c10);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public static String f() {
        String hexString = Long.toHexString(System.currentTimeMillis());
        Random random = new Random();
        return hexString + (random.nextInt(9000) + 1000);
    }

    private static String g(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        return connectionInfo != null ? connectionInfo.getSSID() : "-1";
    }

    private String h() {
        return this.f6882c;
    }

    private static String i(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        return connectionInfo != null ? connectionInfo.getBSSID() : "00";
    }

    private static String j() {
        return "1";
    }

    private static String k() {
        return "-1;-1";
    }

    private static String l() {
        String e4;
        Context context = p.b.b().f93064a;
        SharedPreferences sharedPreferences = context.getSharedPreferences(f6876d, 0);
        String string = sharedPreferences.getString(f6877e, null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(com.alipay.sdk.tid.b.a().f6925a)) {
                e4 = f();
            } else {
                e4 = com.alipay.sdk.util.b.a(context).e();
            }
            String str = e4;
            sharedPreferences.edit().putString(f6877e, str).commit();
            return str;
        }
        return string;
    }

    private static String m() {
        String b10;
        Context context = p.b.b().f93064a;
        SharedPreferences sharedPreferences = context.getSharedPreferences(f6876d, 0);
        String string = sharedPreferences.getString(f6878f, null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(com.alipay.sdk.tid.b.a().f6925a)) {
                String e4 = p.b.b().e();
                if (TextUtils.isEmpty(e4)) {
                    b10 = f();
                } else {
                    b10 = e4.substring(3, 18);
                }
            } else {
                b10 = com.alipay.sdk.util.b.a(context).b();
            }
            String str = b10;
            sharedPreferences.edit().putString(f6878f, str).commit();
            return str;
        }
        return string;
    }

    public final synchronized void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        PreferenceManager.getDefaultSharedPreferences(p.b.b().f93064a).edit().putString(m.b.f86925i, str).commit();
        m.a.f86903b = str;
    }
}
