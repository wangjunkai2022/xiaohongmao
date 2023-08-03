package com.auth0.jwt.impl;

import java.util.HashMap;
import java.util.Map;

/* compiled from: ClaimsHolder.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f7081a;

    public b(Map<String, Object> map) {
        this.f7081a = map == null ? new HashMap<>() : map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> a() {
        return this.f7081a;
    }
}
