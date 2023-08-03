package com.fasterxml.jackson.databind.ser.std;

import c2.a;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.lang.reflect.Type;

@a
/* loaded from: classes2.dex */
public class ToEmptyObjectSerializer extends StdSerializer<Object> {
    /* JADX INFO: Access modifiers changed from: protected */
    public ToEmptyObjectSerializer(Class<?> cls) {
        super(cls, false);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        fVar.e(javaType);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public e getSchema(l lVar, Type type) throws JsonMappingException {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, Object obj) {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.M1(obj, 0);
        jsonGenerator.S0();
    }

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        fVar.v(jsonGenerator, fVar.o(jsonGenerator, fVar.f(obj, JsonToken.START_OBJECT)));
    }

    public ToEmptyObjectSerializer(JavaType javaType) {
        super(javaType);
    }
}
