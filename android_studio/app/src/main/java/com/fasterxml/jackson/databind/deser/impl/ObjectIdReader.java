package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.c0;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.io.IOException;
import java.io.Serializable;

/* loaded from: classes.dex */
public class ObjectIdReader implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14727c = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final JavaType f14728a;

    /* renamed from: b  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<Object> f14729b;
    public final ObjectIdGenerator<?> generator;
    public final SettableBeanProperty idProperty;
    public final PropertyName propertyName;
    public final c0 resolver;

    protected ObjectIdReader(JavaType javaType, PropertyName propertyName, ObjectIdGenerator<?> objectIdGenerator, com.fasterxml.jackson.databind.d<?> dVar, SettableBeanProperty settableBeanProperty, c0 c0Var) {
        this.f14728a = javaType;
        this.propertyName = propertyName;
        this.generator = objectIdGenerator;
        this.resolver = c0Var;
        this.f14729b = dVar;
        this.idProperty = settableBeanProperty;
    }

    public static ObjectIdReader construct(JavaType javaType, PropertyName propertyName, ObjectIdGenerator<?> objectIdGenerator, com.fasterxml.jackson.databind.d<?> dVar, SettableBeanProperty settableBeanProperty, c0 c0Var) {
        return new ObjectIdReader(javaType, propertyName, objectIdGenerator, dVar, settableBeanProperty, c0Var);
    }

    public com.fasterxml.jackson.databind.d<Object> getDeserializer() {
        return this.f14729b;
    }

    public JavaType getIdType() {
        return this.f14728a;
    }

    public boolean isValidReferencePropertyName(String str, JsonParser jsonParser) {
        return this.generator.isValidReferencePropertyName(str, jsonParser);
    }

    public boolean maySerializeAsObject() {
        return this.generator.maySerializeAsObject();
    }

    public Object readObjectReference(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return this.f14729b.deserialize(jsonParser, deserializationContext);
    }
}
