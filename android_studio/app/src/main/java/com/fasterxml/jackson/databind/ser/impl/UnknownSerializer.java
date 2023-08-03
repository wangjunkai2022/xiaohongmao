package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.std.ToEmptyObjectSerializer;
import java.io.IOException;

/* loaded from: classes.dex */
public class UnknownSerializer extends ToEmptyObjectSerializer {
    public UnknownSerializer() {
        super(Object.class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ToEmptyObjectSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (lVar.isEnabled(SerializationFeature.FAIL_ON_EMPTY_BEANS)) {
            v(lVar, obj);
        }
        super.serialize(obj, jsonGenerator, lVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ToEmptyObjectSerializer, com.fasterxml.jackson.databind.g
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        if (lVar.isEnabled(SerializationFeature.FAIL_ON_EMPTY_BEANS)) {
            v(lVar, obj);
        }
        super.serializeWithType(obj, jsonGenerator, lVar, fVar);
    }

    protected void v(l lVar, Object obj) throws JsonMappingException {
        lVar.reportBadDefinition(handledType(), String.format("No serializer found for class %s and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS)", obj.getClass().getName()));
    }

    public UnknownSerializer(Class<?> cls) {
        super(cls);
    }
}
