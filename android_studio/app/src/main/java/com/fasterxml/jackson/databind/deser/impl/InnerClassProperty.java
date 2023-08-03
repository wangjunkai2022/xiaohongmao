package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import java.io.IOException;
import java.lang.reflect.Constructor;

/* loaded from: classes.dex */
public final class InnerClassProperty extends SettableBeanProperty.Delegating {

    /* renamed from: s  reason: collision with root package name */
    private static final long f14704s = 1;

    /* renamed from: q  reason: collision with root package name */
    protected final transient Constructor<?> f14705q;

    /* renamed from: r  reason: collision with root package name */
    protected AnnotatedConstructor f14706r;

    public InnerClassProperty(SettableBeanProperty settableBeanProperty, Constructor<?> constructor) {
        super(settableBeanProperty);
        this.f14705q = constructor;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object obj2;
        Object obj3;
        if (jsonParser.W() == JsonToken.VALUE_NULL) {
            obj3 = this.f14646h.getNullValue(deserializationContext);
        } else {
            com.fasterxml.jackson.databind.jsontype.b bVar = this.f14647i;
            if (bVar != null) {
                obj3 = this.f14646h.deserializeWithType(jsonParser, deserializationContext, bVar);
            } else {
                try {
                    obj2 = this.f14705q.newInstance(obj);
                } catch (Exception e4) {
                    com.fasterxml.jackson.databind.util.g.y0(e4, String.format("Failed to instantiate class %s, problem: %s", this.f14705q.getDeclaringClass().getName(), e4.getMessage()));
                    obj2 = null;
                }
                this.f14646h.deserialize(jsonParser, deserializationContext, obj2);
                obj3 = obj2;
            }
        }
        set(obj, obj3);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return setAndReturn(obj, deserialize(jsonParser, deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating
    protected SettableBeanProperty i(SettableBeanProperty settableBeanProperty) {
        return settableBeanProperty == this.f14653p ? this : new InnerClassProperty(settableBeanProperty, this.f14705q);
    }

    Object j() {
        return new InnerClassProperty(this, this.f14706r);
    }

    Object k() {
        return this.f14706r == null ? new InnerClassProperty(this, new AnnotatedConstructor(null, this.f14705q, null, null)) : this;
    }

    protected InnerClassProperty(SettableBeanProperty settableBeanProperty, AnnotatedConstructor annotatedConstructor) {
        super(settableBeanProperty);
        this.f14706r = annotatedConstructor;
        Constructor<?> annotated = annotatedConstructor == null ? null : annotatedConstructor.getAnnotated();
        this.f14705q = annotated;
        if (annotated == null) {
            throw new IllegalArgumentException("Missing constructor (broken JDK (de)serialization?)");
        }
    }
}
