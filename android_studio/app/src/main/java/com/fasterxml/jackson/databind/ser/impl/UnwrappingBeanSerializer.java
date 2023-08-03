package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.io.Serializable;
import java.util.Set;

/* loaded from: classes.dex */
public class UnwrappingBeanSerializer extends BeanSerializerBase implements Serializable {

    /* renamed from: o  reason: collision with root package name */
    private static final long f15685o = 1;

    /* renamed from: n  reason: collision with root package name */
    protected final NameTransformer f15686n;

    public UnwrappingBeanSerializer(BeanSerializerBase beanSerializerBase, NameTransformer nameTransformer) {
        super(beanSerializerBase, nameTransformer);
        this.f15686n = nameTransformer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    protected BeanSerializerBase A() {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    protected BeanSerializerBase F(Set<String> set, Set<String> set2) {
        return new UnwrappingBeanSerializer(this, set, set2);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    protected BeanSerializerBase I(BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        return new UnwrappingBeanSerializer(this, beanPropertyWriterArr, beanPropertyWriterArr2);
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isUnwrappingSerializer() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.w0(obj);
        if (this.f15746j != null) {
            y(obj, jsonGenerator, lVar, false);
        } else if (this.f15744h != null) {
            E(obj, jsonGenerator, lVar);
        } else {
            D(obj, jsonGenerator, lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase, com.fasterxml.jackson.databind.g
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        if (lVar.isEnabled(SerializationFeature.FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS)) {
            lVar.reportBadDefinition(handledType(), "Unwrapped property requires use of type information: cannot serialize without disabling `SerializationFeature.FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS`");
        }
        jsonGenerator.w0(obj);
        if (this.f15746j != null) {
            x(obj, jsonGenerator, lVar, fVar);
        } else if (this.f15744h != null) {
            E(obj, jsonGenerator, lVar);
        } else {
            D(obj, jsonGenerator, lVar);
        }
    }

    public String toString() {
        return "UnwrappingBeanSerializer for " + handledType().getName();
    }

    @Override // com.fasterxml.jackson.databind.g
    public g<Object> unwrappingSerializer(NameTransformer nameTransformer) {
        return new UnwrappingBeanSerializer(this, nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    public BeanSerializerBase withObjectIdWriter(b bVar) {
        return new UnwrappingBeanSerializer(this, bVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase, com.fasterxml.jackson.databind.g
    public BeanSerializerBase withFilterId(Object obj) {
        return new UnwrappingBeanSerializer(this, this.f15746j, obj);
    }

    public UnwrappingBeanSerializer(UnwrappingBeanSerializer unwrappingBeanSerializer, b bVar) {
        super(unwrappingBeanSerializer, bVar);
        this.f15686n = unwrappingBeanSerializer.f15686n;
    }

    public UnwrappingBeanSerializer(UnwrappingBeanSerializer unwrappingBeanSerializer, b bVar, Object obj) {
        super(unwrappingBeanSerializer, bVar, obj);
        this.f15686n = unwrappingBeanSerializer.f15686n;
    }

    protected UnwrappingBeanSerializer(UnwrappingBeanSerializer unwrappingBeanSerializer, Set<String> set) {
        this(unwrappingBeanSerializer, set, (Set<String>) null);
    }

    protected UnwrappingBeanSerializer(UnwrappingBeanSerializer unwrappingBeanSerializer, Set<String> set, Set<String> set2) {
        super(unwrappingBeanSerializer, set, set2);
        this.f15686n = unwrappingBeanSerializer.f15686n;
    }

    protected UnwrappingBeanSerializer(UnwrappingBeanSerializer unwrappingBeanSerializer, BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        super(unwrappingBeanSerializer, beanPropertyWriterArr, beanPropertyWriterArr2);
        this.f15686n = unwrappingBeanSerializer.f15686n;
    }
}
