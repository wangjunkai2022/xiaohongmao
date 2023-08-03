package com.auth0.jwt.impl;

import com.auth0.jwt.exceptions.JWTDecodeException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.ObjectReader;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PayloadDeserializer.java */
/* loaded from: classes.dex */
public class g extends StdDeserializer<com.auth0.jwt.interfaces.i> {

    /* renamed from: f  reason: collision with root package name */
    private final ObjectReader f7089f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PayloadDeserializer.java */
    /* loaded from: classes.dex */
    public class a extends com.fasterxml.jackson.core.type.b<Map<String, com.fasterxml.jackson.databind.e>> {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(ObjectReader objectReader) {
        this(null, objectReader);
    }

    @Override // com.fasterxml.jackson.databind.d
    /* renamed from: C0 */
    public com.auth0.jwt.interfaces.i deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Map<String, com.fasterxml.jackson.databind.e> map = (Map) jsonParser.s0().readValue(jsonParser, new a());
        if (map != null) {
            return new h(E0(map, i.f7105e), E0(map, i.f7106f), F0(map, i.f7111k), D0(map, i.f7107g), D0(map, i.f7108h), D0(map, i.f7109i), E0(map, i.f7110j), map, this.f7089f);
        }
        throw new JWTDecodeException("Parsing the Payload's JSON resulted on a Null map");
    }

    Date D0(Map<String, com.fasterxml.jackson.databind.e> map, String str) {
        com.fasterxml.jackson.databind.e eVar = map.get(str);
        if (eVar == null || eVar.isNull()) {
            return null;
        }
        if (eVar.canConvertToLong()) {
            return new Date(eVar.asLong() * 1000);
        }
        throw new JWTDecodeException(String.format("The claim '%s' contained a non-numeric date value.", str));
    }

    String E0(Map<String, com.fasterxml.jackson.databind.e> map, String str) {
        com.fasterxml.jackson.databind.e eVar = map.get(str);
        if (eVar == null || eVar.isNull()) {
            return null;
        }
        return eVar.asText(null);
    }

    List<String> F0(Map<String, com.fasterxml.jackson.databind.e> map, String str) throws JWTDecodeException {
        com.fasterxml.jackson.databind.e eVar = map.get(str);
        if (eVar == null || eVar.isNull()) {
            return null;
        }
        if (eVar.isArray() || eVar.isTextual()) {
            if (eVar.isTextual() && !eVar.asText().isEmpty()) {
                return Collections.singletonList(eVar.asText());
            }
            ArrayList arrayList = new ArrayList(eVar.size());
            for (int i4 = 0; i4 < eVar.size(); i4++) {
                try {
                    arrayList.add((String) this.f7089f.treeToValue(eVar.get(i4), String.class));
                } catch (JsonProcessingException e4) {
                    throw new JWTDecodeException("Couldn't map the Claim's array contents to String", e4);
                }
            }
            return arrayList;
        }
        return null;
    }

    private g(Class<?> cls, ObjectReader objectReader) {
        super(cls);
        this.f7089f = objectReader;
    }
}
