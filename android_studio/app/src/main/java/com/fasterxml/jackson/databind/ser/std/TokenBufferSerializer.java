package com.fasterxml.jackson.databind.ser.std;

import c2.a;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.lang.reflect.Type;
import shaded.org.apache.commons.codec.language.bm.c;

@a
/* loaded from: classes2.dex */
public class TokenBufferSerializer extends StdSerializer<t> {
    public TokenBufferSerializer() {
        super(t.class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        fVar.j(javaType);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public e getSchema(l lVar, Type type) {
        return d(c.f93573b, true);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(t tVar, JsonGenerator jsonGenerator, l lVar) throws IOException {
        tVar.s2(jsonGenerator);
    }

    @Override // com.fasterxml.jackson.databind.g
    public final void serializeWithType(t tVar, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(tVar, JsonToken.VALUE_EMBEDDED_OBJECT));
        serialize(tVar, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }
}
