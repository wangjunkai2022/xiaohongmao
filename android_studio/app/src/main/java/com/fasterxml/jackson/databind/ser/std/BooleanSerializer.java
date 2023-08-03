package com.fasterxml.jackson.databind.ser.std;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.e;
import java.io.IOException;
import java.lang.reflect.Type;

@c2.a
/* loaded from: classes2.dex */
public final class BooleanSerializer extends StdScalarSerializer<Object> implements e {

    /* renamed from: e  reason: collision with root package name */
    private static final long f15749e = 1;

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f15750d;

    /* loaded from: classes2.dex */
    static final class a extends StdScalarSerializer<Object> implements e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f15751e = 1;

        /* renamed from: d  reason: collision with root package name */
        protected final boolean f15752d;

        public a(boolean z9) {
            super(z9 ? Boolean.TYPE : Boolean.class, false);
            this.f15752d = z9;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
            r(fVar, javaType, JsonParser.NumberType.INT);
        }

        @Override // com.fasterxml.jackson.databind.ser.e
        public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
            JsonFormat.Value k10 = k(lVar, beanProperty, Boolean.class);
            return (k10 == null || k10.getShape().isNumeric()) ? this : new BooleanSerializer(this.f15752d);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.a1(!Boolean.FALSE.equals(obj));
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.g
        public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
            jsonGenerator.O0(Boolean.TRUE.equals(obj));
        }
    }

    public BooleanSerializer(boolean z9) {
        super(z9 ? Boolean.TYPE : Boolean.class, false);
        this.f15750d = z9;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        fVar.p(javaType);
    }

    @Override // com.fasterxml.jackson.databind.ser.e
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        JsonFormat.Value k10 = k(lVar, beanProperty, handledType());
        if (k10 != null) {
            JsonFormat.Shape shape = k10.getShape();
            if (shape.isNumeric()) {
                return new a(this.f15750d);
            }
            if (shape == JsonFormat.Shape.STRING) {
                return new ToStringSerializer(this.f15849a);
            }
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) {
        return d(TypedValues.Custom.S_BOOLEAN, !this.f15750d);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.O0(Boolean.TRUE.equals(obj));
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.g
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        jsonGenerator.O0(Boolean.TRUE.equals(obj));
    }
}
