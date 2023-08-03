package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.exc.InvalidNullException;
import com.fasterxml.jackson.databind.util.AccessPattern;
import java.io.Serializable;

/* loaded from: classes.dex */
public class NullsFailProvider implements l, Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14724c = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final PropertyName f14725a;

    /* renamed from: b  reason: collision with root package name */
    protected final JavaType f14726b;

    protected NullsFailProvider(PropertyName propertyName, JavaType javaType) {
        this.f14725a = propertyName;
        this.f14726b = javaType;
    }

    public static NullsFailProvider constructForProperty(BeanProperty beanProperty) {
        return constructForProperty(beanProperty, beanProperty.getType());
    }

    public static NullsFailProvider constructForRootValue(JavaType javaType) {
        return new NullsFailProvider(null, javaType);
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public /* synthetic */ Object getAbsentValue(DeserializationContext deserializationContext) {
        return com.fasterxml.jackson.databind.deser.k.a(this, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public AccessPattern getNullAccessPattern() {
        return AccessPattern.DYNAMIC;
    }

    @Override // com.fasterxml.jackson.databind.deser.l
    public Object getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
        throw InvalidNullException.from(deserializationContext, this.f14725a, this.f14726b);
    }

    public static NullsFailProvider constructForProperty(BeanProperty beanProperty, JavaType javaType) {
        return new NullsFailProvider(beanProperty.getFullName(), javaType);
    }
}
