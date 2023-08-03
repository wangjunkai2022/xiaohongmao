package com.alipay.sdk.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final String f6929d = "00:00:00:00:00:00";

    /* renamed from: e  reason: collision with root package name */
    private static b f6930e;

    /* renamed from: a  reason: collision with root package name */
    private String f6931a;

    /* renamed from: b  reason: collision with root package name */
    private String f6932b;

    /* renamed from: c  reason: collision with root package name */
    public String f6933c;

    private b(Context context) {
        try {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                f(telephonyManager.getDeviceId());
                String subscriberId = telephonyManager.getSubscriberId();
                if (subscriberId != null) {
                    subscriberId = (subscriberId + "000000000000000").substring(0, 15);
                }
                this.f6931a = subscriberId;
                String macAddress = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
                this.f6933c = macAddress;
                if (TextUtils.isEmpty(macAddress)) {
                    this.f6933c = f6929d;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                if (TextUtils.isEmpty(this.f6933c)) {
                    this.f6933c = f6929d;
                }
            }
        } catch (Throwable th) {
            if (TextUtils.isEmpty(this.f6933c)) {
                this.f6933c = f6929d;
            }
            throw th;
        }
    }

    public static b a(Context context) {
        if (f6930e == null) {
            f6930e = new b(context);
        }
        return f6930e;
    }

    private void c(String str) {
        if (str != null) {
            str = (str + "000000000000000").substring(0, 15);
        }
        this.f6931a = str;
    }

    public static d d(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.getType() == 0) {
                return d.a(activeNetworkInfo.getSubtype());
            }
            if (activeNetworkInfo != null && activeNetworkInfo.getType() == 1) {
                return d.WIFI;
            }
            return d.NONE;
        } catch (Exception unused) {
            return d.NONE;
        }
    }

    private void f(String str) {
        if (str != null) {
            byte[] bytes = str.getBytes();
            for (int i4 = 0; i4 < bytes.length; i4++) {
                if (bytes[i4] < 48 || bytes[i4] > 57) {
                    bytes[i4] = 48;
                }
            }
            String str2 = new String(bytes);
            str = (str2 + "000000000000000").substring(0, 15);
        }
        this.f6932b = str;
    }

    private String g() {
        String str = e() + "|";
        String b10 = b();
        if (TextUtils.isEmpty(b10)) {
            return str + "000000000000000";
        }
        return str + b10;
    }

    public static String h(Context context) {
        String str;
        b a10 = a(context);
        String str2 = a10.e() + "|";
        String b10 = a10.b();
        if (TextUtils.isEmpty(b10)) {
            str = str2 + "000000000000000";
        } else {
            str = str2 + b10;
        }
        return str.substring(0, 8);
    }

    private String i() {
        return this.f6933c;
    }

    public static String j(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getResources().getConfiguration().locale.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public final String b() {
        if (TextUtils.isEmpty(this.f6931a)) {
            this.f6931a = "000000000000000";
        }
        return this.f6931a;
    }

    public final String e() {
        if (TextUtils.isEmpty(this.f6932b)) {
            this.f6932b = "000000000000000";
        }
        return this.f6932b;
    }
}
