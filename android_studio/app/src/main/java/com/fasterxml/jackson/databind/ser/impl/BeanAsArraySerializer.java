package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.util.Set;

/* loaded from: classes.dex */
public class BeanAsArraySerializer extends BeanSerializerBase {

    /* renamed from: o  reason: collision with root package name */
    private static final long f15647o = 1;

    /* renamed from: n  reason: collision with root package name */
    protected final BeanSerializerBase f15648n;

    public BeanAsArraySerializer(BeanSerializerBase beanSerializerBase) {
        super(beanSerializerBase, (b) null);
        this.f15648n = beanSerializerBase;
    }

    private boolean J(l lVar) {
        BeanPropertyWriter[] beanPropertyWriterArr;
        if (this.f15742f != null && lVar.getActiveView() != null) {
            beanPropertyWriterArr = this.f15742f;
        } else {
            beanPropertyWriterArr = this.f15741e;
        }
        return beanPropertyWriterArr.length == 1;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    protected BeanSerializerBase A() {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    protected BeanSerializerBase I(BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        return this;
    }

    protected final void K(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        BeanPropertyWriter[] beanPropertyWriterArr;
        if (this.f15742f != null && lVar.getActiveView() != null) {
            beanPropertyWriterArr = this.f15742f;
        } else {
            beanPropertyWriterArr = this.f15741e;
        }
        int i4 = 0;
        try {
            int length = beanPropertyWriterArr.length;
            while (i4 < length) {
                BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i4];
                if (beanPropertyWriter == null) {
                    jsonGenerator.W0();
                } else {
                    beanPropertyWriter.serializeAsElement(obj, jsonGenerator, lVar);
                }
                i4++;
            }
        } catch (Exception e4) {
            wrapAndThrow(lVar, e4, obj, beanPropertyWriterArr[i4].getName());
        } catch (StackOverflowError e10) {
            JsonMappingException from = JsonMappingException.from(jsonGenerator, "Infinite recursion (StackOverflowError)", e10);
            from.prependPath(obj, beanPropertyWriterArr[i4].getName());
            throw from;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    /* renamed from: L */
    public BeanAsArraySerializer F(Set<String> set, Set<String> set2) {
        return new BeanAsArraySerializer(this, set, set2);
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isUnwrappingSerializer() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) && J(lVar)) {
            K(obj, jsonGenerator, lVar);
            return;
        }
        jsonGenerator.I1(obj);
        K(obj, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase, com.fasterxml.jackson.databind.g
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        if (this.f15746j != null) {
            x(obj, jsonGenerator, lVar, fVar);
            return;
        }
        WritableTypeId z9 = z(fVar, obj, JsonToken.START_ARRAY);
        fVar.o(jsonGenerator, z9);
        jsonGenerator.w0(obj);
        K(obj, jsonGenerator, lVar);
        fVar.v(jsonGenerator, z9);
    }

    public String toString() {
        return "BeanAsArraySerializer for " + handledType().getName();
    }

    @Override // com.fasterxml.jackson.databind.g
    public g<Object> unwrappingSerializer(NameTransformer nameTransformer) {
        return this.f15648n.unwrappingSerializer(nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
    public BeanSerializerBase withObjectIdWriter(b bVar) {
        return this.f15648n.withObjectIdWriter(bVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.BeanSerializerBase, com.fasterxml.jackson.databind.g
    public BeanSerializerBase withFilterId(Object obj) {
        return new BeanAsArraySerializer(this, this.f15746j, obj);
    }

    protected BeanAsArraySerializer(BeanSerializerBase beanSerializerBase, Set<String> set) {
        this(beanSerializerBase, set, (Set<String>) null);
    }

    protected BeanAsArraySerializer(BeanSerializerBase beanSerializerBase, Set<String> set, Set<String> set2) {
        super(beanSerializerBase, set, set2);
        this.f15648n = beanSerializerBase;
    }

    protected BeanAsArraySerializer(BeanSerializerBase beanSerializerBase, b bVar, Object obj) {
        super(beanSerializerBase, bVar, obj);
        this.f15648n = beanSerializerBase;
    }
}
