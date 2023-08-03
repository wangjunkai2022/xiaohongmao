package com.alipay.sdk.protocol;

import android.text.TextUtils;

/* loaded from: classes.dex */
public enum a {
    None("none"),
    WapPay("js://wappay"),
    Update("js://update");
    

    /* renamed from: d  reason: collision with root package name */
    private String f6920d;

    a(String str) {
        this.f6920d = str;
    }

    public static a a(String str) {
        a[] values;
        if (TextUtils.isEmpty(str)) {
            return None;
        }
        a aVar = None;
        for (a aVar2 : values()) {
            if (str.startsWith(aVar2.f6920d)) {
                return aVar2;
            }
        }
        return aVar;
    }
}
