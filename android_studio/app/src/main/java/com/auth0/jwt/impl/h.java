package com.auth0.jwt.impl;

import com.fasterxml.jackson.databind.ObjectReader;
import java.io.Serializable;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PayloadImpl.java */
/* loaded from: classes.dex */
public class h implements com.auth0.jwt.interfaces.i, Serializable {

    /* renamed from: j  reason: collision with root package name */
    private static final long f7091j = 1659021498824562311L;

    /* renamed from: a  reason: collision with root package name */
    private final String f7092a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7093b;

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f7094c;

    /* renamed from: d  reason: collision with root package name */
    private final Date f7095d;

    /* renamed from: e  reason: collision with root package name */
    private final Date f7096e;

    /* renamed from: f  reason: collision with root package name */
    private final Date f7097f;

    /* renamed from: g  reason: collision with root package name */
    private final String f7098g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, com.fasterxml.jackson.databind.e> f7099h;

    /* renamed from: i  reason: collision with root package name */
    private final ObjectReader f7100i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, String str2, List<String> list, Date date, Date date2, Date date3, String str3, Map<String, com.fasterxml.jackson.databind.e> map, ObjectReader objectReader) {
        this.f7092a = str;
        this.f7093b = str2;
        this.f7094c = list != null ? Collections.unmodifiableList(list) : null;
        this.f7095d = date;
        this.f7096e = date2;
        this.f7097f = date3;
        this.f7098g = str3;
        this.f7099h = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f7100i = objectReader;
    }

    @Override // com.auth0.jwt.interfaces.i
    public String a() {
        return this.f7093b;
    }

    @Override // com.auth0.jwt.interfaces.i
    public Date b() {
        return this.f7095d;
    }

    @Override // com.auth0.jwt.interfaces.i
    public Date c() {
        return this.f7097f;
    }

    Map<String, com.fasterxml.jackson.databind.e> d() {
        return this.f7099h;
    }

    @Override // com.auth0.jwt.interfaces.i
    public String getId() {
        return this.f7098g;
    }

    @Override // com.auth0.jwt.interfaces.i
    public String getIssuer() {
        return this.f7092a;
    }

    @Override // com.auth0.jwt.interfaces.i
    public Date getNotBefore() {
        return this.f7096e;
    }

    @Override // com.auth0.jwt.interfaces.i
    public Map<String, com.auth0.jwt.interfaces.a> h() {
        HashMap hashMap = new HashMap(this.f7099h.size() * 2);
        for (String str : this.f7099h.keySet()) {
            hashMap.put(str, e.l(str, this.f7099h, this.f7100i));
        }
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.auth0.jwt.interfaces.i
    public List<String> k() {
        return this.f7094c;
    }

    @Override // com.auth0.jwt.interfaces.i
    public com.auth0.jwt.interfaces.a l(String str) {
        return e.l(str, this.f7099h, this.f7100i);
    }
}
