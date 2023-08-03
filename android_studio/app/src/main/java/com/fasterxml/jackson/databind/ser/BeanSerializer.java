package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ser.impl.BeanAsArraySerializer;
import com.fasterxml.jackson.databind.ser.impl.UnwrappingBeanSerializer;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.util.Set;

/* loaded from: classes.dex */
public class BeanSerializer extends BeanSerializerBase {

    /* renamed from: n  reason: collision with root package name */
    private static final long f15615n = 29;

    public BeanSerializer(JavaType javaType, c cVar, BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        super(javaType, cVar, beanPropertyWriterArr, beanPropertyWriterArr2);
    }

    @Deprecated
    public static BeanSerializer createDummy(JavaType javaType) {
        return new BeanSerializer(javaType, null, BeanSerializerBase.f15739m, null);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    protected BeanSerializerBase A() {
        return (this.f15746j == null && this.f15743g == null && this.f15744h == null) ? new BeanAsArraySerializer(this) : this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    protected BeanSerializerBase F(Set<String> set, Set<String> set2) {
        return new BeanSerializer(this, set, set2);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    protected BeanSerializerBase I(BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        return new BeanSerializer(this, beanPropertyWriterArr, beanPropertyWriterArr2);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws IOException {
        if (this.f15746j != null) {
            jsonGenerator.w0(obj);
            y(obj, jsonGenerator, lVar, true);
            return;
        }
        jsonGenerator.L1(obj);
        if (this.f15744h != null) {
            E(obj, jsonGenerator, lVar);
        } else {
            D(obj, jsonGenerator, lVar);
        }
        jsonGenerator.S0();
    }

    public String toString() {
        return "BeanSerializer for " + handledType().getName();
    }

    @Override // com.fasterxml.jackson.databind.g
    public com.fasterxml.jackson.databind.g<Object> unwrappingSerializer(NameTransformer nameTransformer) {
        return new UnwrappingBeanSerializer(this, nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    public BeanSerializerBase withObjectIdWriter(com.fasterxml.jackson.databind.ser.impl.b bVar) {
        return new BeanSerializer(this, bVar, this.f15744h);
    }

    protected BeanSerializer(BeanSerializerBase beanSerializerBase) {
        super(beanSerializerBase);
    }

    public static BeanSerializer createDummy(JavaType javaType, c cVar) {
        return new BeanSerializer(javaType, cVar, BeanSerializerBase.f15739m, null);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase, com.fasterxml.jackson.databind.g
    public BeanSerializerBase withFilterId(Object obj) {
        return new BeanSerializer(this, this.f15746j, obj);
    }

    protected BeanSerializer(BeanSerializerBase beanSerializerBase, com.fasterxml.jackson.databind.ser.impl.b bVar) {
        super(beanSerializerBase, bVar);
    }

    protected BeanSerializer(BeanSerializerBase beanSerializerBase, com.fasterxml.jackson.databind.ser.impl.b bVar, Object obj) {
        super(beanSerializerBase, bVar, obj);
    }

    protected BeanSerializer(BeanSerializerBase beanSerializerBase, Set<String> set, Set<String> set2) {
        super(beanSerializerBase, set, set2);
    }

    protected BeanSerializer(BeanSerializerBase beanSerializerBase, BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        super(beanSerializerBase, beanPropertyWriterArr, beanPropertyWriterArr2);
    }
}
