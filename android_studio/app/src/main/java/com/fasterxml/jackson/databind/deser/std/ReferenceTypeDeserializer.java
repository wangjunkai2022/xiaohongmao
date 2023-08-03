package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class ReferenceTypeDeserializer<T> extends StdDeserializer<T> implements com.fasterxml.jackson.databind.deser.c {

    /* renamed from: j  reason: collision with root package name */
    private static final long f14975j = 2;

    /* renamed from: f  reason: collision with root package name */
    protected final JavaType f14976f;

    /* renamed from: g  reason: collision with root package name */
    protected final ValueInstantiator f14977g;

    /* renamed from: h  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.b f14978h;

    /* renamed from: i  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<Object> f14979i;

    public ReferenceTypeDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        super(javaType);
        this.f14977g = valueInstantiator;
        this.f14976f = javaType;
        this.f14979i = dVar;
        this.f14978h = bVar;
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> handleSecondaryContextualization;
        com.fasterxml.jackson.databind.d<?> dVar = this.f14979i;
        if (dVar == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(this.f14976f.getReferencedType(), beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(dVar, beanProperty, this.f14976f.getReferencedType());
        }
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14978h;
        if (bVar != null) {
            bVar = bVar.forProperty(beanProperty);
        }
        return (handleSecondaryContextualization == this.f14979i && bVar == this.f14978h) ? this : withResolved(bVar, handleSecondaryContextualization);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.d
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object deserializeWithType;
        ValueInstantiator valueInstantiator = this.f14977g;
        if (valueInstantiator != null) {
            return (T) deserialize(jsonParser, deserializationContext, valueInstantiator.createUsingDefault(deserializationContext));
        }
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14978h;
        if (bVar == null) {
            deserializeWithType = this.f14979i.deserialize(jsonParser, deserializationContext);
        } else {
            deserializeWithType = this.f14979i.deserializeWithType(jsonParser, deserializationContext, bVar);
        }
        return (T) referenceValue(deserializeWithType);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            return getNullValue(deserializationContext);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar2 = this.f14978h;
        if (bVar2 == null) {
            return deserialize(jsonParser, deserializationContext);
        }
        return referenceValue(bVar2.deserializeTypedFromAny(jsonParser, deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.d
    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.DYNAMIC;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return getNullValue(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
    public AccessPattern getNullAccessPattern() {
        return AccessPattern.DYNAMIC;
    }

    @Override // com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
    public abstract T getNullValue(DeserializationContext deserializationContext) throws JsonMappingException;

    public abstract Object getReferenced(T t9);

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.deser.ValueInstantiator.a
    public ValueInstantiator getValueInstantiator() {
        return this.f14977g;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public JavaType getValueType() {
        return this.f14976f;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14979i;
        if (dVar != null) {
            return dVar.logicalType();
        }
        return super.logicalType();
    }

    public abstract T referenceValue(Object obj);

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14979i;
        if (dVar == null) {
            return null;
        }
        return dVar.supportsUpdate(deserializationConfig);
    }

    public abstract T updateReference(T t9, Object obj);

    protected abstract ReferenceTypeDeserializer<T> withResolved(com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar);

    @Deprecated
    public ReferenceTypeDeserializer(JavaType javaType, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        this(javaType, null, bVar, dVar);
    }

    @Override // com.fasterxml.jackson.databind.d
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, T t9) throws IOException {
        Object deserializeWithType;
        Object deserializeWithType2;
        if (!this.f14979i.supportsUpdate(deserializationContext.getConfig()).equals(Boolean.FALSE) && this.f14978h == null) {
            Object referenced = getReferenced(t9);
            if (referenced == null) {
                com.fasterxml.jackson.databind.jsontype.b bVar = this.f14978h;
                if (bVar == null) {
                    deserializeWithType2 = this.f14979i.deserialize(jsonParser, deserializationContext);
                } else {
                    deserializeWithType2 = this.f14979i.deserializeWithType(jsonParser, deserializationContext, bVar);
                }
                return referenceValue(deserializeWithType2);
            }
            deserializeWithType = this.f14979i.deserialize(jsonParser, deserializationContext, referenced);
        } else {
            com.fasterxml.jackson.databind.jsontype.b bVar2 = this.f14978h;
            if (bVar2 == null) {
                deserializeWithType = this.f14979i.deserialize(jsonParser, deserializationContext);
            } else {
                deserializeWithType = this.f14979i.deserializeWithType(jsonParser, deserializationContext, bVar2);
            }
        }
        return updateReference(t9, deserializeWithType);
    }
}
