package com.fasterxml.jackson.databind.ser.std;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public class ClassSerializer extends StdScalarSerializer<Class<?>> {
    public ClassSerializer() {
        super(Class.class, false);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        t(fVar, javaType);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public e getSchema(l lVar, Type type) {
        return d(TypedValues.Custom.S_STRING, true);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Class<?> cls, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.P1(cls.getName());
    }
}
