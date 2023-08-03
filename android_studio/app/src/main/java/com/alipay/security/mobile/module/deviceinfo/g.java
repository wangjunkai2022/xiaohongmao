package com.alipay.security.mobile.module.deviceinfo;

import android.content.Context;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private Context f7023a;

    /* renamed from: b  reason: collision with root package name */
    private String f7024b;

    /* renamed from: c  reason: collision with root package name */
    private String f7025c;

    /* renamed from: d  reason: collision with root package name */
    private String f7026d;

    /* renamed from: e  reason: collision with root package name */
    private String f7027e;

    /* renamed from: f  reason: collision with root package name */
    private String f7028f;

    /* renamed from: g  reason: collision with root package name */
    private String f7029g;

    /* renamed from: h  reason: collision with root package name */
    private String f7030h;

    /* renamed from: i  reason: collision with root package name */
    private String f7031i;

    /* renamed from: j  reason: collision with root package name */
    private String f7032j;

    /* renamed from: k  reason: collision with root package name */
    private String f7033k;

    /* renamed from: l  reason: collision with root package name */
    private volatile int f7034l = 0;

    private g() {
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e5 A[Catch: all -> 0x00ef, TRY_LEAVE, TryCatch #11 {all -> 0x00ef, blocks: (B:58:0x00dc, B:61:0x00e5), top: B:112:0x00dc }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00fd A[Catch: Exception -> 0x019b, TryCatch #2 {Exception -> 0x019b, blocks: (B:62:0x00ef, B:64:0x00fd, B:66:0x011a, B:67:0x0141, B:69:0x0149, B:71:0x014f, B:73:0x0157, B:75:0x0161, B:77:0x016b), top: B:94:0x00ef }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0149 A[Catch: Exception -> 0x019b, TryCatch #2 {Exception -> 0x019b, blocks: (B:62:0x00ef, B:64:0x00fd, B:66:0x011a, B:67:0x0141, B:69:0x0149, B:71:0x014f, B:73:0x0157, B:75:0x0161, B:77:0x016b), top: B:94:0x00ef }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01cc A[Catch: Exception -> 0x01fc, TRY_LEAVE, TryCatch #1 {Exception -> 0x01fc, blocks: (B:81:0x019f, B:83:0x01cc), top: B:92:0x019f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.alipay.security.mobile.module.deviceinfo.g h(android.content.Context r17) {
        /*
            Method dump skipped, instructions count: 513
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.deviceinfo.g.h(android.content.Context):com.alipay.security.mobile.module.deviceinfo.g");
    }

    public void A(String str) {
        this.f7029g = str;
    }

    public String a() {
        return this.f7026d;
    }

    public boolean b() {
        return this.f7034l != 0;
    }

    public String c() {
        return this.f7032j;
    }

    public double d() {
        return this.f7034l;
    }

    public String e() {
        return this.f7028f;
    }

    public String f() {
        return this.f7033k;
    }

    public String g() {
        return this.f7025c;
    }

    public String i() {
        return this.f7024b;
    }

    public String j() {
        return this.f7030h;
    }

    public String k() {
        return this.f7031i;
    }

    public String l() {
        return this.f7027e;
    }

    public List<Map<String, String>> m() {
        WifiManager wifiManager;
        List<ScanResult> scanResults;
        ArrayList arrayList = new ArrayList();
        Context context = this.f7023a;
        if (context == null || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null || (scanResults = wifiManager.getScanResults()) == null) {
            return arrayList;
        }
        for (ScanResult scanResult : scanResults) {
            HashMap hashMap = new HashMap();
            String str = scanResult.BSSID;
            if (str == null) {
                str = "";
            }
            hashMap.put("wifiMac", str);
            hashMap.put("ssid", scanResult.SSID);
            StringBuilder sb = new StringBuilder();
            sb.append(scanResult.level);
            hashMap.put("rssi", sb.toString());
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    public String n() {
        return this.f7029g;
    }

    public boolean o() {
        LocationManager locationManager;
        Context context = this.f7023a;
        if (context == null || (locationManager = (LocationManager) context.getSystemService("location")) == null) {
            return false;
        }
        return locationManager.isProviderEnabled("gps");
    }

    public boolean p() {
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        WifiManager wifiManager2;
        List<WifiConfiguration> configuredNetworks;
        Context context = this.f7023a;
        if (context == null || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return false;
        }
        Context context2 = this.f7023a;
        String ssid = connectionInfo.getSSID();
        WifiConfiguration wifiConfiguration = null;
        if (context2 != null && ssid != null && (wifiManager2 = (WifiManager) context2.getSystemService("wifi")) != null && (configuredNetworks = wifiManager2.getConfiguredNetworks()) != null) {
            Iterator<WifiConfiguration> it = configuredNetworks.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WifiConfiguration next = it.next();
                if (next.SSID.equals(ssid)) {
                    wifiConfiguration = next;
                    break;
                }
            }
        }
        if (wifiConfiguration == null) {
            return false;
        }
        char c10 = 3;
        if (wifiConfiguration.allowedKeyManagement.get(1)) {
            c10 = 2;
        } else if (!wifiConfiguration.allowedKeyManagement.get(2) && !wifiConfiguration.allowedKeyManagement.get(3)) {
            c10 = wifiConfiguration.wepKeys[0] != null ? (char) 1 : (char) 0;
        }
        return c10 != 0;
    }

    public void q(String str) {
        this.f7026d = str;
    }

    public void r(String str) {
        this.f7032j = str;
    }

    public void s(int i4) {
        this.f7034l = i4;
    }

    public void t(String str) {
        this.f7028f = str;
    }

    public void u(String str) {
        this.f7033k = str;
    }

    public void v(String str) {
        this.f7025c = str;
    }

    public void w(String str) {
        this.f7024b = str;
    }

    public void x(String str) {
        this.f7030h = str;
    }

    public void y(String str) {
        this.f7031i = str;
    }

    public void z(String str) {
        this.f7027e = str;
    }
}
