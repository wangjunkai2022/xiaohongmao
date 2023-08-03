package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.util.EnumSet;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class EnumSetSerializer extends AsArraySerializerBase<EnumSet<? extends Enum<?>>> {
    public EnumSetSerializer(JavaType javaType) {
        super((Class<?>) EnumSet.class, javaType, true, (f) null, (g<Object>) null);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public EnumSetSerializer _withValueTypeSerializer(f fVar) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public /* bridge */ /* synthetic */ AsArraySerializerBase<EnumSet<? extends Enum<?>>> withResolved(BeanProperty beanProperty, f fVar, g gVar, Boolean bool) {
        return withResolved2(beanProperty, fVar, (g<?>) gVar, bool);
    }

    public EnumSetSerializer(EnumSetSerializer enumSetSerializer, BeanProperty beanProperty, f fVar, g<?> gVar, Boolean bool) {
        super(enumSetSerializer, beanProperty, fVar, gVar, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(EnumSet<? extends Enum<?>> enumSet) {
        return enumSet.size() == 1;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, EnumSet<? extends Enum<?>> enumSet) {
        return enumSet.isEmpty();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(EnumSet<? extends Enum<?>> enumSet, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int size = enumSet.size();
        if (size == 1 && ((this.f15733g == null && lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f15733g == Boolean.TRUE)) {
            serializeContents(enumSet, jsonGenerator, lVar);
            return;
        }
        jsonGenerator.J1(enumSet, size);
        serializeContents(enumSet, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public void serializeContents(EnumSet<? extends Enum<?>> enumSet, JsonGenerator jsonGenerator, l lVar) throws IOException {
        g<Object> gVar = this.f15735i;
        Iterator it = enumSet.iterator();
        while (it.hasNext()) {
            Enum r12 = (Enum) it.next();
            if (gVar == null) {
                gVar = lVar.findContentValueSerializer(r12.getDeclaringClass(), this.f15731e);
            }
            gVar.serialize(r12, jsonGenerator, lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    /* renamed from: withResolved  reason: avoid collision after fix types in other method */
    public AsArraySerializerBase<EnumSet<? extends Enum<?>>> withResolved2(BeanProperty beanProperty, f fVar, g<?> gVar, Boolean bool) {
        return new EnumSetSerializer(this, beanProperty, fVar, gVar, bool);
    }
}
