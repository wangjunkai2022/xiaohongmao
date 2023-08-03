package com.alipay.android.phone.mrpc.core;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class HttpUrlHeader implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f6596b = -6098125857367743614L;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f6597a = new HashMap();

    public String getHead(String str) {
        return this.f6597a.get(str);
    }

    public Map<String, String> getHeaders() {
        return this.f6597a;
    }

    public void setHead(String str, String str2) {
        this.f6597a.put(str, str2);
    }

    public void setHeaders(Map<String, String> map) {
        this.f6597a = map;
    }
}
