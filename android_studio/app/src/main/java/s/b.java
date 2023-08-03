package s;

import android.content.Context;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
import r.c;
import r.d;

/* loaded from: classes.dex */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private static a f93230a;

    /* renamed from: b  reason: collision with root package name */
    private static com.alipay.security.mobile.module.a.a f93231b;

    public static a d(Context context) {
        if (context == null) {
            return null;
        }
        if (f93230a == null) {
            f93231b = com.alipay.security.mobile.module.a.b.e(context);
            f93230a = new b();
        }
        return f93230a;
    }

    @Override // s.a
    public final r.a a(String str, String str2, String str3, String str4) {
        AppListResult a10 = f93231b.a(str, str2, str3, str4);
        if (a10 == null) {
            return null;
        }
        r.a aVar = new r.a(a10.appListData, a10.appListVer);
        aVar.f93155a = a10.success;
        aVar.f93156b = a10.resultCode;
        return aVar;
    }

    @Override // s.a
    public final boolean b(String str) {
        return f93231b.b(str);
    }

    @Override // s.a
    public final c c(d dVar) {
        DeviceDataReportRequest deviceDataReportRequest = new DeviceDataReportRequest();
        deviceDataReportRequest.os = dVar.a();
        deviceDataReportRequest.apdid = dVar.d();
        deviceDataReportRequest.pubApdid = dVar.f();
        deviceDataReportRequest.priApdid = dVar.h();
        deviceDataReportRequest.token = dVar.j();
        deviceDataReportRequest.umidToken = dVar.l();
        deviceDataReportRequest.version = dVar.n();
        deviceDataReportRequest.lastTime = dVar.p();
        deviceDataReportRequest.dataMap = dVar.q();
        DeviceDataReportResult c10 = f93231b.c(deviceDataReportRequest);
        c cVar = new c();
        if (c10 == null) {
            return null;
        }
        cVar.f93155a = c10.success;
        cVar.f93156b = c10.resultCode;
        cVar.f93157c = c10.apdid;
        cVar.f93158d = c10.token;
        cVar.f93159e = c10.currentTime;
        cVar.f93160f = c10.version;
        cVar.f93161g = c10.vkeySwitch;
        cVar.f93162h = c10.bugTrackSwitch;
        cVar.f93163i = c10.appListVer;
        return cVar;
    }
}
