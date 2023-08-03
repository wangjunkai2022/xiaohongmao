package com.alipay.security.mobile.module.a;

import android.content.Context;
import com.alipay.android.phone.mrpc.core.a0;
import com.alipay.android.phone.mrpc.core.l;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.AppListCmdRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class b implements a {

    /* renamed from: f  reason: collision with root package name */
    private static b f6990f;

    /* renamed from: g  reason: collision with root package name */
    private static DeviceDataReportResult f6991g;

    /* renamed from: a  reason: collision with root package name */
    private Context f6992a;

    /* renamed from: b  reason: collision with root package name */
    private a0 f6993b;

    /* renamed from: c  reason: collision with root package name */
    private z.a f6994c;

    /* renamed from: d  reason: collision with root package name */
    private a0.b f6995d;

    /* renamed from: e  reason: collision with root package name */
    private a0.a f6996e;

    private b(Context context) {
        this.f6993b = null;
        this.f6994c = null;
        this.f6995d = null;
        this.f6996e = null;
        this.f6992a = context;
        try {
            com.alipay.android.phone.mrpc.core.b bVar = new com.alipay.android.phone.mrpc.core.b();
            bVar.b(q.a.a());
            l lVar = new l(context);
            this.f6993b = lVar;
            this.f6994c = (z.a) lVar.a(z.a.class, bVar);
            this.f6995d = (a0.b) this.f6993b.a(a0.b.class, bVar);
            this.f6996e = (a0.a) this.f6993b.a(a0.a.class, bVar);
        } catch (Exception e4) {
            t.d.c(e4);
        }
    }

    public static synchronized b e(Context context) {
        b bVar;
        synchronized (b.class) {
            if (f6990f == null) {
                f6990f = new b(context);
            }
            bVar = f6990f;
        }
        return bVar;
    }

    @Override // com.alipay.security.mobile.module.a.a
    public final AppListResult a(String str, String str2, String str3, String str4) {
        try {
            AppListCmdRequest appListCmdRequest = new AppListCmdRequest();
            appListCmdRequest.os = str;
            appListCmdRequest.apdid = str4;
            appListCmdRequest.userId = str2;
            appListCmdRequest.token = str3;
            return this.f6996e.a(appListCmdRequest);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.alipay.security.mobile.module.a.a
    public final boolean b(String str) {
        z.a aVar;
        if (t.a.e(str) || (aVar = this.f6994c) == null) {
            return false;
        }
        String str2 = null;
        try {
            str2 = aVar.a(t.a.i(str));
        } catch (Exception unused) {
        }
        if (t.a.e(str2)) {
            return false;
        }
        try {
            return ((Boolean) new JSONObject(str2).get("success")).booleanValue();
        } catch (JSONException e4) {
            t.d.c(e4);
            return false;
        }
    }

    @Override // com.alipay.security.mobile.module.a.a
    public final DeviceDataReportResult c(DeviceDataReportRequest deviceDataReportRequest) {
        if (this.f6995d != null) {
            try {
                f6991g = null;
                new Thread(new c(this, deviceDataReportRequest)).start();
                for (int i4 = 300000; f6991g == null && i4 >= 0; i4 -= 50) {
                    Thread.sleep(50L);
                }
            } catch (Exception e4) {
                t.d.c(e4);
            }
        }
        return f6991g;
    }
}
