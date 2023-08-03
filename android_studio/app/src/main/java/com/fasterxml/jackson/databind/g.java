package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.util.Iterator;

/* compiled from: JsonSerializer.java */
/* loaded from: classes.dex */
public abstract class g<T> implements com.fasterxml.jackson.databind.jsonFormatVisitors.d {

    /* compiled from: JsonSerializer.java */
    /* loaded from: classes.dex */
    public static abstract class a extends g<Object> {
    }

    @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
        fVar.j(javaType);
    }

    public g<?> getDelegatee() {
        return null;
    }

    public Class<T> handledType() {
        return null;
    }

    public boolean isEmpty(l lVar, T t9) {
        return t9 == null;
    }

    @Deprecated
    public boolean isEmpty(T t9) {
        return isEmpty(null, t9);
    }

    public boolean isUnwrappingSerializer() {
        return false;
    }

    public Iterator<PropertyWriter> properties() {
        return com.fasterxml.jackson.databind.util.g.p();
    }

    public g<T> replaceDelegatee(g<?> gVar) {
        throw new UnsupportedOperationException();
    }

    public abstract void serialize(T t9, JsonGenerator jsonGenerator, l lVar) throws IOException;

    /* JADX WARN: Multi-variable type inference failed */
    public void serializeWithType(T t9, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        Class handledType = handledType();
        if (handledType == null) {
            handledType = t9.getClass();
        }
        lVar.reportBadDefinition(handledType, String.format("Type id handling not implemented for type %s (by serializer of type %s)", handledType.getName(), getClass().getName()));
    }

    public g<T> unwrappingSerializer(NameTransformer nameTransformer) {
        return this;
    }

    public boolean usesObjectId() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g<?> withFilterId(Object obj) {
        return this;
    }
}
