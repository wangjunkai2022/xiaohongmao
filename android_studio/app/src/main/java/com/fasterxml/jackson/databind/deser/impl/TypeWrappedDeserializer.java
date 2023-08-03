package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collection;

/* loaded from: classes.dex */
public final class TypeWrappedDeserializer extends com.fasterxml.jackson.databind.d<Object> implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14740c = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.b f14741a;

    /* renamed from: b  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<Object> f14742b;

    public TypeWrappedDeserializer(com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        this.f14741a = bVar;
        this.f14742b = dVar;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return this.f14742b.deserializeWithType(jsonParser, deserializationContext, this.f14741a);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        throw new IllegalStateException("Type-wrapped deserializer's deserializeWithType should never get called");
    }

    @Override // com.fasterxml.jackson.databind.d
    public com.fasterxml.jackson.databind.d<?> getDelegatee() {
        return this.f14742b.getDelegatee();
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this.f14742b.getEmptyValue(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Collection<Object> getKnownPropertyNames() {
        return this.f14742b.getKnownPropertyNames();
    }

    @Override // com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
    public Object getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this.f14742b.getNullValue(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Class<?> handledType() {
        return this.f14742b.handledType();
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return this.f14742b.logicalType();
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return this.f14742b.supportsUpdate(deserializationConfig);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return this.f14742b.deserialize(jsonParser, deserializationContext, obj);
    }
}
