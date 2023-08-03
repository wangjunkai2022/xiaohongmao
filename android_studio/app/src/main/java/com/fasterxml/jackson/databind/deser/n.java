package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonLocation;

/* compiled from: UnresolvedId.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final Object f14841a;

    /* renamed from: b  reason: collision with root package name */
    private final JsonLocation f14842b;

    /* renamed from: c  reason: collision with root package name */
    private final Class<?> f14843c;

    public n(Object obj, Class<?> cls, JsonLocation jsonLocation) {
        this.f14841a = obj;
        this.f14843c = cls;
        this.f14842b = jsonLocation;
    }

    public Object a() {
        return this.f14841a;
    }

    public JsonLocation b() {
        return this.f14842b;
    }

    public Class<?> c() {
        return this.f14843c;
    }

    public String toString() {
        return String.format("Object id [%s] (for %s) at %s", this.f14841a, com.fasterxml.jackson.databind.util.g.j0(this.f14843c), this.f14842b);
    }
}
