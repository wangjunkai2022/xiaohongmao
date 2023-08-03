package com.auth0.jwt.impl;

import com.auth0.jwt.exceptions.JWTDecodeException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectReader;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* compiled from: JsonNodeClaim.java */
/* loaded from: classes.dex */
class e implements com.auth0.jwt.interfaces.a {

    /* renamed from: a  reason: collision with root package name */
    private final ObjectReader f7086a;

    /* renamed from: b  reason: collision with root package name */
    private final com.fasterxml.jackson.databind.e f7087b;

    /* compiled from: JsonNodeClaim.java */
    /* loaded from: classes.dex */
    class a extends com.fasterxml.jackson.core.type.b<Map<String, Object>> {
        a() {
        }
    }

    private e(com.fasterxml.jackson.databind.e eVar, ObjectReader objectReader) {
        this.f7087b = eVar;
        this.f7086a = objectReader;
    }

    static com.auth0.jwt.interfaces.a k(com.fasterxml.jackson.databind.e eVar, ObjectReader objectReader) {
        if (eVar != null && !eVar.isNull() && !eVar.isMissingNode()) {
            return new e(eVar, objectReader);
        }
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.auth0.jwt.interfaces.a l(String str, Map<String, com.fasterxml.jackson.databind.e> map, ObjectReader objectReader) {
        return k(map.get(str), objectReader);
    }

    @Override // com.auth0.jwt.interfaces.a
    public String a() {
        if (this.f7087b.isTextual()) {
            return this.f7087b.asText();
        }
        return null;
    }

    @Override // com.auth0.jwt.interfaces.a
    public Map<String, Object> asMap() throws JWTDecodeException {
        if (this.f7087b.isObject()) {
            try {
                return (Map) this.f7086a.treeAsTokens(this.f7087b).F1(new a());
            } catch (IOException e4) {
                throw new JWTDecodeException("Couldn't map the Claim value to Map", e4);
            }
        }
        return null;
    }

    @Override // com.auth0.jwt.interfaces.a
    public Date b() {
        if (this.f7087b.canConvertToLong()) {
            return new Date(this.f7087b.asLong() * 1000);
        }
        return null;
    }

    @Override // com.auth0.jwt.interfaces.a
    public boolean c() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.auth0.jwt.interfaces.a
    public <T> T[] d(Class<T> cls) throws JWTDecodeException {
        if (this.f7087b.isArray()) {
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, this.f7087b.size()));
            for (int i4 = 0; i4 < this.f7087b.size(); i4++) {
                try {
                    tArr[i4] = this.f7086a.treeToValue(this.f7087b.get(i4), cls);
                } catch (JsonProcessingException e4) {
                    throw new JWTDecodeException("Couldn't map the Claim's array contents to " + cls.getSimpleName(), e4);
                }
            }
            return tArr;
        }
        return null;
    }

    @Override // com.auth0.jwt.interfaces.a
    public <T> List<T> e(Class<T> cls) throws JWTDecodeException {
        if (this.f7087b.isArray()) {
            ArrayList arrayList = new ArrayList();
            for (int i4 = 0; i4 < this.f7087b.size(); i4++) {
                try {
                    arrayList.add(this.f7086a.treeToValue(this.f7087b.get(i4), cls));
                } catch (JsonProcessingException e4) {
                    throw new JWTDecodeException("Couldn't map the Claim's array contents to " + cls.getSimpleName(), e4);
                }
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.auth0.jwt.interfaces.a
    public Integer f() {
        if (this.f7087b.isNumber()) {
            return Integer.valueOf(this.f7087b.asInt());
        }
        return null;
    }

    @Override // com.auth0.jwt.interfaces.a
    public Long g() {
        if (this.f7087b.isNumber()) {
            return Long.valueOf(this.f7087b.asLong());
        }
        return null;
    }

    @Override // com.auth0.jwt.interfaces.a
    public Double h() {
        if (this.f7087b.isNumber()) {
            return Double.valueOf(this.f7087b.asDouble());
        }
        return null;
    }

    @Override // com.auth0.jwt.interfaces.a
    public Boolean i() {
        if (this.f7087b.isBoolean()) {
            return Boolean.valueOf(this.f7087b.asBoolean());
        }
        return null;
    }

    @Override // com.auth0.jwt.interfaces.a
    public <T> T j(Class<T> cls) throws JWTDecodeException {
        try {
            return (T) this.f7086a.treeAsTokens(this.f7087b).G1(cls);
        } catch (IOException e4) {
            throw new JWTDecodeException("Couldn't map the Claim value to " + cls.getSimpleName(), e4);
        }
    }

    public String toString() {
        return this.f7087b.toString();
    }
}
