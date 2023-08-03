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
import java.math.BigDecimal;
import java.math.BigInteger;

@c2.a
/* loaded from: classes2.dex */
public class NumberSerializer extends StdScalarSerializer<Number> implements e {

    /* renamed from: e  reason: collision with root package name */
    protected static final int f15797e = 9999;
    public static final NumberSerializer instance = new NumberSerializer(Number.class);

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f15798d;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15799a;

        static {
            int[] iArr = new int[JsonFormat.Shape.values().length];
            f15799a = iArr;
            try {
                iArr[JsonFormat.Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends ToStringSerializerBase {

        /* renamed from: d  reason: collision with root package name */
        static final b f15800d = new b();

        public b() {
            super(BigDecimal.class);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ToStringSerializerBase, com.fasterxml.jackson.databind.g
        public boolean isEmpty(l lVar, Object obj) {
            return false;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ToStringSerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
            String obj2;
            if (jsonGenerator.q0(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN)) {
                BigDecimal bigDecimal = (BigDecimal) obj;
                if (!v(jsonGenerator, bigDecimal)) {
                    lVar.reportMappingProblem(String.format("Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]", Integer.valueOf(bigDecimal.scale()), 9999, 9999), new Object[0]);
                }
                obj2 = bigDecimal.toPlainString();
            } else {
                obj2 = obj.toString();
            }
            jsonGenerator.P1(obj2);
        }

        protected boolean v(JsonGenerator jsonGenerator, BigDecimal bigDecimal) throws IOException {
            int scale = bigDecimal.scale();
            return scale >= -9999 && scale <= 9999;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ToStringSerializerBase
        public String valueToString(Object obj) {
            throw new IllegalStateException();
        }
    }

    public NumberSerializer(Class<? extends Number> cls) {
        super(cls, false);
        this.f15798d = cls == BigInteger.class;
    }

    public static g<?> bigDecimalAsStringSerializer() {
        return b.f15800d;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        if (this.f15798d) {
            r(fVar, javaType, JsonParser.NumberType.BIG_INTEGER);
        } else if (handledType() == BigDecimal.class) {
            q(fVar, javaType, JsonParser.NumberType.BIG_DECIMAL);
        } else {
            fVar.k(javaType);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.e
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        JsonFormat.Value k10 = k(lVar, beanProperty, handledType());
        if (k10 == null || a.f15799a[k10.getShape().ordinal()] != 1) {
            return this;
        }
        if (handledType() == BigDecimal.class) {
            return bigDecimalAsStringSerializer();
        }
        return ToStringSerializer.instance;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) {
        return d(this.f15798d ? TypedValues.Custom.S_INT : "number", true);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Number number, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (number instanceof BigDecimal) {
            jsonGenerator.d1((BigDecimal) number);
        } else if (number instanceof BigInteger) {
            jsonGenerator.e1((BigInteger) number);
        } else if (number instanceof Long) {
            jsonGenerator.b1(number.longValue());
        } else if (number instanceof Double) {
            jsonGenerator.Y0(number.doubleValue());
        } else if (number instanceof Float) {
            jsonGenerator.Z0(number.floatValue());
        } else if (!(number instanceof Integer) && !(number instanceof Byte) && !(number instanceof Short)) {
            jsonGenerator.c1(number.toString());
        } else {
            jsonGenerator.a1(number.intValue());
        }
    }
}
