package com.posthog.android;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Options.java */
/* loaded from: classes3.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f47506a = new ConcurrentHashMap();

    public Map<String, Object> a() {
        return new LinkedHashMap(this.f47506a);
    }

    public k b(String str, Object obj) {
        this.f47506a.put(str, obj);
        return this;
    }
}
