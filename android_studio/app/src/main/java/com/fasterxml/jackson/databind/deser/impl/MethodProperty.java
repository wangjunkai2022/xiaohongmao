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
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class MethodProperty extends SettableBeanProperty {

    /* renamed from: s  reason: collision with root package name */
    private static final long f14713s = 1;

    /* renamed from: p  reason: collision with root package name */
    protected final AnnotatedMethod f14714p;

    /* renamed from: q  reason: collision with root package name */
    protected final transient Method f14715q;

    /* renamed from: r  reason: collision with root package name */
    protected final boolean f14716r;

    public MethodProperty(com.fasterxml.jackson.databind.introspect.k kVar, JavaType javaType, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.util.a aVar, AnnotatedMethod annotatedMethod) {
        super(kVar, javaType, bVar, aVar);
        this.f14714p = annotatedMethod;
        this.f14715q = annotatedMethod.getAnnotated();
        this.f14716r = NullsConstantProvider.isSkipper(this.f14648j);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object deserializeWithType;
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            if (this.f14716r) {
                return;
            }
            deserializeWithType = this.f14648j.getNullValue(deserializationContext);
        } else {
            com.fasterxml.jackson.databind.jsontype.b bVar = this.f14647i;
            if (bVar == null) {
                Object deserialize = this.f14646h.deserialize(jsonParser, deserializationContext);
                if (deserialize != null) {
                    deserializeWithType = deserialize;
                } else if (this.f14716r) {
                    return;
                } else {
                    deserializeWithType = this.f14648j.getNullValue(deserializationContext);
                }
            } else {
                deserializeWithType = this.f14646h.deserializeWithType(jsonParser, deserializationContext, bVar);
            }
        }
        try {
            this.f14715q.invoke(obj, deserializeWithType);
        } catch (Exception e4) {
            c(jsonParser, e4, deserializeWithType);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object deserializeWithType;
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            if (this.f14716r) {
                return obj;
            }
            deserializeWithType = this.f14648j.getNullValue(deserializationContext);
        } else {
            com.fasterxml.jackson.databind.jsontype.b bVar = this.f14647i;
            if (bVar == null) {
                Object deserialize = this.f14646h.deserialize(jsonParser, deserializationContext);
                if (deserialize != null) {
                    deserializeWithType = deserialize;
                } else if (this.f14716r) {
                    return obj;
                } else {
                    deserializeWithType = this.f14648j.getNullValue(deserializationContext);
                }
            } else {
                deserializeWithType = this.f14646h.deserializeWithType(jsonParser, deserializationContext, bVar);
            }
        }
        try {
            Object invoke = this.f14715q.invoke(obj, deserializeWithType);
            return invoke == null ? obj : invoke;
        } catch (Exception e4) {
            c(jsonParser, e4, deserializeWithType);
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void fixAccess(DeserializationConfig deserializationConfig) {
        this.f14714p.fixAccess(deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        AnnotatedMethod annotatedMethod = this.f14714p;
        if (annotatedMethod == null) {
            return null;
        }
        return (A) annotatedMethod.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this.f14714p;
    }

    Object h() {
        return new MethodProperty(this, this.f14714p.getAnnotated());
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void set(Object obj, Object obj2) throws IOException {
        try {
            this.f14715q.invoke(obj, obj2);
        } catch (Exception e4) {
            d(e4, obj2);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        try {
            Object invoke = this.f14715q.invoke(obj, obj2);
            return invoke == null ? obj : invoke;
        } catch (Exception e4) {
            d(e4, obj2);
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withName(PropertyName propertyName) {
        return new MethodProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withNullProvider(l lVar) {
        return new MethodProperty(this, this.f14646h, lVar);
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
        return new MethodProperty(this, dVar, lVar);
    }

    protected MethodProperty(MethodProperty methodProperty, com.fasterxml.jackson.databind.d<?> dVar, l lVar) {
        super(methodProperty, dVar, lVar);
        this.f14714p = methodProperty.f14714p;
        this.f14715q = methodProperty.f14715q;
        this.f14716r = NullsConstantProvider.isSkipper(lVar);
    }

    protected MethodProperty(MethodProperty methodProperty, PropertyName propertyName) {
        super(methodProperty, propertyName);
        this.f14714p = methodProperty.f14714p;
        this.f14715q = methodProperty.f14715q;
        this.f14716r = methodProperty.f14716r;
    }

    protected MethodProperty(MethodProperty methodProperty, Method method) {
        super(methodProperty);
        this.f14714p = methodProperty.f14714p;
        this.f14715q = method;
        this.f14716r = methodProperty.f14716r;
    }
}
