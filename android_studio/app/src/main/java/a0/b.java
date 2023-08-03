package a0;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

/* loaded from: classes.dex */
public interface b {
    @j.a("alipay.security.vkeyDFP.appList.get")
    AppListResult a(String str);

    @j.a("alipay.security.vkeyDFP.staticData.report")
    DeviceDataReportResult b(DeviceDataReportRequest deviceDataReportRequest);
}
