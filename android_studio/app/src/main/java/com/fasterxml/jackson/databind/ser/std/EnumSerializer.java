package com.fasterxml.jackson.databind.ser.std;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import c2.a;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.j;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.b;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.e;
import com.fasterxml.jackson.databind.util.EnumValues;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.Objects;

@a
/* loaded from: classes2.dex */
public class EnumSerializer extends StdScalarSerializer<Enum<?>> implements e {

    /* renamed from: f  reason: collision with root package name */
    private static final long f15758f = 1;

    /* renamed from: d  reason: collision with root package name */
    protected final EnumValues f15759d;

    /* renamed from: e  reason: collision with root package name */
    protected final Boolean f15760e;

    public EnumSerializer(EnumValues enumValues, Boolean bool) {
        super(enumValues.getEnumClass(), false);
        this.f15759d = enumValues;
        this.f15760e = bool;
    }

    public static EnumSerializer construct(Class<?> cls, SerializationConfig serializationConfig, b bVar, JsonFormat.Value value) {
        return new EnumSerializer(EnumValues.constructFromName(serializationConfig, cls), v(cls, value, true, null));
    }

    protected static Boolean v(Class<?> cls, JsonFormat.Value value, boolean z9, Boolean bool) {
        JsonFormat.Shape shape = value == null ? null : value.getShape();
        if (shape == null || shape == JsonFormat.Shape.ANY || shape == JsonFormat.Shape.SCALAR) {
            return bool;
        }
        if (shape != JsonFormat.Shape.STRING && shape != JsonFormat.Shape.NATURAL) {
            if (!shape.isNumeric() && shape != JsonFormat.Shape.ARRAY) {
                Object[] objArr = new Object[3];
                objArr[0] = shape;
                objArr[1] = cls.getName();
                objArr[2] = z9 ? "class" : "property";
                throw new IllegalArgumentException(String.format("Unsupported serialization shape (%s) for Enum %s, not supported as %s annotation", objArr));
            }
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        l a10 = fVar.a();
        if (w(a10)) {
            r(fVar, javaType, JsonParser.NumberType.INT);
            return;
        }
        com.fasterxml.jackson.databind.jsonFormatVisitors.l i4 = fVar.i(javaType);
        if (i4 != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (a10 != null && a10.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
                for (Enum<?> r12 : this.f15759d.enums()) {
                    linkedHashSet.add(r12.toString());
                }
            } else {
                for (j jVar : this.f15759d.values()) {
                    linkedHashSet.add(jVar.getValue());
                }
            }
            i4.b(linkedHashSet);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.e
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        JsonFormat.Value k10 = k(lVar, beanProperty, handledType());
        if (k10 != null) {
            Boolean v9 = v(handledType(), k10, false, this.f15760e);
            if (!Objects.equals(v9, this.f15760e)) {
                return new EnumSerializer(this.f15759d, v9);
            }
        }
        return this;
    }

    public EnumValues getEnumValues() {
        return this.f15759d;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) {
        if (w(lVar)) {
            return d(TypedValues.Custom.S_INT, true);
        }
        ObjectNode d4 = d(TypedValues.Custom.S_STRING, true);
        if (type != null && lVar.constructType(type).isEnumType()) {
            ArrayNode putArray = d4.putArray("enum");
            for (j jVar : this.f15759d.values()) {
                putArray.add(jVar.getValue());
            }
        }
        return d4;
    }

    protected final boolean w(l lVar) {
        Boolean bool = this.f15760e;
        if (bool != null) {
            return bool.booleanValue();
        }
        return lVar.isEnabled(SerializationFeature.WRITE_ENUMS_USING_INDEX);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public final void serialize(Enum<?> r22, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (w(lVar)) {
            jsonGenerator.a1(r22.ordinal());
        } else if (lVar.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
            jsonGenerator.P1(r22.toString());
        } else {
            jsonGenerator.N1(this.f15759d.serializedValueFor(r22));
        }
    }
}
