package com.alipay.sdk.data;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.util.j;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final int f6863c = 3500;

    /* renamed from: d  reason: collision with root package name */
    public static final String f6864d = "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&";

    /* renamed from: e  reason: collision with root package name */
    public static final int f6865e = 1000;

    /* renamed from: f  reason: collision with root package name */
    public static final int f6866f = 20000;

    /* renamed from: g  reason: collision with root package name */
    public static final String f6867g = "alipay_cashier_dynamic_config";

    /* renamed from: h  reason: collision with root package name */
    public static final String f6868h = "timeout";

    /* renamed from: i  reason: collision with root package name */
    public static final String f6869i = "st_sdk_config";

    /* renamed from: j  reason: collision with root package name */
    public static final String f6870j = "tbreturl";

    /* renamed from: k  reason: collision with root package name */
    private static a f6871k;

    /* renamed from: a  reason: collision with root package name */
    private int f6872a = f6863c;

    /* renamed from: b  reason: collision with root package name */
    public String f6873b = f6864d;

    private static /* synthetic */ void c(a aVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("timeout", aVar.a());
            jSONObject.put(f6870j, aVar.f6873b);
            j.b(p.b.b().f93064a, f6867g, jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    public static a f() {
        if (f6871k == null) {
            a aVar = new a();
            f6871k = aVar;
            aVar.e(j.d(p.b.b().f93064a, f6867g, null));
        }
        return f6871k;
    }

    private String g() {
        return this.f6873b;
    }

    private void h() {
        e(j.d(p.b.b().f93064a, f6867g, null));
    }

    private void i() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("timeout", a());
            jSONObject.put(f6870j, this.f6873b);
            j.b(p.b.b().f93064a, f6867g, jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    public final int a() {
        int i4 = this.f6872a;
        return (i4 < 1000 || i4 > 20000) ? f6863c : this.f6872a;
    }

    public final void b(Context context) {
        new Thread(new b(this, context)).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject(f6869i);
            this.f6872a = optJSONObject.optInt("timeout", f6863c);
            this.f6873b = optJSONObject.optString(f6870j, f6864d).trim();
        } catch (Throwable unused) {
        }
    }
}
