package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IRemoteServiceCallback;
import com.alipay.sdk.util.l;
import java.util.List;

/* loaded from: classes.dex */
public class f {

    /* renamed from: h  reason: collision with root package name */
    public static final String f6954h = "failed";

    /* renamed from: a  reason: collision with root package name */
    public Activity f6955a;

    /* renamed from: b  reason: collision with root package name */
    private IAlixPay f6956b;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6958d;

    /* renamed from: e  reason: collision with root package name */
    private a f6959e;

    /* renamed from: c  reason: collision with root package name */
    private final Object f6957c = IAlixPay.class;

    /* renamed from: f  reason: collision with root package name */
    private ServiceConnection f6960f = new g(this);

    /* renamed from: g  reason: collision with root package name */
    private IRemoteServiceCallback f6961g = new h(this);

    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    public f(Activity activity, a aVar) {
        this.f6955a = activity;
        this.f6959e = aVar;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.alipay.android.app.IAlixPay, android.content.ServiceConnection, com.alipay.android.app.IRemoteServiceCallback] */
    private String d(String str, Intent intent) {
        String str2;
        String t9 = l.t(this.f6955a);
        try {
            this.f6955a.getApplicationContext().bindService(intent, this.f6960f, 1);
            synchronized (this.f6957c) {
                if (this.f6956b == null) {
                    try {
                        this.f6957c.wait(com.alipay.sdk.data.a.f().a());
                    } catch (InterruptedException unused) {
                    }
                }
            }
            try {
                if (this.f6956b == null) {
                    String t10 = l.t(this.f6955a);
                    List<PackageInfo> installedPackages = this.f6955a.getPackageManager().getInstalledPackages(0);
                    StringBuilder sb = new StringBuilder();
                    for (int i4 = 0; i4 < installedPackages.size(); i4++) {
                        PackageInfo packageInfo = installedPackages.get(i4);
                        int i10 = packageInfo.applicationInfo.flags;
                        if ((i10 & 1) == 0 && (i10 & 128) == 0) {
                            if (packageInfo.packageName.equals(l.f6973b)) {
                                sb.append(packageInfo.packageName);
                                sb.append(packageInfo.versionCode);
                                str2 = "-";
                            } else if (!packageInfo.packageName.contains("theme") && !packageInfo.packageName.startsWith("com.google.") && !packageInfo.packageName.startsWith("com.android.")) {
                                sb.append(packageInfo.packageName);
                                str2 = "-";
                            }
                            sb.append(str2);
                        }
                    }
                    String sb2 = sb.toString();
                    com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f6780l, com.alipay.sdk.app.statistic.c.f6788t, t9 + "|" + t10 + "|" + sb2);
                    return f6954h;
                }
                a aVar = this.f6959e;
                if (aVar != null) {
                    aVar.a();
                }
                if (this.f6955a.getRequestedOrientation() == 0) {
                    this.f6955a.setRequestedOrientation(1);
                    this.f6958d = true;
                }
                this.f6956b.registerCallback(this.f6961g);
                String Pay = this.f6956b.Pay(str);
                this.f6956b.unregisterCallback(this.f6961g);
                try {
                    this.f6955a.unbindService(this.f6960f);
                } catch (Throwable unused2) {
                }
                this.f6961g = null;
                this.f6960f = null;
                this.f6956b = null;
                if (this.f6958d) {
                    this.f6955a.setRequestedOrientation(0);
                    this.f6958d = false;
                }
                return Pay;
            } catch (Throwable th) {
                try {
                    com.alipay.sdk.app.statistic.a.d(com.alipay.sdk.app.statistic.c.f6780l, com.alipay.sdk.app.statistic.c.f6791w, th);
                    String a10 = com.alipay.sdk.app.h.a();
                    try {
                        this.f6955a.unbindService(this.f6960f);
                    } catch (Throwable unused3) {
                    }
                    this.f6961g = null;
                    this.f6960f = null;
                    this.f6956b = null;
                    if (this.f6958d) {
                        this.f6955a.setRequestedOrientation(0);
                        this.f6958d = false;
                    }
                    return a10;
                } finally {
                    try {
                        this.f6955a.unbindService(this.f6960f);
                    } catch (Throwable unused4) {
                    }
                    this.f6961g = null;
                    this.f6960f = null;
                    this.f6956b = null;
                    if (this.f6958d) {
                        this.f6955a.setRequestedOrientation(0);
                        this.f6958d = false;
                    }
                }
            }
        } catch (Throwable th2) {
            com.alipay.sdk.app.statistic.a.d(com.alipay.sdk.app.statistic.c.f6780l, com.alipay.sdk.app.statistic.c.f6793y, th2);
            return f6954h;
        }
    }

    private void e() {
        this.f6955a = null;
    }

    public final String c(String str) {
        l.a c10;
        String f10;
        try {
            c10 = l.c(this.f6955a, l.f6973b);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (c10 != null && (f10 = l.f(c10.f6975a)) != null && !TextUtils.equals(f10, m.a.f86908g)) {
            com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f6780l, com.alipay.sdk.app.statistic.c.f6787s, f10);
            return f6954h;
        }
        if (c10.f6976b > 78) {
            Intent intent = new Intent();
            intent.setClassName(l.f6973b, "com.alipay.android.app.TransProcessPayActivity");
            this.f6955a.startActivity(intent);
            Thread.sleep(150L);
        }
        Intent intent2 = new Intent();
        intent2.setPackage(l.f6973b);
        intent2.setAction("com.eg.android.AlipayGphone.IAlixPay");
        return d(str, intent2);
    }
}
