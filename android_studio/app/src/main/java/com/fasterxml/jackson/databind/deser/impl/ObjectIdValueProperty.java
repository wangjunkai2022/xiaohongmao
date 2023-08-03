package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.IOException;
import java.lang.annotation.Annotation;

/* loaded from: classes.dex */
public final class ObjectIdValueProperty extends SettableBeanProperty {

    /* renamed from: q  reason: collision with root package name */
    private static final long f14734q = 1;

    /* renamed from: p  reason: collision with root package name */
    protected final ObjectIdReader f14735p;

    public ObjectIdValueProperty(ObjectIdReader objectIdReader, PropertyMetadata propertyMetadata) {
        super(objectIdReader.propertyName, objectIdReader.getIdType(), propertyMetadata, objectIdReader.getDeserializer());
        this.f14735p = objectIdReader;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        deserializeSetAndReturn(jsonParser, deserializationContext, obj);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            return null;
        }
        Object deserialize = this.f14646h.deserialize(jsonParser, deserializationContext);
        ObjectIdReader objectIdReader = this.f14735p;
        deserializationContext.findObjectId(deserialize, objectIdReader.generator, objectIdReader.resolver).b(obj);
        SettableBeanProperty settableBeanProperty = this.f14735p.idProperty;
        return settableBeanProperty != null ? settableBeanProperty.setAndReturn(obj, deserialize) : obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void set(Object obj, Object obj2) throws IOException {
        setAndReturn(obj, obj2);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        SettableBeanProperty settableBeanProperty = this.f14735p.idProperty;
        if (settableBeanProperty != null) {
            return settableBeanProperty.setAndReturn(obj, obj2);
        }
        throw new UnsupportedOperationException("Should not call set() on ObjectIdProperty that has no SettableBeanProperty");
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withName(PropertyName propertyName) {
        return new ObjectIdValueProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withNullProvider(l lVar) {
        return new ObjectIdValueProperty(this, this.f14646h, lVar);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withValueDeserializer(com.fasterxml.jackson.databind.d<?> dVar) {
        com.fasterxml.jackson.databind.d<?> dVar2 = this.f14646h;
        if (dVar2 == dVar) {
            return this;
        }
        l lVar = this.f14648j;
        if (dVar2 == lVar) {
            lVar = dVar;
        }
        return new ObjectIdValueProperty(this, dVar, lVar);
    }

    protected ObjectIdValueProperty(ObjectIdValueProperty objectIdValueProperty, com.fasterxml.jackson.databind.d<?> dVar, l lVar) {
        super(objectIdValueProperty, dVar, lVar);
        this.f14735p = objectIdValueProperty.f14735p;
    }

    protected ObjectIdValueProperty(ObjectIdValueProperty objectIdValueProperty, PropertyName propertyName) {
        super(objectIdValueProperty, propertyName);
        this.f14735p = objectIdValueProperty.f14735p;
    }
}
