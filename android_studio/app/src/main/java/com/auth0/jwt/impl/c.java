package com.auth0.jwt.impl;

import com.auth0.jwt.exceptions.JWTDecodeException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.ObjectReader;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HeaderDeserializer.java */
/* loaded from: classes.dex */
public class c extends StdDeserializer<com.auth0.jwt.impl.a> {

    /* renamed from: f  reason: collision with root package name */
    private final ObjectReader f7082f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HeaderDeserializer.java */
    /* loaded from: classes.dex */
    public class a extends com.fasterxml.jackson.core.type.b<Map<String, com.fasterxml.jackson.databind.e>> {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(ObjectReader objectReader) {
        this(null, objectReader);
    }

    @Override // com.fasterxml.jackson.databind.d
    /* renamed from: C0 */
    public com.auth0.jwt.impl.a deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Map<String, com.fasterxml.jackson.databind.e> map = (Map) jsonParser.s0().readValue(jsonParser, new a());
        if (map != null) {
            return new com.auth0.jwt.impl.a(D0(map, i.f7101a), D0(map, i.f7103c), D0(map, i.f7102b), D0(map, i.f7104d), map, this.f7082f);
        }
        throw new JWTDecodeException("Parsing the Header's JSON resulted on a Null map");
    }

    String D0(Map<String, com.fasterxml.jackson.databind.e> map, String str) {
        com.fasterxml.jackson.databind.e eVar = map.get(str);
        if (eVar == null || eVar.isNull()) {
            return null;
        }
        return eVar.asText(null);
    }

    private c(Class<?> cls, ObjectReader objectReader) {
        super(cls);
        this.f7082f = objectReader;
    }
}
