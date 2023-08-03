package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.util.Collection;

/* compiled from: JsonDeserializer.java */
/* loaded from: classes.dex */
public abstract class d<T> implements com.fasterxml.jackson.databind.deser.l {

    /* compiled from: JsonDeserializer.java */
    /* loaded from: classes.dex */
    public static abstract class a extends d<Object> {
        private a() {
        }
    }

    public abstract T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JacksonException;

    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, T t9) throws IOException, JacksonException {
        deserializationContext.handleBadMerge(this);
        return deserialize(jsonParser, deserializationContext);
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException, JacksonException {
        return bVar.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    public SettableBeanProperty findBackReference(String str) {
        throw new IllegalArgumentException("Cannot handle managed/back reference '" + str + "': type: value deserializer of type " + getClass().getName() + " does not support them");
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public Object getAbsentValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return getNullValue(deserializationContext);
    }

    public d<?> getDelegatee() {
        return null;
    }

    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.DYNAMIC;
    }

    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return getNullValue(deserializationContext);
    }

    public Collection<Object> getKnownPropertyNames() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public AccessPattern getNullAccessPattern() {
        return AccessPattern.CONSTANT;
    }

    @Deprecated
    public T getNullValue() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public T getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return getNullValue();
    }

    public ObjectIdReader getObjectIdReader() {
        return null;
    }

    public Class<?> handledType() {
        return null;
    }

    public boolean isCachable() {
        return false;
    }

    public LogicalType logicalType() {
        return null;
    }

    public d<?> replaceDelegatee(d<?> dVar) {
        throw new UnsupportedOperationException();
    }

    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return null;
    }

    public d<T> unwrappingDeserializer(NameTransformer nameTransformer) {
        return this;
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar, T t9) throws IOException, JacksonException {
        deserializationContext.handleBadMerge(this);
        return deserializeWithType(jsonParser, deserializationContext, bVar);
    }

    @Deprecated
    public Object getEmptyValue() {
        return getNullValue();
    }
}
