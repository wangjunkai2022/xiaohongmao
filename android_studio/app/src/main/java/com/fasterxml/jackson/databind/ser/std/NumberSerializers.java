package com.fasterxml.jackson.databind.ser.std;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.h;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.e;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Map;

/* loaded from: classes2.dex */
public class NumberSerializers {

    /* loaded from: classes2.dex */
    public static abstract class Base<T> extends StdScalarSerializer<T> implements e {

        /* renamed from: d  reason: collision with root package name */
        protected final JsonParser.NumberType f15801d;

        /* renamed from: e  reason: collision with root package name */
        protected final String f15802e;

        /* renamed from: f  reason: collision with root package name */
        protected final boolean f15803f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        protected Base(Class<?> cls, JsonParser.NumberType numberType, String str) {
            super(cls, false);
            boolean z9 = false;
            this.f15801d = numberType;
            this.f15802e = str;
            this.f15803f = (numberType == JsonParser.NumberType.INT || numberType == JsonParser.NumberType.LONG || numberType == JsonParser.NumberType.BIG_INTEGER) ? true : true;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
            if (this.f15803f) {
                r(fVar, javaType, this.f15801d);
            } else {
                q(fVar, javaType, this.f15801d);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.fasterxml.jackson.databind.ser.e
        public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
            JsonFormat.Value k10 = k(lVar, beanProperty, handledType());
            if (k10 == null || a.f15807a[k10.getShape().ordinal()] != 1) {
                return this;
            }
            if (handledType() == BigDecimal.class) {
                return NumberSerializer.bigDecimalAsStringSerializer();
            }
            return ToStringSerializer.instance;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) {
            return d(this.f15802e, true);
        }
    }

    @c2.a
    /* loaded from: classes2.dex */
    public static class DoubleSerializer extends Base<Object> {
        public DoubleSerializer(Class<?> cls) {
            super(cls, JsonParser.NumberType.DOUBLE, "number");
        }

        @Deprecated
        public static boolean notFinite(double d4) {
            return h.o(d4);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.Y0(((Double) obj).doubleValue());
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.g
        public void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
            Double d4 = (Double) obj;
            if (h.o(d4.doubleValue())) {
                WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(obj, JsonToken.VALUE_NUMBER_FLOAT));
                jsonGenerator.Y0(d4.doubleValue());
                fVar.v(jsonGenerator, o9);
                return;
            }
            jsonGenerator.Y0(d4.doubleValue());
        }
    }

    @c2.a
    /* loaded from: classes2.dex */
    public static class FloatSerializer extends Base<Object> {

        /* renamed from: g  reason: collision with root package name */
        static final FloatSerializer f15804g = new FloatSerializer();

        public FloatSerializer() {
            super(Float.class, JsonParser.NumberType.FLOAT, "number");
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.Z0(((Float) obj).floatValue());
        }
    }

    @c2.a
    /* loaded from: classes2.dex */
    public static class IntLikeSerializer extends Base<Object> {

        /* renamed from: g  reason: collision with root package name */
        static final IntLikeSerializer f15805g = new IntLikeSerializer();

        public IntLikeSerializer() {
            super(Number.class, JsonParser.NumberType.INT, TypedValues.Custom.S_INT);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.a1(((Number) obj).intValue());
        }
    }

    @c2.a
    /* loaded from: classes2.dex */
    public static class IntegerSerializer extends Base<Object> {
        public IntegerSerializer(Class<?> cls) {
            super(cls, JsonParser.NumberType.INT, TypedValues.Custom.S_INT);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.a1(((Integer) obj).intValue());
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.g
        public void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
            serialize(obj, jsonGenerator, lVar);
        }
    }

    @c2.a
    /* loaded from: classes2.dex */
    public static class LongSerializer extends Base<Object> {
        public LongSerializer(Class<?> cls) {
            super(cls, JsonParser.NumberType.LONG, "number");
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.b1(((Long) obj).longValue());
        }
    }

    @c2.a
    /* loaded from: classes2.dex */
    public static class ShortSerializer extends Base<Object> {

        /* renamed from: g  reason: collision with root package name */
        static final ShortSerializer f15806g = new ShortSerializer();

        public ShortSerializer() {
            super(Short.class, JsonParser.NumberType.INT, "number");
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            jsonGenerator.f1(((Short) obj).shortValue());
        }
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15807a;

        static {
            int[] iArr = new int[JsonFormat.Shape.values().length];
            f15807a = iArr;
            try {
                iArr[JsonFormat.Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    protected NumberSerializers() {
    }

    public static void a(Map<String, g<?>> map) {
        map.put(Integer.class.getName(), new IntegerSerializer(Integer.class));
        Class cls = Integer.TYPE;
        map.put(cls.getName(), new IntegerSerializer(cls));
        map.put(Long.class.getName(), new LongSerializer(Long.class));
        Class cls2 = Long.TYPE;
        map.put(cls2.getName(), new LongSerializer(cls2));
        String name = Byte.class.getName();
        IntLikeSerializer intLikeSerializer = IntLikeSerializer.f15805g;
        map.put(name, intLikeSerializer);
        map.put(Byte.TYPE.getName(), intLikeSerializer);
        String name2 = Short.class.getName();
        ShortSerializer shortSerializer = ShortSerializer.f15806g;
        map.put(name2, shortSerializer);
        map.put(Short.TYPE.getName(), shortSerializer);
        map.put(Double.class.getName(), new DoubleSerializer(Double.class));
        map.put(Double.TYPE.getName(), new DoubleSerializer(Double.TYPE));
        String name3 = Float.class.getName();
        FloatSerializer floatSerializer = FloatSerializer.f15804g;
        map.put(name3, floatSerializer);
        map.put(Float.TYPE.getName(), floatSerializer);
    }
}
