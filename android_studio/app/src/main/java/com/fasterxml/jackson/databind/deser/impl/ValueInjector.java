package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.IOException;

/* loaded from: classes.dex */
public class ValueInjector extends BeanProperty.Std {

    /* renamed from: h  reason: collision with root package name */
    private static final long f14746h = 1;

    /* renamed from: g  reason: collision with root package name */
    protected final Object f14747g;

    public ValueInjector(PropertyName propertyName, JavaType javaType, AnnotatedMember annotatedMember, Object obj) {
        super(propertyName, javaType, null, annotatedMember, PropertyMetadata.STD_OPTIONAL);
        this.f14747g = obj;
    }

    public Object findValue(DeserializationContext deserializationContext, Object obj) throws JsonMappingException {
        return deserializationContext.findInjectableValue(this.f14747g, this, obj);
    }

    public void inject(DeserializationContext deserializationContext, Object obj) throws IOException {
        this.f14320e.setValue(obj, findValue(deserializationContext, obj));
    }

    @Deprecated
    public ValueInjector(PropertyName propertyName, JavaType javaType, com.fasterxml.jackson.databind.util.a aVar, AnnotatedMember annotatedMember, Object obj) {
        this(propertyName, javaType, annotatedMember, obj);
    }
}
