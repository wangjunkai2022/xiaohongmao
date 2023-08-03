package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.g;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashSet;

/* loaded from: classes.dex */
public class NumberDeserializers {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<String> f14925a = new HashSet<>();

    @c2.a
    /* loaded from: classes.dex */
    public static class BigDecimalDeserializer extends StdScalarDeserializer<BigDecimal> {
        public static final BigDecimalDeserializer instance = new BigDecimalDeserializer();

        public BigDecimalDeserializer() {
            super(BigDecimal.class);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return BigDecimal.ZERO;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public final LogicalType logicalType() {
            return LogicalType.Float;
        }

        @Override // com.fasterxml.jackson.databind.d
        public BigDecimal deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String extractScalarFromObject;
            int X = jsonParser.X();
            if (X == 1) {
                extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
            } else if (X == 3) {
                return q(jsonParser, deserializationContext);
            } else {
                if (X != 6) {
                    if (X != 7 && X != 8) {
                        return (BigDecimal) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                    }
                    return jsonParser.y0();
                }
                extractScalarFromObject = jsonParser.S0();
            }
            CoercionAction h4 = h(deserializationContext, extractScalarFromObject);
            if (h4 == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (h4 == CoercionAction.AsEmpty) {
                return (BigDecimal) getEmptyValue(deserializationContext);
            }
            String trim = extractScalarFromObject.trim();
            if (A(trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                return new BigDecimal(trim);
            } catch (IllegalArgumentException unused) {
                return (BigDecimal) deserializationContext.handleWeirdStringValue(this.f14988a, trim, "not a valid representation", new Object[0]);
            }
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static class BigIntegerDeserializer extends StdScalarDeserializer<BigInteger> {
        public static final BigIntegerDeserializer instance = new BigIntegerDeserializer();

        public BigIntegerDeserializer() {
            super(BigInteger.class);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return BigInteger.ZERO;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public final LogicalType logicalType() {
            return LogicalType.Integer;
        }

        @Override // com.fasterxml.jackson.databind.d
        public BigInteger deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String extractScalarFromObject;
            if (jsonParser.o1()) {
                return jsonParser.n0();
            }
            int X = jsonParser.X();
            if (X == 1) {
                extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
            } else if (X == 3) {
                return q(jsonParser, deserializationContext);
            } else {
                if (X != 6) {
                    if (X != 8) {
                        return (BigInteger) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                    }
                    CoercionAction e4 = e(jsonParser, deserializationContext, this.f14988a);
                    if (e4 == CoercionAction.AsNull) {
                        return getNullValue(deserializationContext);
                    }
                    if (e4 == CoercionAction.AsEmpty) {
                        return (BigInteger) getEmptyValue(deserializationContext);
                    }
                    return jsonParser.y0().toBigInteger();
                }
                extractScalarFromObject = jsonParser.S0();
            }
            CoercionAction h4 = h(deserializationContext, extractScalarFromObject);
            if (h4 == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (h4 == CoercionAction.AsEmpty) {
                return (BigInteger) getEmptyValue(deserializationContext);
            }
            String trim = extractScalarFromObject.trim();
            if (A(trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                return new BigInteger(trim);
            } catch (IllegalArgumentException unused) {
                return (BigInteger) deserializationContext.handleWeirdStringValue(this.f14988a, trim, "not a valid representation", new Object[0]);
            }
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static final class BooleanDeserializer extends PrimitiveOrWrapperDeserializer<Boolean> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f14926l = 1;

        /* renamed from: m  reason: collision with root package name */
        static final BooleanDeserializer f14927m = new BooleanDeserializer(Boolean.TYPE, Boolean.FALSE);

        /* renamed from: n  reason: collision with root package name */
        static final BooleanDeserializer f14928n = new BooleanDeserializer(Boolean.class, null);

        public BooleanDeserializer(Class<Boolean> cls, Boolean bool) {
            super(cls, LogicalType.Boolean, bool, Boolean.FALSE);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }

        @Override // com.fasterxml.jackson.databind.d
        public Boolean deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonToken W = jsonParser.W();
            if (W == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (W == JsonToken.VALUE_FALSE) {
                return Boolean.FALSE;
            }
            if (this.f14951j) {
                return Boolean.valueOf(O(jsonParser, deserializationContext));
            }
            return M(jsonParser, deserializationContext, this.f14988a);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
        public Boolean deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
            JsonToken W = jsonParser.W();
            if (W == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (W == JsonToken.VALUE_FALSE) {
                return Boolean.FALSE;
            }
            if (this.f14951j) {
                return Boolean.valueOf(O(jsonParser, deserializationContext));
            }
            return M(jsonParser, deserializationContext, this.f14988a);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static class ByteDeserializer extends PrimitiveOrWrapperDeserializer<Byte> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f14929l = 1;

        /* renamed from: m  reason: collision with root package name */
        static final ByteDeserializer f14930m = new ByteDeserializer(Byte.TYPE, (byte) 0);

        /* renamed from: n  reason: collision with root package name */
        static final ByteDeserializer f14931n = new ByteDeserializer(Byte.class, null);

        public ByteDeserializer(Class<Byte> cls, Byte b10) {
            super(cls, LogicalType.Integer, b10, (byte) 0);
        }

        protected Byte C0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String extractScalarFromObject;
            int X = jsonParser.X();
            if (X == 1) {
                extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
            } else if (X == 3) {
                return q(jsonParser, deserializationContext);
            } else {
                if (X == 11) {
                    return getNullValue(deserializationContext);
                }
                if (X != 6) {
                    if (X != 7) {
                        if (X != 8) {
                            return (Byte) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                        }
                        CoercionAction e4 = e(jsonParser, deserializationContext, this.f14988a);
                        if (e4 == CoercionAction.AsNull) {
                            return getNullValue(deserializationContext);
                        }
                        if (e4 == CoercionAction.AsEmpty) {
                            return (Byte) getEmptyValue(deserializationContext);
                        }
                        return Byte.valueOf(jsonParser.r0());
                    }
                    return Byte.valueOf(jsonParser.r0());
                }
                extractScalarFromObject = jsonParser.S0();
            }
            CoercionAction h4 = h(deserializationContext, extractScalarFromObject);
            if (h4 == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (h4 == CoercionAction.AsEmpty) {
                return (Byte) getEmptyValue(deserializationContext);
            }
            String trim = extractScalarFromObject.trim();
            if (j(deserializationContext, trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                int j4 = g.j(trim);
                if (a(j4)) {
                    return (Byte) deserializationContext.handleWeirdStringValue(this.f14988a, trim, "overflow, value cannot be represented as 8-bit value", new Object[0]);
                }
                return Byte.valueOf((byte) j4);
            } catch (IllegalArgumentException unused) {
                return (Byte) deserializationContext.handleWeirdStringValue(this.f14988a, trim, "not a valid Byte value", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }

        @Override // com.fasterxml.jackson.databind.d
        public Byte deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.o1()) {
                return Byte.valueOf(jsonParser.r0());
            }
            if (this.f14951j) {
                return Byte.valueOf(Q(jsonParser, deserializationContext));
            }
            return C0(jsonParser, deserializationContext);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static class CharacterDeserializer extends PrimitiveOrWrapperDeserializer<Character> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f14932l = 1;

        /* renamed from: m  reason: collision with root package name */
        static final CharacterDeserializer f14933m = new CharacterDeserializer(Character.TYPE, 0);

        /* renamed from: n  reason: collision with root package name */
        static final CharacterDeserializer f14934n = new CharacterDeserializer(Character.class, null);

        public CharacterDeserializer(Class<Character> cls, Character ch) {
            super(cls, LogicalType.Integer, ch, (char) 0);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }

        @Override // com.fasterxml.jackson.databind.d
        public Character deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String extractScalarFromObject;
            int X = jsonParser.X();
            if (X == 1) {
                extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
            } else if (X == 3) {
                return q(jsonParser, deserializationContext);
            } else {
                if (X == 11) {
                    if (this.f14951j) {
                        m0(deserializationContext);
                    }
                    return getNullValue(deserializationContext);
                } else if (X != 6) {
                    if (X != 7) {
                        return (Character) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                    }
                    CoercionAction findCoercionAction = deserializationContext.findCoercionAction(logicalType(), this.f14988a, CoercionInputShape.Integer);
                    int i4 = a.f14955a[findCoercionAction.ordinal()];
                    if (i4 == 1) {
                        Class<?> cls = this.f14988a;
                        Number K0 = jsonParser.K0();
                        b(deserializationContext, findCoercionAction, cls, K0, "Integer value (" + jsonParser.S0() + ")");
                    } else if (i4 != 2) {
                        if (i4 != 3) {
                            int F0 = jsonParser.F0();
                            if (F0 >= 0 && F0 <= 65535) {
                                return Character.valueOf((char) F0);
                            }
                            return (Character) deserializationContext.handleWeirdNumberValue(handledType(), Integer.valueOf(F0), "value outside valid Character range (0x0000 - 0xFFFF)", new Object[0]);
                        }
                        return (Character) getEmptyValue(deserializationContext);
                    }
                    return getNullValue(deserializationContext);
                } else {
                    extractScalarFromObject = jsonParser.S0();
                }
            }
            if (extractScalarFromObject.length() == 1) {
                return Character.valueOf(extractScalarFromObject.charAt(0));
            }
            CoercionAction h4 = h(deserializationContext, extractScalarFromObject);
            if (h4 == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (h4 == CoercionAction.AsEmpty) {
                return (Character) getEmptyValue(deserializationContext);
            }
            String trim = extractScalarFromObject.trim();
            if (j(deserializationContext, trim)) {
                return getNullValue(deserializationContext);
            }
            return (Character) deserializationContext.handleWeirdStringValue(handledType(), trim, "Expected either Integer value code or 1-character String", new Object[0]);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static class DoubleDeserializer extends PrimitiveOrWrapperDeserializer<Double> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f14935l = 1;

        /* renamed from: m  reason: collision with root package name */
        static final DoubleDeserializer f14936m = new DoubleDeserializer(Double.TYPE, Double.valueOf(0.0d));

        /* renamed from: n  reason: collision with root package name */
        static final DoubleDeserializer f14937n = new DoubleDeserializer(Double.class, null);

        public DoubleDeserializer(Class<Double> cls, Double d4) {
            super(cls, LogicalType.Float, d4, Double.valueOf(0.0d));
        }

        protected final Double C0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String extractScalarFromObject;
            int X = jsonParser.X();
            if (X == 1) {
                extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
            } else if (X == 3) {
                return q(jsonParser, deserializationContext);
            } else {
                if (X == 11) {
                    return getNullValue(deserializationContext);
                }
                if (X != 6) {
                    if (X != 7 && X != 8) {
                        return (Double) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                    }
                    return Double.valueOf(jsonParser.z0());
                }
                extractScalarFromObject = jsonParser.S0();
            }
            Double c10 = c(extractScalarFromObject);
            if (c10 != null) {
                return c10;
            }
            CoercionAction h4 = h(deserializationContext, extractScalarFromObject);
            if (h4 == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (h4 == CoercionAction.AsEmpty) {
                return (Double) getEmptyValue(deserializationContext);
            }
            String trim = extractScalarFromObject.trim();
            if (j(deserializationContext, trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                return Double.valueOf(StdDeserializer.U(trim));
            } catch (IllegalArgumentException unused) {
                return (Double) deserializationContext.handleWeirdStringValue(this.f14988a, trim, "not a valid `Double` value", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }

        @Override // com.fasterxml.jackson.databind.d
        public Double deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.k1(JsonToken.VALUE_NUMBER_FLOAT)) {
                return Double.valueOf(jsonParser.z0());
            }
            if (this.f14951j) {
                return Double.valueOf(V(jsonParser, deserializationContext));
            }
            return C0(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
        public Double deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
            if (jsonParser.k1(JsonToken.VALUE_NUMBER_FLOAT)) {
                return Double.valueOf(jsonParser.z0());
            }
            if (this.f14951j) {
                return Double.valueOf(V(jsonParser, deserializationContext));
            }
            return C0(jsonParser, deserializationContext);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static class FloatDeserializer extends PrimitiveOrWrapperDeserializer<Float> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f14938l = 1;

        /* renamed from: m  reason: collision with root package name */
        static final FloatDeserializer f14939m = new FloatDeserializer(Float.TYPE, Float.valueOf(0.0f));

        /* renamed from: n  reason: collision with root package name */
        static final FloatDeserializer f14940n = new FloatDeserializer(Float.class, null);

        public FloatDeserializer(Class<Float> cls, Float f10) {
            super(cls, LogicalType.Float, f10, Float.valueOf(0.0f));
        }

        protected final Float C0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String extractScalarFromObject;
            int X = jsonParser.X();
            if (X == 1) {
                extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
            } else if (X == 3) {
                return q(jsonParser, deserializationContext);
            } else {
                if (X == 11) {
                    return getNullValue(deserializationContext);
                }
                if (X != 6) {
                    if (X != 7 && X != 8) {
                        return (Float) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                    }
                    return Float.valueOf(jsonParser.C0());
                }
                extractScalarFromObject = jsonParser.S0();
            }
            Float d4 = d(extractScalarFromObject);
            if (d4 != null) {
                return d4;
            }
            CoercionAction h4 = h(deserializationContext, extractScalarFromObject);
            if (h4 == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (h4 == CoercionAction.AsEmpty) {
                return (Float) getEmptyValue(deserializationContext);
            }
            String trim = extractScalarFromObject.trim();
            if (j(deserializationContext, trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                return Float.valueOf(Float.parseFloat(trim));
            } catch (IllegalArgumentException unused) {
                return (Float) deserializationContext.handleWeirdStringValue(this.f14988a, trim, "not a valid `Float` value", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }

        @Override // com.fasterxml.jackson.databind.d
        public Float deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.k1(JsonToken.VALUE_NUMBER_FLOAT)) {
                return Float.valueOf(jsonParser.C0());
            }
            if (this.f14951j) {
                return Float.valueOf(X(jsonParser, deserializationContext));
            }
            return C0(jsonParser, deserializationContext);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static final class IntegerDeserializer extends PrimitiveOrWrapperDeserializer<Integer> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f14941l = 1;

        /* renamed from: m  reason: collision with root package name */
        static final IntegerDeserializer f14942m = new IntegerDeserializer(Integer.TYPE, 0);

        /* renamed from: n  reason: collision with root package name */
        static final IntegerDeserializer f14943n = new IntegerDeserializer(Integer.class, null);

        public IntegerDeserializer(Class<Integer> cls, Integer num) {
            super(cls, LogicalType.Integer, num, 0);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }

        @Override // com.fasterxml.jackson.databind.d
        public boolean isCachable() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.d
        public Integer deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.o1()) {
                return Integer.valueOf(jsonParser.F0());
            }
            if (this.f14951j) {
                return Integer.valueOf(Z(jsonParser, deserializationContext));
            }
            return b0(jsonParser, deserializationContext, Integer.class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
        public Integer deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
            if (jsonParser.o1()) {
                return Integer.valueOf(jsonParser.F0());
            }
            if (this.f14951j) {
                return Integer.valueOf(Z(jsonParser, deserializationContext));
            }
            return b0(jsonParser, deserializationContext, Integer.class);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static final class LongDeserializer extends PrimitiveOrWrapperDeserializer<Long> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f14944l = 1;

        /* renamed from: m  reason: collision with root package name */
        static final LongDeserializer f14945m = new LongDeserializer(Long.TYPE, 0L);

        /* renamed from: n  reason: collision with root package name */
        static final LongDeserializer f14946n = new LongDeserializer(Long.class, null);

        public LongDeserializer(Class<Long> cls, Long l10) {
            super(cls, LogicalType.Integer, l10, 0L);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }

        @Override // com.fasterxml.jackson.databind.d
        public boolean isCachable() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.d
        public Long deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.o1()) {
                return Long.valueOf(jsonParser.H0());
            }
            if (this.f14951j) {
                return Long.valueOf(f0(jsonParser, deserializationContext));
            }
            return d0(jsonParser, deserializationContext, Long.class);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static class NumberDeserializer extends StdScalarDeserializer<Object> {
        public static final NumberDeserializer instance = new NumberDeserializer();

        public NumberDeserializer() {
            super(Number.class);
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String extractScalarFromObject;
            int X = jsonParser.X();
            if (X == 1) {
                extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
            } else if (X == 3) {
                return q(jsonParser, deserializationContext);
            } else {
                if (X != 6) {
                    if (X == 7) {
                        if (deserializationContext.hasSomeOfFeatures(StdDeserializer.f14986d)) {
                            return m(jsonParser, deserializationContext);
                        }
                        return jsonParser.K0();
                    } else if (X != 8) {
                        return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                    } else {
                        if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) && !jsonParser.r1()) {
                            return jsonParser.y0();
                        }
                        return jsonParser.K0();
                    }
                }
                extractScalarFromObject = jsonParser.S0();
            }
            CoercionAction h4 = h(deserializationContext, extractScalarFromObject);
            if (h4 == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (h4 == CoercionAction.AsEmpty) {
                return getEmptyValue(deserializationContext);
            }
            String trim = extractScalarFromObject.trim();
            if (A(trim)) {
                return getNullValue(deserializationContext);
            }
            if (I(trim)) {
                return Double.valueOf(Double.POSITIVE_INFINITY);
            }
            if (H(trim)) {
                return Double.valueOf(Double.NEGATIVE_INFINITY);
            }
            if (G(trim)) {
                return Double.valueOf(Double.NaN);
            }
            try {
                if (!F(trim)) {
                    if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                        return new BigDecimal(trim);
                    }
                    return Double.valueOf(trim);
                } else if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
                    return new BigInteger(trim);
                } else {
                    long parseLong = Long.parseLong(trim);
                    if (!deserializationContext.isEnabled(DeserializationFeature.USE_LONG_FOR_INTS) && parseLong <= 2147483647L && parseLong >= -2147483648L) {
                        return Integer.valueOf((int) parseLong);
                    }
                    return Long.valueOf(parseLong);
                }
            } catch (IllegalArgumentException unused) {
                return deserializationContext.handleWeirdStringValue(this.f14988a, trim, "not a valid number", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
        public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
            int X = jsonParser.X();
            if (X != 6 && X != 7 && X != 8) {
                return bVar.deserializeTypedFromScalar(jsonParser, deserializationContext);
            }
            return deserialize(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public final LogicalType logicalType() {
            return LogicalType.Integer;
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    public static class ShortDeserializer extends PrimitiveOrWrapperDeserializer<Short> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f14952l = 1;

        /* renamed from: m  reason: collision with root package name */
        static final ShortDeserializer f14953m = new ShortDeserializer(Short.TYPE, 0);

        /* renamed from: n  reason: collision with root package name */
        static final ShortDeserializer f14954n = new ShortDeserializer(Short.class, null);

        public ShortDeserializer(Class<Short> cls, Short sh) {
            super(cls, LogicalType.Integer, sh, (short) 0);
        }

        protected Short C0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String extractScalarFromObject;
            int X = jsonParser.X();
            if (X == 1) {
                extractScalarFromObject = deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
            } else if (X == 3) {
                return q(jsonParser, deserializationContext);
            } else {
                if (X == 11) {
                    return getNullValue(deserializationContext);
                }
                if (X != 6) {
                    if (X != 7) {
                        if (X != 8) {
                            return (Short) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                        }
                        CoercionAction e4 = e(jsonParser, deserializationContext, this.f14988a);
                        if (e4 == CoercionAction.AsNull) {
                            return getNullValue(deserializationContext);
                        }
                        if (e4 == CoercionAction.AsEmpty) {
                            return (Short) getEmptyValue(deserializationContext);
                        }
                        return Short.valueOf(jsonParser.Q0());
                    }
                    return Short.valueOf(jsonParser.Q0());
                }
                extractScalarFromObject = jsonParser.S0();
            }
            CoercionAction h4 = h(deserializationContext, extractScalarFromObject);
            if (h4 == CoercionAction.AsNull) {
                return getNullValue(deserializationContext);
            }
            if (h4 == CoercionAction.AsEmpty) {
                return (Short) getEmptyValue(deserializationContext);
            }
            String trim = extractScalarFromObject.trim();
            if (j(deserializationContext, trim)) {
                return getNullValue(deserializationContext);
            }
            try {
                int j4 = g.j(trim);
                if (k0(j4)) {
                    return (Short) deserializationContext.handleWeirdStringValue(this.f14988a, trim, "overflow, value cannot be represented as 16-bit value", new Object[0]);
                }
                return Short.valueOf((short) j4);
            } catch (IllegalArgumentException unused) {
                return (Short) deserializationContext.handleWeirdStringValue(this.f14988a, trim, "not a valid Short value", new Object[0]);
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.d
        public /* bridge */ /* synthetic */ Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return super.getEmptyValue(deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.NumberDeserializers.PrimitiveOrWrapperDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
        public /* bridge */ /* synthetic */ AccessPattern getNullAccessPattern() {
            return super.getNullAccessPattern();
        }

        @Override // com.fasterxml.jackson.databind.d
        public Short deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.o1()) {
                return Short.valueOf(jsonParser.Q0());
            }
            if (this.f14951j) {
                return Short.valueOf(h0(jsonParser, deserializationContext));
            }
            return C0(jsonParser, deserializationContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14955a;

        static {
            int[] iArr = new int[CoercionAction.values().length];
            f14955a = iArr;
            try {
                iArr[CoercionAction.Fail.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14955a[CoercionAction.AsNull.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14955a[CoercionAction.AsEmpty.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        Class[] clsArr = {Boolean.class, Byte.class, Short.class, Character.class, Integer.class, Long.class, Float.class, Double.class, Number.class, BigDecimal.class, BigInteger.class};
        for (int i4 = 0; i4 < 11; i4++) {
            f14925a.add(clsArr[i4].getName());
        }
    }

    public static com.fasterxml.jackson.databind.d<?> a(Class<?> cls, String str) {
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return IntegerDeserializer.f14942m;
            }
            if (cls == Boolean.TYPE) {
                return BooleanDeserializer.f14927m;
            }
            if (cls == Long.TYPE) {
                return LongDeserializer.f14945m;
            }
            if (cls == Double.TYPE) {
                return DoubleDeserializer.f14936m;
            }
            if (cls == Character.TYPE) {
                return CharacterDeserializer.f14933m;
            }
            if (cls == Byte.TYPE) {
                return ByteDeserializer.f14930m;
            }
            if (cls == Short.TYPE) {
                return ShortDeserializer.f14953m;
            }
            if (cls == Float.TYPE) {
                return FloatDeserializer.f14939m;
            }
            if (cls == Void.TYPE) {
                return NullifyingDeserializer.instance;
            }
        } else if (!f14925a.contains(str)) {
            return null;
        } else {
            if (cls == Integer.class) {
                return IntegerDeserializer.f14943n;
            }
            if (cls == Boolean.class) {
                return BooleanDeserializer.f14928n;
            }
            if (cls == Long.class) {
                return LongDeserializer.f14946n;
            }
            if (cls == Double.class) {
                return DoubleDeserializer.f14937n;
            }
            if (cls == Character.class) {
                return CharacterDeserializer.f14934n;
            }
            if (cls == Byte.class) {
                return ByteDeserializer.f14931n;
            }
            if (cls == Short.class) {
                return ShortDeserializer.f14954n;
            }
            if (cls == Float.class) {
                return FloatDeserializer.f14940n;
            }
            if (cls == Number.class) {
                return NumberDeserializer.instance;
            }
            if (cls == BigDecimal.class) {
                return BigDecimalDeserializer.instance;
            }
            if (cls == BigInteger.class) {
                return BigIntegerDeserializer.instance;
            }
        }
        throw new IllegalArgumentException("Internal error: can't find deserializer for " + cls.getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static abstract class PrimitiveOrWrapperDeserializer<T> extends StdScalarDeserializer<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f14947k = 1;

        /* renamed from: g  reason: collision with root package name */
        protected final LogicalType f14948g;

        /* renamed from: h  reason: collision with root package name */
        protected final T f14949h;

        /* renamed from: i  reason: collision with root package name */
        protected final T f14950i;

        /* renamed from: j  reason: collision with root package name */
        protected final boolean f14951j;

        protected PrimitiveOrWrapperDeserializer(Class<T> cls, LogicalType logicalType, T t9, T t10) {
            super((Class<?>) cls);
            this.f14948g = logicalType;
            this.f14949h = t9;
            this.f14950i = t10;
            this.f14951j = cls.isPrimitive();
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return this.f14950i;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
        public AccessPattern getNullAccessPattern() {
            if (this.f14951j) {
                return AccessPattern.DYNAMIC;
            }
            if (this.f14949h == null) {
                return AccessPattern.ALWAYS_NULL;
            }
            return AccessPattern.CONSTANT;
        }

        @Override // com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
        public final T getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
            if (this.f14951j && deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
                deserializationContext.reportInputMismatch(this, "Cannot map `null` into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)", com.fasterxml.jackson.databind.util.g.j(handledType()));
            }
            return this.f14949h;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
        public final LogicalType logicalType() {
            return this.f14948g;
        }

        @Deprecated
        protected PrimitiveOrWrapperDeserializer(Class<T> cls, T t9, T t10) {
            this(cls, LogicalType.OtherScalar, t9, t10);
        }
    }
}
