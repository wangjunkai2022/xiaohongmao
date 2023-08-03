package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.k;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter;

/* loaded from: classes.dex */
public class AttributePropertyWriter extends VirtualBeanPropertyWriter {

    /* renamed from: y  reason: collision with root package name */
    private static final long f15645y = 1;

    /* renamed from: x  reason: collision with root package name */
    protected final String f15646x;

    protected AttributePropertyWriter(String str, k kVar, com.fasterxml.jackson.databind.util.a aVar, JavaType javaType) {
        this(str, kVar, aVar, javaType, kVar.c());
    }

    public static AttributePropertyWriter construct(String str, k kVar, com.fasterxml.jackson.databind.util.a aVar, JavaType javaType) {
        return new AttributePropertyWriter(str, kVar, aVar, javaType);
    }

    @Override // com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter
    protected Object j(Object obj, JsonGenerator jsonGenerator, l lVar) throws Exception {
        return lVar.getAttribute(this.f15646x);
    }

    @Override // com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter
    public VirtualBeanPropertyWriter withConfig(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar, k kVar, JavaType javaType) {
        throw new IllegalStateException("Should not be called on this type");
    }

    protected AttributePropertyWriter(String str, k kVar, com.fasterxml.jackson.databind.util.a aVar, JavaType javaType, JsonInclude.Value value) {
        super(kVar, aVar, javaType, null, null, null, value, null);
        this.f15646x = str;
    }

    protected AttributePropertyWriter(AttributePropertyWriter attributePropertyWriter) {
        super(attributePropertyWriter);
        this.f15646x = attributePropertyWriter.f15646x;
    }
}
