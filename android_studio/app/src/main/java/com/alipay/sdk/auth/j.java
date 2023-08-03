package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6829a = "com.eg.android.AlipayGphone";

    /* renamed from: b  reason: collision with root package name */
    private static final int f6830b = 65;

    /* renamed from: c  reason: collision with root package name */
    private static com.alipay.sdk.widget.a f6831c;

    /* renamed from: d  reason: collision with root package name */
    private static String f6832d;

    public static void c(Activity activity, a aVar) {
        p.b b10 = p.b.b();
        com.alipay.sdk.data.c.a();
        b10.c(activity);
        if (e(activity)) {
            d(activity, "alipayauth://platformapi/startapp?appId=20000122&approveType=005&scope=kuaijie&productId=" + aVar.c() + "&thirdpartyId=" + aVar.a() + "&redirectUri=" + aVar.d());
            return;
        }
        if (activity != null) {
            try {
                if (!activity.isFinishing()) {
                    com.alipay.sdk.widget.a aVar2 = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.f6979d);
                    f6831c = aVar2;
                    aVar2.c();
                }
            } catch (Exception unused) {
                f6831c = null;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("app_id=");
        sb.append(aVar.a());
        sb.append("&partner=");
        sb.append(aVar.b());
        sb.append("&scope=kuaijie");
        sb.append("&login_goal=auth");
        sb.append("&redirect_url=");
        sb.append(aVar.d());
        sb.append("&view=wap");
        sb.append("&prod_code=");
        sb.append(aVar.c());
        new Thread(new k(activity, sb, aVar)).start();
    }

    public static void d(Activity activity, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            activity.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
        }
    }

    private static boolean e(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.eg.android.AlipayGphone", 128);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode >= 65;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private static void g(Activity activity, a aVar) {
        d(activity, "alipayauth://platformapi/startapp?appId=20000122&approveType=005&scope=kuaijie&productId=" + aVar.c() + "&thirdpartyId=" + aVar.a() + "&redirectUri=" + aVar.d());
    }

    private static void i(Activity activity, a aVar) {
        if (activity != null) {
            try {
                if (!activity.isFinishing()) {
                    com.alipay.sdk.widget.a aVar2 = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.f6979d);
                    f6831c = aVar2;
                    aVar2.c();
                }
            } catch (Exception unused) {
                f6831c = null;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("app_id=");
        sb.append(aVar.a());
        sb.append("&partner=");
        sb.append(aVar.b());
        sb.append("&scope=kuaijie");
        sb.append("&login_goal=auth");
        sb.append("&redirect_url=");
        sb.append(aVar.d());
        sb.append("&view=wap");
        sb.append("&prod_code=");
        sb.append(aVar.c());
        new Thread(new k(activity, sb, aVar)).start();
    }
}
