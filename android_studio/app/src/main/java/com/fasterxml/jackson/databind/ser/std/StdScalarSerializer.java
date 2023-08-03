package com.fasterxml.jackson.databind.ser.std;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public abstract class StdScalarSerializer<T> extends StdSerializer<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    public StdScalarSerializer(Class<T> cls) {
        super(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        t(fVar, javaType);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public e getSchema(l lVar, Type type) throws JsonMappingException {
        return d(TypedValues.Custom.S_STRING, true);
    }

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(T t9, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(t9, JsonToken.VALUE_STRING));
        serialize(t9, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdScalarSerializer(Class<?> cls, boolean z9) {
        super(cls);
    }

    protected StdScalarSerializer(StdScalarSerializer<?> stdScalarSerializer) {
        super(stdScalarSerializer);
    }
}
