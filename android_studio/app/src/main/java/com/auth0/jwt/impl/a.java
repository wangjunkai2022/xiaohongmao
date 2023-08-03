package com.auth0.jwt.impl;

import com.fasterxml.jackson.databind.ObjectReader;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BasicHeader.java */
/* loaded from: classes.dex */
public class a implements com.auth0.jwt.interfaces.e, Serializable {

    /* renamed from: g  reason: collision with root package name */
    private static final long f7074g = -4659137688548605095L;

    /* renamed from: a  reason: collision with root package name */
    private final String f7075a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7076b;

    /* renamed from: c  reason: collision with root package name */
    private final String f7077c;

    /* renamed from: d  reason: collision with root package name */
    private final String f7078d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, com.fasterxml.jackson.databind.e> f7079e;

    /* renamed from: f  reason: collision with root package name */
    private final ObjectReader f7080f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2, String str3, String str4, Map<String, com.fasterxml.jackson.databind.e> map, ObjectReader objectReader) {
        this.f7075a = str;
        this.f7076b = str2;
        this.f7077c = str3;
        this.f7078d = str4;
        this.f7079e = Collections.unmodifiableMap(map == null ? new HashMap<>() : map);
        this.f7080f = objectReader;
    }

    Map<String, com.fasterxml.jackson.databind.e> a() {
        return this.f7079e;
    }

    @Override // com.auth0.jwt.interfaces.e
    public String d() {
        return this.f7078d;
    }

    @Override // com.auth0.jwt.interfaces.e
    public String getAlgorithm() {
        return this.f7075a;
    }

    @Override // com.auth0.jwt.interfaces.e
    public String getContentType() {
        return this.f7077c;
    }

    @Override // com.auth0.jwt.interfaces.e
    public String getType() {
        return this.f7076b;
    }

    @Override // com.auth0.jwt.interfaces.e
    public com.auth0.jwt.interfaces.a m(String str) {
        return e.l(str, this.f7079e, this.f7080f);
    }
}
