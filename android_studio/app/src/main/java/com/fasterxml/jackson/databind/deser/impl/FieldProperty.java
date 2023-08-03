package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class FieldProperty extends SettableBeanProperty {

    /* renamed from: s  reason: collision with root package name */
    private static final long f14700s = 1;

    /* renamed from: p  reason: collision with root package name */
    protected final AnnotatedField f14701p;

    /* renamed from: q  reason: collision with root package name */
    protected final transient Field f14702q;

    /* renamed from: r  reason: collision with root package name */
    protected final boolean f14703r;

    public FieldProperty(com.fasterxml.jackson.databind.introspect.k kVar, JavaType javaType, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.util.a aVar, AnnotatedField annotatedField) {
        super(kVar, javaType, bVar, aVar);
        this.f14701p = annotatedField;
        this.f14702q = annotatedField.getAnnotated();
        this.f14703r = NullsConstantProvider.isSkipper(this.f14648j);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object deserializeWithType;
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            if (this.f14703r) {
                return;
            }
            deserializeWithType = this.f14648j.getNullValue(deserializationContext);
        } else {
            com.fasterxml.jackson.databind.jsontype.b bVar = this.f14647i;
            if (bVar == null) {
                Object deserialize = this.f14646h.deserialize(jsonParser, deserializationContext);
                if (deserialize != null) {
                    deserializeWithType = deserialize;
                } else if (this.f14703r) {
                    return;
                } else {
                    deserializeWithType = this.f14648j.getNullValue(deserializationContext);
                }
            } else {
                deserializeWithType = this.f14646h.deserializeWithType(jsonParser, deserializationContext, bVar);
            }
        }
        try {
            this.f14702q.set(obj, deserializeWithType);
        } catch (Exception e4) {
            c(jsonParser, e4, deserializeWithType);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object deserializeWithType;
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            if (this.f14703r) {
                return obj;
            }
            deserializeWithType = this.f14648j.getNullValue(deserializationContext);
        } else {
            com.fasterxml.jackson.databind.jsontype.b bVar = this.f14647i;
            if (bVar == null) {
                Object deserialize = this.f14646h.deserialize(jsonParser, deserializationContext);
                if (deserialize != null) {
                    deserializeWithType = deserialize;
                } else if (this.f14703r) {
                    return obj;
                } else {
                    deserializeWithType = this.f14648j.getNullValue(deserializationContext);
                }
            } else {
                deserializeWithType = this.f14646h.deserializeWithType(jsonParser, deserializationContext, bVar);
            }
        }
        try {
            this.f14702q.set(obj, deserializeWithType);
        } catch (Exception e4) {
            c(jsonParser, e4, deserializeWithType);
        }
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void fixAccess(DeserializationConfig deserializationConfig) {
        com.fasterxml.jackson.databind.util.g.i(this.f14702q, deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        AnnotatedField annotatedField = this.f14701p;
        if (annotatedField == null) {
            return null;
        }
        return (A) annotatedField.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this.f14701p;
    }

    Object h() {
        return new FieldProperty(this);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void set(Object obj, Object obj2) throws IOException {
        try {
            this.f14702q.set(obj, obj2);
        } catch (Exception e4) {
            d(e4, obj2);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        try {
            this.f14702q.set(obj, obj2);
        } catch (Exception e4) {
            d(e4, obj2);
        }
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withName(PropertyName propertyName) {
        return new FieldProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withNullProvider(l lVar) {
        return new FieldProperty(this, this.f14646h, lVar);
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
        return new FieldProperty(this, dVar, lVar);
    }

    protected FieldProperty(FieldProperty fieldProperty, com.fasterxml.jackson.databind.d<?> dVar, l lVar) {
        super(fieldProperty, dVar, lVar);
        this.f14701p = fieldProperty.f14701p;
        this.f14702q = fieldProperty.f14702q;
        this.f14703r = NullsConstantProvider.isSkipper(lVar);
    }

    protected FieldProperty(FieldProperty fieldProperty, PropertyName propertyName) {
        super(fieldProperty, propertyName);
        this.f14701p = fieldProperty.f14701p;
        this.f14702q = fieldProperty.f14702q;
        this.f14703r = fieldProperty.f14703r;
    }

    protected FieldProperty(FieldProperty fieldProperty) {
        super(fieldProperty);
        AnnotatedField annotatedField = fieldProperty.f14701p;
        this.f14701p = annotatedField;
        Field annotated = annotatedField.getAnnotated();
        if (annotated != null) {
            this.f14702q = annotated;
            this.f14703r = fieldProperty.f14703r;
            return;
        }
        throw new IllegalArgumentException("Missing field (broken JDK (de)serialization?)");
    }
}
