package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.m;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import java.io.IOException;
import java.util.Collection;

/* loaded from: classes.dex */
public abstract class DelegatingDeserializer extends StdDeserializer<Object> implements com.fasterxml.jackson.databind.deser.c, m {

    /* renamed from: g  reason: collision with root package name */
    private static final long f14869g = 1;

    /* renamed from: f  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<?> f14870f;

    public DelegatingDeserializer(com.fasterxml.jackson.databind.d<?> dVar) {
        super(dVar.handledType());
        this.f14870f = dVar;
    }

    protected abstract com.fasterxml.jackson.databind.d<?> C0(com.fasterxml.jackson.databind.d<?> dVar);

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(this.f14870f, beanProperty, deserializationContext.constructType(this.f14870f.handledType()));
        return handleSecondaryContextualization == this.f14870f ? this : C0(handleSecondaryContextualization);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return this.f14870f.deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return this.f14870f.deserializeWithType(jsonParser, deserializationContext, bVar);
    }

    @Override // com.fasterxml.jackson.databind.d
    public SettableBeanProperty findBackReference(String str) {
        return this.f14870f.findBackReference(str);
    }

    @Override // com.fasterxml.jackson.databind.d
    public com.fasterxml.jackson.databind.d<?> getDelegatee() {
        return this.f14870f;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this.f14870f.getEmptyValue(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Collection<Object> getKnownPropertyNames() {
        return this.f14870f.getKnownPropertyNames();
    }

    @Override // com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
    public AccessPattern getNullAccessPattern() {
        return this.f14870f.getNullAccessPattern();
    }

    @Override // com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
    public Object getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this.f14870f.getNullValue(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public ObjectIdReader getObjectIdReader() {
        return this.f14870f.getObjectIdReader();
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return this.f14870f.isCachable();
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return this.f14870f.logicalType();
    }

    @Override // com.fasterxml.jackson.databind.d
    public com.fasterxml.jackson.databind.d<?> replaceDelegatee(com.fasterxml.jackson.databind.d<?> dVar) {
        return dVar == this.f14870f ? this : C0(dVar);
    }

    @Override // com.fasterxml.jackson.databind.deser.m
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> dVar = this.f14870f;
        if (dVar instanceof m) {
            ((m) dVar).resolve(deserializationContext);
        }
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return this.f14870f.supportsUpdate(deserializationConfig);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return this.f14870f.deserialize(jsonParser, deserializationContext, obj);
    }
}
