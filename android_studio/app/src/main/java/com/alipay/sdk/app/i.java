package com.alipay.sdk.app;

/* loaded from: classes.dex */
public enum i {
    SUCCEEDED(9000, "处理成功"),
    FAILED(4000, "系统繁忙，请稍后再试"),
    CANCELED(6001, "用户取消"),
    NETWORK_ERROR(6002, "网络连接异常"),
    PARAMS_ERROR(4001, "参数错误"),
    DOUBLE_REQUEST(5000, "重复请求"),
    PAY_WAITTING(8000, "支付结果确认中");
    

    /* renamed from: h  reason: collision with root package name */
    public int f6773h;

    /* renamed from: i  reason: collision with root package name */
    public String f6774i;

    i(int i4, String str) {
        this.f6773h = i4;
        this.f6774i = str;
    }

    private int a() {
        return this.f6773h;
    }

    private void b(String str) {
        this.f6774i = str;
    }

    private String c() {
        return this.f6774i;
    }

    private void d(int i4) {
        this.f6773h = i4;
    }

    public static i a(int i4) {
        if (i4 != 4001) {
            if (i4 != 5000) {
                if (i4 != 8000) {
                    if (i4 != 9000) {
                        if (i4 != 6001) {
                            if (i4 != 6002) {
                                return FAILED;
                            }
                            return NETWORK_ERROR;
                        }
                        return CANCELED;
                    }
                    return SUCCEEDED;
                }
                return PAY_WAITTING;
            }
            return DOUBLE_REQUEST;
        }
        return PARAMS_ERROR;
    }
}
