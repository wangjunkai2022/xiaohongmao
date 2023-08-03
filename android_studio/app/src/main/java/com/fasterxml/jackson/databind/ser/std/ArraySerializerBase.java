package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.e;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class ArraySerializerBase<T> extends ContainerSerializer<T> implements e {

    /* renamed from: d  reason: collision with root package name */
    protected final BeanProperty f15728d;

    /* renamed from: e  reason: collision with root package name */
    protected final Boolean f15729e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ArraySerializerBase(Class<T> cls) {
        super(cls);
        this.f15728d = null;
        this.f15729e = null;
    }

    public abstract g<?> _withResolved(BeanProperty beanProperty, Boolean bool);

    /* JADX WARN: Multi-variable type inference failed */
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        JsonFormat.Value k10;
        if (beanProperty != null && (k10 = k(lVar, beanProperty, handledType())) != null) {
            Boolean feature = k10.getFeature(JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED);
            if (!Objects.equals(feature, this.f15729e)) {
                return _withResolved(beanProperty, feature);
            }
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(T t9, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (w(lVar) && hasSingleElement(t9)) {
            serializeContents(t9, jsonGenerator, lVar);
            return;
        }
        jsonGenerator.I1(t9);
        serializeContents(t9, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    protected abstract void serializeContents(T t9, JsonGenerator jsonGenerator, l lVar) throws IOException;

    @Override // com.fasterxml.jackson.databind.g
    public final void serializeWithType(T t9, JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(t9, JsonToken.START_ARRAY));
        jsonGenerator.w0(t9);
        serializeContents(t9, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean w(l lVar) {
        Boolean bool = this.f15729e;
        if (bool == null) {
            return lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED);
        }
        return bool.booleanValue();
    }

    @Deprecated
    protected ArraySerializerBase(Class<T> cls, BeanProperty beanProperty) {
        super(cls);
        this.f15728d = beanProperty;
        this.f15729e = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ArraySerializerBase(ArraySerializerBase<?> arraySerializerBase) {
        super(arraySerializerBase.f15849a, false);
        this.f15728d = arraySerializerBase.f15728d;
        this.f15729e = arraySerializerBase.f15729e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ArraySerializerBase(ArraySerializerBase<?> arraySerializerBase, BeanProperty beanProperty, Boolean bool) {
        super(arraySerializerBase.f15849a, false);
        this.f15728d = beanProperty;
        this.f15729e = bool;
    }

    @Deprecated
    protected ArraySerializerBase(ArraySerializerBase<?> arraySerializerBase, BeanProperty beanProperty) {
        super(arraySerializerBase.f15849a, false);
        this.f15728d = beanProperty;
        this.f15729e = arraySerializerBase.f15729e;
    }
}
