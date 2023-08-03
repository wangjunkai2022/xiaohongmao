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
public final class SetterlessProperty extends SettableBeanProperty {

    /* renamed from: r  reason: collision with root package name */
    private static final long f14737r = 1;

    /* renamed from: p  reason: collision with root package name */
    protected final AnnotatedMethod f14738p;

    /* renamed from: q  reason: collision with root package name */
    protected final Method f14739q;

    public SetterlessProperty(com.fasterxml.jackson.databind.introspect.k kVar, JavaType javaType, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.util.a aVar, AnnotatedMethod annotatedMethod) {
        super(kVar, javaType, bVar, aVar);
        this.f14738p = annotatedMethod;
        this.f14739q = annotatedMethod.getAnnotated();
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            return;
        }
        if (this.f14647i != null) {
            deserializationContext.reportBadDefinition(getType(), String.format("Problem deserializing 'setterless' property (\"%s\"): no way to handle typed deser with setterless yet", getName()));
        }
        try {
            Object invoke = this.f14739q.invoke(obj, null);
            if (invoke == null) {
                deserializationContext.reportBadDefinition(getType(), String.format("Problem deserializing 'setterless' property '%s': get method returned null", getName()));
            }
            this.f14646h.deserialize(jsonParser, deserializationContext, invoke);
        } catch (Exception e4) {
            a(jsonParser, e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        deserializeAndSet(jsonParser, deserializationContext, obj);
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void fixAccess(DeserializationConfig deserializationConfig) {
        this.f14738p.fixAccess(deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f14738p.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this.f14738p;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void set(Object obj, Object obj2) throws IOException {
        throw new UnsupportedOperationException("Should never call `set()` on setterless property ('" + getName() + "')");
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        set(obj, obj2);
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withName(PropertyName propertyName) {
        return new SetterlessProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SettableBeanProperty withNullProvider(l lVar) {
        return new SetterlessProperty(this, this.f14646h, lVar);
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
        return new SetterlessProperty(this, dVar, lVar);
    }

    protected SetterlessProperty(SetterlessProperty setterlessProperty, com.fasterxml.jackson.databind.d<?> dVar, l lVar) {
        super(setterlessProperty, dVar, lVar);
        this.f14738p = setterlessProperty.f14738p;
        this.f14739q = setterlessProperty.f14739q;
    }

    protected SetterlessProperty(SetterlessProperty setterlessProperty, PropertyName propertyName) {
        super(setterlessProperty, propertyName);
        this.f14738p = setterlessProperty.f14738p;
        this.f14739q = setterlessProperty.f14739q;
    }
}
