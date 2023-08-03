package com.fasterxml.jackson.databind.ser.std;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import c2.a;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class StdArraySerializers {

    /* renamed from: a  reason: collision with root package name */
    protected static final HashMap<String, g<?>> f15824a;

    @a
    /* loaded from: classes2.dex */
    public static class BooleanArraySerializer extends ArraySerializerBase<boolean[]> {

        /* renamed from: f  reason: collision with root package name */
        private static final JavaType f15825f = TypeFactory.defaultInstance().uncheckedSimpleType(Boolean.class);

        public BooleanArraySerializer() {
            super(boolean[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public g<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new BooleanArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public ContainerSerializer<?> _withValueTypeSerializer(f fVar) {
            return this;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
            p(fVar, javaType, JsonFormatTypes.BOOLEAN);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public g<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return f15825f;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public e getSchema(l lVar, Type type) {
            ObjectNode d4 = d("array", true);
            d4.set("items", c(TypedValues.Custom.S_BOOLEAN));
            return d4;
        }

        protected BooleanArraySerializer(BooleanArraySerializer booleanArraySerializer, BeanProperty beanProperty, Boolean bool) {
            super(booleanArraySerializer, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(boolean[] zArr) {
            return zArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.g
        public boolean isEmpty(l lVar, boolean[] zArr) {
            return zArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public final void serialize(boolean[] zArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            int length = zArr.length;
            if (length == 1 && w(lVar)) {
                serializeContents(zArr, jsonGenerator, lVar);
                return;
            }
            jsonGenerator.J1(zArr, length);
            serializeContents(zArr, jsonGenerator, lVar);
            jsonGenerator.R0();
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(boolean[] zArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            for (boolean z9 : zArr) {
                jsonGenerator.O0(z9);
            }
        }
    }

    @a
    /* loaded from: classes2.dex */
    public static class CharArraySerializer extends StdSerializer<char[]> {
        public CharArraySerializer() {
            super(char[].class);
        }

        private final void v(JsonGenerator jsonGenerator, char[] cArr) throws IOException {
            int length = cArr.length;
            for (int i4 = 0; i4 < length; i4++) {
                jsonGenerator.Q1(cArr, i4, 1);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
            p(fVar, javaType, JsonFormatTypes.STRING);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public e getSchema(l lVar, Type type) {
            ObjectNode d4 = d("array", true);
            ObjectNode c10 = c(TypedValues.Custom.S_STRING);
            c10.put("type", TypedValues.Custom.S_STRING);
            return d4.set("items", c10);
        }

        @Override // com.fasterxml.jackson.databind.g
        public boolean isEmpty(l lVar, char[] cArr) {
            return cArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public void serialize(char[] cArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            if (lVar.isEnabled(SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)) {
                jsonGenerator.J1(cArr, cArr.length);
                v(jsonGenerator, cArr);
                jsonGenerator.R0();
                return;
            }
            jsonGenerator.Q1(cArr, 0, cArr.length);
        }

        @Override // com.fasterxml.jackson.databind.g
        public void serializeWithType(char[] cArr, JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
            WritableTypeId o9;
            if (lVar.isEnabled(SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)) {
                o9 = fVar.o(jsonGenerator, fVar.f(cArr, JsonToken.START_ARRAY));
                v(jsonGenerator, cArr);
            } else {
                o9 = fVar.o(jsonGenerator, fVar.f(cArr, JsonToken.VALUE_STRING));
                jsonGenerator.Q1(cArr, 0, cArr.length);
            }
            fVar.v(jsonGenerator, o9);
        }
    }

    @a
    /* loaded from: classes2.dex */
    public static class DoubleArraySerializer extends ArraySerializerBase<double[]> {

        /* renamed from: f  reason: collision with root package name */
        private static final JavaType f15826f = TypeFactory.defaultInstance().uncheckedSimpleType(Double.TYPE);

        public DoubleArraySerializer() {
            super(double[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public g<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new DoubleArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public ContainerSerializer<?> _withValueTypeSerializer(f fVar) {
            return this;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
            p(fVar, javaType, JsonFormatTypes.NUMBER);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public g<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return f15826f;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public e getSchema(l lVar, Type type) {
            return d("array", true).set("items", c("number"));
        }

        protected DoubleArraySerializer(DoubleArraySerializer doubleArraySerializer, BeanProperty beanProperty, Boolean bool) {
            super(doubleArraySerializer, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(double[] dArr) {
            return dArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.g
        public boolean isEmpty(l lVar, double[] dArr) {
            return dArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public final void serialize(double[] dArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            if (dArr.length == 1 && w(lVar)) {
                serializeContents(dArr, jsonGenerator, lVar);
            } else {
                jsonGenerator.D0(dArr, 0, dArr.length);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(double[] dArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            for (double d4 : dArr) {
                jsonGenerator.Y0(d4);
            }
        }
    }

    @a
    /* loaded from: classes2.dex */
    public static class FloatArraySerializer extends TypedPrimitiveArraySerializer<float[]> {

        /* renamed from: f  reason: collision with root package name */
        private static final JavaType f15827f = TypeFactory.defaultInstance().uncheckedSimpleType(Float.TYPE);

        public FloatArraySerializer() {
            super(float[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public g<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new FloatArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
            p(fVar, javaType, JsonFormatTypes.NUMBER);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public g<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return f15827f;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public e getSchema(l lVar, Type type) {
            return d("array", true).set("items", c("number"));
        }

        public FloatArraySerializer(FloatArraySerializer floatArraySerializer, BeanProperty beanProperty, Boolean bool) {
            super(floatArraySerializer, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(float[] fArr) {
            return fArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.g
        public boolean isEmpty(l lVar, float[] fArr) {
            return fArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public final void serialize(float[] fArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            int length = fArr.length;
            if (length == 1 && w(lVar)) {
                serializeContents(fArr, jsonGenerator, lVar);
                return;
            }
            jsonGenerator.J1(fArr, length);
            serializeContents(fArr, jsonGenerator, lVar);
            jsonGenerator.R0();
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(float[] fArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            for (float f10 : fArr) {
                jsonGenerator.Z0(f10);
            }
        }
    }

    @a
    /* loaded from: classes2.dex */
    public static class IntArraySerializer extends ArraySerializerBase<int[]> {

        /* renamed from: f  reason: collision with root package name */
        private static final JavaType f15828f = TypeFactory.defaultInstance().uncheckedSimpleType(Integer.TYPE);

        public IntArraySerializer() {
            super(int[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public g<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new IntArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public ContainerSerializer<?> _withValueTypeSerializer(f fVar) {
            return this;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
            p(fVar, javaType, JsonFormatTypes.INTEGER);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public g<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return f15828f;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public e getSchema(l lVar, Type type) {
            return d("array", true).set("items", c(TypedValues.Custom.S_INT));
        }

        protected IntArraySerializer(IntArraySerializer intArraySerializer, BeanProperty beanProperty, Boolean bool) {
            super(intArraySerializer, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(int[] iArr) {
            return iArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.g
        public boolean isEmpty(l lVar, int[] iArr) {
            return iArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public final void serialize(int[] iArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            if (iArr.length == 1 && w(lVar)) {
                serializeContents(iArr, jsonGenerator, lVar);
            } else {
                jsonGenerator.E0(iArr, 0, iArr.length);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(int[] iArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            for (int i4 : iArr) {
                jsonGenerator.a1(i4);
            }
        }
    }

    @a
    /* loaded from: classes2.dex */
    public static class LongArraySerializer extends TypedPrimitiveArraySerializer<long[]> {

        /* renamed from: f  reason: collision with root package name */
        private static final JavaType f15829f = TypeFactory.defaultInstance().uncheckedSimpleType(Long.TYPE);

        public LongArraySerializer() {
            super(long[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public g<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new LongArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
            p(fVar, javaType, JsonFormatTypes.NUMBER);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public g<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return f15829f;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public e getSchema(l lVar, Type type) {
            return d("array", true).set("items", d("number", true));
        }

        public LongArraySerializer(LongArraySerializer longArraySerializer, BeanProperty beanProperty, Boolean bool) {
            super(longArraySerializer, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(long[] jArr) {
            return jArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.g
        public boolean isEmpty(l lVar, long[] jArr) {
            return jArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public final void serialize(long[] jArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            if (jArr.length == 1 && w(lVar)) {
                serializeContents(jArr, jsonGenerator, lVar);
            } else {
                jsonGenerator.F0(jArr, 0, jArr.length);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(long[] jArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            for (long j4 : jArr) {
                jsonGenerator.b1(j4);
            }
        }
    }

    @a
    /* loaded from: classes2.dex */
    public static class ShortArraySerializer extends TypedPrimitiveArraySerializer<short[]> {

        /* renamed from: f  reason: collision with root package name */
        private static final JavaType f15830f = TypeFactory.defaultInstance().uncheckedSimpleType(Short.TYPE);

        public ShortArraySerializer() {
            super(short[].class);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public g<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new ShortArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
        public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
            p(fVar, javaType, JsonFormatTypes.INTEGER);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public g<?> getContentSerializer() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public JavaType getContentType() {
            return f15830f;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
        public e getSchema(l lVar, Type type) {
            return d("array", true).set("items", c(TypedValues.Custom.S_INT));
        }

        public ShortArraySerializer(ShortArraySerializer shortArraySerializer, BeanProperty beanProperty, Boolean bool) {
            super(shortArraySerializer, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public boolean hasSingleElement(short[] sArr) {
            return sArr.length == 1;
        }

        @Override // com.fasterxml.jackson.databind.g
        public boolean isEmpty(l lVar, short[] sArr) {
            return sArr.length == 0;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
        public final void serialize(short[] sArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            int length = sArr.length;
            if (length == 1 && w(lVar)) {
                serializeContents(sArr, jsonGenerator, lVar);
                return;
            }
            jsonGenerator.J1(sArr, length);
            serializeContents(sArr, jsonGenerator, lVar);
            jsonGenerator.R0();
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public void serializeContents(short[] sArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
            for (short s9 : sArr) {
                jsonGenerator.a1(s9);
            }
        }
    }

    /* loaded from: classes2.dex */
    protected static abstract class TypedPrimitiveArraySerializer<T> extends ArraySerializerBase<T> {
        protected TypedPrimitiveArraySerializer(Class<T> cls) {
            super(cls);
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public final ContainerSerializer<?> _withValueTypeSerializer(f fVar) {
            return this;
        }

        protected TypedPrimitiveArraySerializer(TypedPrimitiveArraySerializer<T> typedPrimitiveArraySerializer, BeanProperty beanProperty, Boolean bool) {
            super(typedPrimitiveArraySerializer, beanProperty, bool);
        }
    }

    static {
        HashMap<String, g<?>> hashMap = new HashMap<>();
        f15824a = hashMap;
        hashMap.put(boolean[].class.getName(), new BooleanArraySerializer());
        hashMap.put(byte[].class.getName(), new ByteArraySerializer());
        hashMap.put(char[].class.getName(), new CharArraySerializer());
        hashMap.put(short[].class.getName(), new ShortArraySerializer());
        hashMap.put(int[].class.getName(), new IntArraySerializer());
        hashMap.put(long[].class.getName(), new LongArraySerializer());
        hashMap.put(float[].class.getName(), new FloatArraySerializer());
        hashMap.put(double[].class.getName(), new DoubleArraySerializer());
    }

    protected StdArraySerializers() {
    }

    public static g<?> a(Class<?> cls) {
        return f15824a.get(cls.getName());
    }
}
