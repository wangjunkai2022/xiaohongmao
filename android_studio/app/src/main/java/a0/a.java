package a0;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.AppListCmdRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListCmdResult;

/* loaded from: classes.dex */
public interface a {
    @j.a("alipay.security.vkeyDFP.appListCmd.get")
    AppListCmdResult a(AppListCmdRequest appListCmdRequest);

    @j.a("alipay.security.vkeyDFP.appListCmd.reGet")
    AppListCmdResult b(AppListCmdRequest appListCmdRequest);
}
