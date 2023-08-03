package com.alipay.security.mobile.module.a;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

/* loaded from: classes.dex */
final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ DeviceDataReportRequest f6997a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b f6998b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar, DeviceDataReportRequest deviceDataReportRequest) {
        this.f6998b = bVar;
        this.f6997a = deviceDataReportRequest;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DeviceDataReportResult deviceDataReportResult;
        DeviceDataReportResult deviceDataReportResult2;
        a0.b bVar;
        try {
            bVar = this.f6998b.f6995d;
            DeviceDataReportResult unused = b.f6991g = bVar.b(this.f6997a);
            t.b.b("Rpc success.");
        } catch (Throwable th) {
            DeviceDataReportResult unused2 = b.f6991g = new DeviceDataReportResult();
            deviceDataReportResult = b.f6991g;
            deviceDataReportResult.success = false;
            deviceDataReportResult2 = b.f6991g;
            deviceDataReportResult2.resultCode = "static data rpc upload error, " + t.d.a(th);
            t.b.b("Rpc failed.");
            t.b.b(t.d.a(th));
        }
    }
}
