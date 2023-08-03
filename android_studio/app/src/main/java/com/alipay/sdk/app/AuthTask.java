package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.util.f;
import com.alipay.sdk.util.l;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class AuthTask {

    /* renamed from: c  reason: collision with root package name */
    private static final int f6735c = 73;

    /* renamed from: d  reason: collision with root package name */
    static final Object f6736d = com.alipay.sdk.util.f.class;

    /* renamed from: a  reason: collision with root package name */
    private Activity f6737a;

    /* renamed from: b  reason: collision with root package name */
    private com.alipay.sdk.widget.a f6738b;

    public AuthTask(Activity activity) {
        this.f6737a = activity;
        p.b b10 = p.b.b();
        Activity activity2 = this.f6737a;
        com.alipay.sdk.data.c.a();
        b10.c(activity2);
        com.alipay.sdk.app.statistic.a.a(activity);
        this.f6738b = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.f6981f);
    }

    private f.a a() {
        return new a(this);
    }

    private String b(Activity activity, String str) {
        String a10 = new p.a(this.f6737a).a(str);
        if (e(activity)) {
            String c10 = new com.alipay.sdk.util.f(activity, new a(this)).c(a10);
            if (TextUtils.equals(c10, com.alipay.sdk.util.f.f6954h)) {
                return f(activity, a10);
            }
            return TextUtils.isEmpty(c10) ? h.a() : c10;
        }
        return f(activity, a10);
    }

    private String c(o.a aVar) {
        String[] strArr = aVar.f89939c;
        Bundle bundle = new Bundle();
        bundle.putString("url", strArr[0]);
        Intent intent = new Intent(this.f6737a, H5AuthActivity.class);
        intent.putExtras(bundle);
        this.f6737a.startActivity(intent);
        Object obj = f6736d;
        synchronized (obj) {
            try {
                obj.wait();
            } catch (InterruptedException unused) {
                return h.a();
            }
        }
        String str = h.f6764a;
        return TextUtils.isEmpty(str) ? h.a() : str;
    }

    private static boolean e(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(l.f6973b, 128);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode >= 73;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private String f(Activity activity, String str) {
        i iVar;
        g();
        try {
            try {
                List<o.a> b10 = o.a.b(new com.alipay.sdk.packet.impl.a().b(activity, str).a().optJSONObject(m.c.f86929c).optJSONObject(m.c.f86930d));
                h();
                for (int i4 = 0; i4 < b10.size(); i4++) {
                    if (b10.get(i4).f89937a == com.alipay.sdk.protocol.a.WapPay) {
                        return c(b10.get(i4));
                    }
                }
            } catch (IOException e4) {
                i a10 = i.a(i.NETWORK_ERROR.f6773h);
                com.alipay.sdk.app.statistic.a.f(com.alipay.sdk.app.statistic.c.f6779k, e4);
                h();
                iVar = a10;
            } catch (Throwable th) {
                com.alipay.sdk.app.statistic.a.d(com.alipay.sdk.app.statistic.c.f6780l, com.alipay.sdk.app.statistic.c.f6786r, th);
            }
            h();
            iVar = null;
            if (iVar == null) {
                iVar = i.a(i.FAILED.f6773h);
            }
            return h.b(iVar.f6773h, iVar.f6774i, "");
        } finally {
            h();
        }
    }

    private void g() {
        com.alipay.sdk.widget.a aVar = this.f6738b;
        if (aVar != null) {
            aVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        com.alipay.sdk.widget.a aVar = this.f6738b;
        if (aVar != null) {
            aVar.f();
        }
    }

    public synchronized String auth(String str, boolean z9) {
        String a10;
        Activity activity;
        Activity activity2;
        String a11;
        if (z9) {
            g();
        }
        p.b b10 = p.b.b();
        Activity activity3 = this.f6737a;
        com.alipay.sdk.data.c.a();
        b10.c(activity3);
        a10 = h.a();
        try {
            activity2 = this.f6737a;
            a11 = new p.a(activity2).a(str);
        } catch (Exception unused) {
            com.alipay.sdk.data.a.f().b(this.f6737a);
            h();
            activity = this.f6737a;
        } catch (Throwable th) {
            com.alipay.sdk.data.a.f().b(this.f6737a);
            h();
            com.alipay.sdk.app.statistic.a.b(this.f6737a, str);
            throw th;
        }
        if (e(activity2)) {
            String c10 = new com.alipay.sdk.util.f(activity2, new a(this)).c(a11);
            if (!TextUtils.equals(c10, com.alipay.sdk.util.f.f6954h)) {
                a10 = TextUtils.isEmpty(c10) ? h.a() : c10;
                com.alipay.sdk.data.a.f().b(this.f6737a);
                h();
                activity = this.f6737a;
                com.alipay.sdk.app.statistic.a.b(activity, str);
            }
        }
        a10 = f(activity2, a11);
        com.alipay.sdk.data.a.f().b(this.f6737a);
        h();
        activity = this.f6737a;
        com.alipay.sdk.app.statistic.a.b(activity, str);
        return a10;
    }
}
