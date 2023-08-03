package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;

/* loaded from: classes.dex */
public class AsExternalTypeDeserializer extends AsArrayTypeDeserializer {

    /* renamed from: k  reason: collision with root package name */
    private static final long f15428k = 1;

    public AsExternalTypeDeserializer(JavaType javaType, com.fasterxml.jackson.databind.jsontype.c cVar, String str, boolean z9, JavaType javaType2) {
        super(javaType, cVar, str, z9, javaType2);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.b
    public com.fasterxml.jackson.databind.jsontype.b forProperty(BeanProperty beanProperty) {
        return beanProperty == this.f15439c ? this : new AsExternalTypeDeserializer(this, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.b
    public JsonTypeInfo.As getTypeInclusion() {
        return JsonTypeInfo.As.EXTERNAL_PROPERTY;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer
    protected boolean k() {
        return true;
    }

    public AsExternalTypeDeserializer(AsExternalTypeDeserializer asExternalTypeDeserializer, BeanProperty beanProperty) {
        super(asExternalTypeDeserializer, beanProperty);
    }
}
