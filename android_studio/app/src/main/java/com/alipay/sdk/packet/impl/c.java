package com.alipay.sdk.packet.impl;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c extends com.alipay.sdk.packet.d {

    /* renamed from: u  reason: collision with root package name */
    public static final String f6915u = "log_v";

    @Override // com.alipay.sdk.packet.d
    public final com.alipay.sdk.packet.b b(Context context, String str) throws Throwable {
        return d(context, str, "http://mcgw.alipay.com/sdklog.do", true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.sdk.packet.d
    public final String e(String str, JSONObject jSONObject) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.sdk.packet.d
    public final List<Header> h(boolean z9, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.f6893c, String.valueOf(z9)));
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.f6896f, "application/octet-stream"));
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.f6899i, "CBC"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.sdk.packet.d
    public final JSONObject i() throws JSONException {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.sdk.packet.d
    public final String p() throws JSONException {
        HashMap hashMap = new HashMap();
        hashMap.put(com.alipay.sdk.packet.d.f6901k, "/sdk/log");
        hashMap.put(com.alipay.sdk.packet.d.f6902l, "1.0.0");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(f6915u, "1.0");
        return com.alipay.sdk.packet.d.f(hashMap, hashMap2);
    }
}
