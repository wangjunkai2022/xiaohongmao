package com.ksyun.media.player.misc;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import shaded.org.apache.commons.codec.digest.f;

/* compiled from: LibKSYAuth.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static e f45582a = null;

    /* renamed from: b  reason: collision with root package name */
    private static final String f45583b = "ffffffffff";

    /* renamed from: c  reason: collision with root package name */
    private String f45584c;

    /* renamed from: d  reason: collision with root package name */
    private String f45585d;

    /* renamed from: e  reason: collision with root package name */
    private String f45586e;

    /* renamed from: f  reason: collision with root package name */
    private String f45587f;

    /* renamed from: g  reason: collision with root package name */
    private Context f45588g;

    private e() {
    }

    public static e a() {
        e eVar;
        synchronized (e.class) {
            if (f45582a == null) {
                f45582a = new e();
            }
            eVar = f45582a;
        }
        return eVar;
    }

    private String h() {
        TelephonyManager telephonyManager;
        if (this.f45588g == null || !c("android.permission.READ_PHONE_STATE") || (telephonyManager = (TelephonyManager) this.f45588g.getSystemService("phone")) == null) {
            return null;
        }
        return telephonyManager.getDeviceId();
    }

    private String i() {
        Context context = this.f45588g;
        if (context == null) {
            return null;
        }
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    private String j() {
        if (this.f45588g == null || !c("android.permission.ACCESS_WIFI_STATE")) {
            return null;
        }
        return ((WifiManager) this.f45588g.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }

    private String k() {
        if (this.f45588g == null) {
            return null;
        }
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.serialno", "unknown");
        } catch (Exception unused) {
            return null;
        }
    }

    public String b() {
        return this.f45584c;
    }

    public String c() {
        return this.f45585d;
    }

    public String d() {
        return this.f45586e;
    }

    public String e() {
        return this.f45587f;
    }

    public String f() {
        if (this.f45588g == null) {
            return null;
        }
        return b(this.f45588g.getPackageName() + ';' + Build.VERSION.RELEASE + ';' + Build.MODEL);
    }

    public String g() {
        if (this.f45588g == null) {
            return null;
        }
        String h4 = h();
        boolean isEmpty = TextUtils.isEmpty(h4);
        String str = f45583b;
        if (isEmpty) {
            h4 = f45583b;
        }
        String i4 = i();
        if (TextUtils.isEmpty(i4)) {
            i4 = f45583b;
        }
        String k10 = k();
        if (!TextUtils.isEmpty(k10)) {
            str = k10;
        }
        return b(h4 + "-" + a(str + i4));
    }

    private String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return URLEncoder.encode(new String(str.getBytes(), "UTF-8"), "UTF-8");
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean c(String str) {
        Context context = this.f45588g;
        return context != null && context.checkCallingOrSelfPermission(str) == 0;
    }

    public void a(Context context) {
        this.f45588g = context;
    }

    public void a(String str, String str2, String str3, String str4) {
        this.f45584c = b(str);
        this.f45585d = b(str2);
        this.f45586e = b(str3);
        this.f45587f = b(str4);
    }

    public String a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance(f.f93510b).digest(str.getBytes());
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b10 : digest) {
                int i4 = b10 & 255;
                if (i4 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i4));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e4) {
            throw new RuntimeException("Huh, MD5 should be supported?", e4);
        }
    }
}
