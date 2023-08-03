package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.Nulls;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.exc.StreamReadException;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.impl.NullsConstantProvider;
import com.fasterxml.jackson.databind.deser.impl.NullsFailProvider;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.exc.InvalidNullException;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import com.fasterxml.jackson.databind.util.b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class PrimitiveArrayDeserializers<T> extends StdDeserializer<T> implements com.fasterxml.jackson.databind.deser.c {

    /* renamed from: f  reason: collision with root package name */
    protected final Boolean f14962f;

    /* renamed from: g  reason: collision with root package name */
    private transient Object f14963g;

    /* renamed from: h  reason: collision with root package name */
    protected final l f14964h;

    @c2.a
    /* loaded from: classes.dex */
    static final class a extends PrimitiveArrayDeserializers<boolean[]> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f14965i = 1;

        public a() {
            super(boolean[].class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> H0(l lVar, Boolean bool) {
            return new a(this, lVar, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: I0 */
        public boolean[] C0(boolean[] zArr, boolean[] zArr2) {
            int length = zArr.length;
            int length2 = zArr2.length;
            boolean[] copyOf = Arrays.copyOf(zArr, length + length2);
            System.arraycopy(zArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: J0 */
        public boolean[] D0() {
            return new boolean[0];
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: K0 */
        public boolean[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            boolean z9;
            int i4;
            if (!jsonParser.p1()) {
                return F0(jsonParser, deserializationContext);
            }
            b.C0124b c10 = deserializationContext.getArrayBuilders().c();
            boolean[] f10 = c10.f();
            int i10 = 0;
            while (true) {
                try {
                    JsonToken y12 = jsonParser.y1();
                    if (y12 != JsonToken.END_ARRAY) {
                        try {
                            if (y12 == JsonToken.VALUE_TRUE) {
                                z9 = true;
                            } else {
                                if (y12 != JsonToken.VALUE_FALSE) {
                                    if (y12 == JsonToken.VALUE_NULL) {
                                        l lVar = this.f14964h;
                                        if (lVar != null) {
                                            lVar.getNullValue(deserializationContext);
                                        } else {
                                            m0(deserializationContext);
                                        }
                                    } else {
                                        z9 = O(jsonParser, deserializationContext);
                                    }
                                }
                                z9 = false;
                            }
                            f10[i10] = z9;
                            i10 = i4;
                        } catch (Exception e4) {
                            e = e4;
                            i10 = i4;
                            throw JsonMappingException.wrapWithPath(e, f10, c10.d() + i10);
                        }
                        if (i10 >= f10.length) {
                            f10 = c10.c(f10, i10);
                            i10 = 0;
                        }
                        i4 = i10 + 1;
                    } else {
                        return c10.e(f10, i10);
                    }
                } catch (Exception e10) {
                    e = e10;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: L0 */
        public boolean[] G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new boolean[]{O(jsonParser, deserializationContext)};
        }

        protected a(a aVar, l lVar, Boolean bool) {
            super(aVar, lVar, bool);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    static final class b extends PrimitiveArrayDeserializers<byte[]> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f14966i = 1;

        public b() {
            super(byte[].class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> H0(l lVar, Boolean bool) {
            return new b(this, lVar, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: I0 */
        public byte[] C0(byte[] bArr, byte[] bArr2) {
            int length = bArr.length;
            int length2 = bArr2.length;
            byte[] copyOf = Arrays.copyOf(bArr, length + length2);
            System.arraycopy(bArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: J0 */
        public byte[] D0() {
            return new byte[0];
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: K0 */
        public byte[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            byte r02;
            int i4;
            JsonToken W = jsonParser.W();
            if (W == JsonToken.VALUE_STRING) {
                try {
                    return jsonParser.p0(deserializationContext.getBase64Variant());
                } catch (StreamReadException e4) {
                    String originalMessage = e4.getOriginalMessage();
                    if (originalMessage.contains("base64")) {
                        return (byte[]) deserializationContext.handleWeirdStringValue(byte[].class, jsonParser.S0(), originalMessage, new Object[0]);
                    }
                }
            }
            if (W == JsonToken.VALUE_EMBEDDED_OBJECT) {
                Object A0 = jsonParser.A0();
                if (A0 == null) {
                    return null;
                }
                if (A0 instanceof byte[]) {
                    return (byte[]) A0;
                }
            }
            if (!jsonParser.p1()) {
                return F0(jsonParser, deserializationContext);
            }
            b.c d4 = deserializationContext.getArrayBuilders().d();
            byte[] f10 = d4.f();
            int i10 = 0;
            while (true) {
                try {
                    JsonToken y12 = jsonParser.y1();
                    if (y12 != JsonToken.END_ARRAY) {
                        try {
                            if (y12 == JsonToken.VALUE_NUMBER_INT) {
                                r02 = jsonParser.r0();
                            } else if (y12 == JsonToken.VALUE_NULL) {
                                l lVar = this.f14964h;
                                if (lVar != null) {
                                    lVar.getNullValue(deserializationContext);
                                } else {
                                    m0(deserializationContext);
                                    r02 = 0;
                                }
                            } else {
                                r02 = Q(jsonParser, deserializationContext);
                            }
                            f10[i10] = r02;
                            i10 = i4;
                        } catch (Exception e10) {
                            e = e10;
                            i10 = i4;
                            throw JsonMappingException.wrapWithPath(e, f10, d4.d() + i10);
                        }
                        if (i10 >= f10.length) {
                            f10 = d4.c(f10, i10);
                            i10 = 0;
                        }
                        i4 = i10 + 1;
                    } else {
                        return d4.e(f10, i10);
                    }
                } catch (Exception e11) {
                    e = e11;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: L0 */
        public byte[] G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            byte byteValue;
            JsonToken W = jsonParser.W();
            if (W == JsonToken.VALUE_NUMBER_INT) {
                byteValue = jsonParser.r0();
            } else if (W == JsonToken.VALUE_NULL) {
                l lVar = this.f14964h;
                if (lVar != null) {
                    lVar.getNullValue(deserializationContext);
                    return (byte[]) getEmptyValue(deserializationContext);
                }
                m0(deserializationContext);
                return null;
            } else {
                byteValue = ((Number) deserializationContext.handleUnexpectedToken(this.f14988a.getComponentType(), jsonParser)).byteValue();
            }
            return new byte[]{byteValue};
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers, com.fasterxml.jackson.databind.d
        public LogicalType logicalType() {
            return LogicalType.Binary;
        }

        protected b(b bVar, l lVar, Boolean bool) {
            super(bVar, lVar, bool);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    static final class c extends PrimitiveArrayDeserializers<char[]> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f14967i = 1;

        public c() {
            super(char[].class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> H0(l lVar, Boolean bool) {
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: I0 */
        public char[] C0(char[] cArr, char[] cArr2) {
            int length = cArr.length;
            int length2 = cArr2.length;
            char[] copyOf = Arrays.copyOf(cArr, length + length2);
            System.arraycopy(cArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: J0 */
        public char[] D0() {
            return new char[0];
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: K0 */
        public char[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String S0;
            if (jsonParser.k1(JsonToken.VALUE_STRING)) {
                char[] T0 = jsonParser.T0();
                int V0 = jsonParser.V0();
                int U0 = jsonParser.U0();
                char[] cArr = new char[U0];
                System.arraycopy(T0, V0, cArr, 0, U0);
                return cArr;
            } else if (jsonParser.p1()) {
                StringBuilder sb = new StringBuilder(64);
                while (true) {
                    JsonToken y12 = jsonParser.y1();
                    if (y12 != JsonToken.END_ARRAY) {
                        if (y12 == JsonToken.VALUE_STRING) {
                            S0 = jsonParser.S0();
                        } else if (y12 == JsonToken.VALUE_NULL) {
                            l lVar = this.f14964h;
                            if (lVar != null) {
                                lVar.getNullValue(deserializationContext);
                            } else {
                                m0(deserializationContext);
                                S0 = com.squareup.moshi.g.f55599d1;
                            }
                        } else {
                            S0 = ((CharSequence) deserializationContext.handleUnexpectedToken(Character.TYPE, jsonParser)).toString();
                        }
                        if (S0.length() != 1) {
                            deserializationContext.reportInputMismatch(this, "Cannot convert a JSON String of length %d into a char element of char array", Integer.valueOf(S0.length()));
                        }
                        sb.append(S0.charAt(0));
                    } else {
                        return sb.toString().toCharArray();
                    }
                }
            } else {
                if (jsonParser.k1(JsonToken.VALUE_EMBEDDED_OBJECT)) {
                    Object A0 = jsonParser.A0();
                    if (A0 == null) {
                        return null;
                    }
                    if (A0 instanceof char[]) {
                        return (char[]) A0;
                    }
                    if (A0 instanceof String) {
                        return ((String) A0).toCharArray();
                    }
                    if (A0 instanceof byte[]) {
                        return com.fasterxml.jackson.core.a.a().encode((byte[]) A0, false).toCharArray();
                    }
                }
                return (char[]) deserializationContext.handleUnexpectedToken(this.f14988a, jsonParser);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: L0 */
        public char[] G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return (char[]) deserializationContext.handleUnexpectedToken(this.f14988a, jsonParser);
        }

        protected c(c cVar, l lVar, Boolean bool) {
            super(cVar, lVar, bool);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    static final class d extends PrimitiveArrayDeserializers<double[]> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f14968i = 1;

        public d() {
            super(double[].class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> H0(l lVar, Boolean bool) {
            return new d(this, lVar, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: I0 */
        public double[] C0(double[] dArr, double[] dArr2) {
            int length = dArr.length;
            int length2 = dArr2.length;
            double[] copyOf = Arrays.copyOf(dArr, length + length2);
            System.arraycopy(dArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: J0 */
        public double[] D0() {
            return new double[0];
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: K0 */
        public double[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            l lVar;
            if (!jsonParser.p1()) {
                return F0(jsonParser, deserializationContext);
            }
            b.d e4 = deserializationContext.getArrayBuilders().e();
            double[] f10 = e4.f();
            int i4 = 0;
            while (true) {
                try {
                    JsonToken y12 = jsonParser.y1();
                    if (y12 != JsonToken.END_ARRAY) {
                        if (y12 == JsonToken.VALUE_NULL && (lVar = this.f14964h) != null) {
                            lVar.getNullValue(deserializationContext);
                        } else {
                            double V = V(jsonParser, deserializationContext);
                            if (i4 >= f10.length) {
                                f10 = e4.c(f10, i4);
                                i4 = 0;
                            }
                            int i10 = i4 + 1;
                            try {
                                f10[i4] = V;
                                i4 = i10;
                            } catch (Exception e10) {
                                e = e10;
                                i4 = i10;
                                throw JsonMappingException.wrapWithPath(e, f10, e4.d() + i4);
                            }
                        }
                    } else {
                        return e4.e(f10, i4);
                    }
                } catch (Exception e11) {
                    e = e11;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: L0 */
        public double[] G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new double[]{V(jsonParser, deserializationContext)};
        }

        protected d(d dVar, l lVar, Boolean bool) {
            super(dVar, lVar, bool);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    static final class e extends PrimitiveArrayDeserializers<float[]> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f14969i = 1;

        public e() {
            super(float[].class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> H0(l lVar, Boolean bool) {
            return new e(this, lVar, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: I0 */
        public float[] C0(float[] fArr, float[] fArr2) {
            int length = fArr.length;
            int length2 = fArr2.length;
            float[] copyOf = Arrays.copyOf(fArr, length + length2);
            System.arraycopy(fArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: J0 */
        public float[] D0() {
            return new float[0];
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: K0 */
        public float[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            l lVar;
            if (!jsonParser.p1()) {
                return F0(jsonParser, deserializationContext);
            }
            b.e f10 = deserializationContext.getArrayBuilders().f();
            float[] f11 = f10.f();
            int i4 = 0;
            while (true) {
                try {
                    JsonToken y12 = jsonParser.y1();
                    if (y12 != JsonToken.END_ARRAY) {
                        if (y12 == JsonToken.VALUE_NULL && (lVar = this.f14964h) != null) {
                            lVar.getNullValue(deserializationContext);
                        } else {
                            float X = X(jsonParser, deserializationContext);
                            if (i4 >= f11.length) {
                                f11 = f10.c(f11, i4);
                                i4 = 0;
                            }
                            int i10 = i4 + 1;
                            try {
                                f11[i4] = X;
                                i4 = i10;
                            } catch (Exception e4) {
                                e = e4;
                                i4 = i10;
                                throw JsonMappingException.wrapWithPath(e, f11, f10.d() + i4);
                            }
                        }
                    } else {
                        return f10.e(f11, i4);
                    }
                } catch (Exception e10) {
                    e = e10;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: L0 */
        public float[] G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new float[]{X(jsonParser, deserializationContext)};
        }

        protected e(e eVar, l lVar, Boolean bool) {
            super(eVar, lVar, bool);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    static final class f extends PrimitiveArrayDeserializers<int[]> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f14970i = 1;

        /* renamed from: j  reason: collision with root package name */
        public static final f f14971j = new f();

        public f() {
            super(int[].class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> H0(l lVar, Boolean bool) {
            return new f(this, lVar, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: I0 */
        public int[] C0(int[] iArr, int[] iArr2) {
            int length = iArr.length;
            int length2 = iArr2.length;
            int[] copyOf = Arrays.copyOf(iArr, length + length2);
            System.arraycopy(iArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: J0 */
        public int[] D0() {
            return new int[0];
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: K0 */
        public int[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int F0;
            int i4;
            if (!jsonParser.p1()) {
                return F0(jsonParser, deserializationContext);
            }
            b.f g4 = deserializationContext.getArrayBuilders().g();
            int[] f10 = g4.f();
            int i10 = 0;
            while (true) {
                try {
                    JsonToken y12 = jsonParser.y1();
                    if (y12 != JsonToken.END_ARRAY) {
                        try {
                            if (y12 == JsonToken.VALUE_NUMBER_INT) {
                                F0 = jsonParser.F0();
                            } else if (y12 == JsonToken.VALUE_NULL) {
                                l lVar = this.f14964h;
                                if (lVar != null) {
                                    lVar.getNullValue(deserializationContext);
                                } else {
                                    m0(deserializationContext);
                                    F0 = 0;
                                }
                            } else {
                                F0 = Z(jsonParser, deserializationContext);
                            }
                            f10[i10] = F0;
                            i10 = i4;
                        } catch (Exception e4) {
                            e = e4;
                            i10 = i4;
                            throw JsonMappingException.wrapWithPath(e, f10, g4.d() + i10);
                        }
                        if (i10 >= f10.length) {
                            f10 = g4.c(f10, i10);
                            i10 = 0;
                        }
                        i4 = i10 + 1;
                    } else {
                        return g4.e(f10, i10);
                    }
                } catch (Exception e10) {
                    e = e10;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: L0 */
        public int[] G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new int[]{Z(jsonParser, deserializationContext)};
        }

        protected f(f fVar, l lVar, Boolean bool) {
            super(fVar, lVar, bool);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    static final class g extends PrimitiveArrayDeserializers<long[]> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f14972i = 1;

        /* renamed from: j  reason: collision with root package name */
        public static final g f14973j = new g();

        public g() {
            super(long[].class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> H0(l lVar, Boolean bool) {
            return new g(this, lVar, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: I0 */
        public long[] C0(long[] jArr, long[] jArr2) {
            int length = jArr.length;
            int length2 = jArr2.length;
            long[] copyOf = Arrays.copyOf(jArr, length + length2);
            System.arraycopy(jArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: J0 */
        public long[] D0() {
            return new long[0];
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: K0 */
        public long[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            long H0;
            int i4;
            if (!jsonParser.p1()) {
                return F0(jsonParser, deserializationContext);
            }
            b.g h4 = deserializationContext.getArrayBuilders().h();
            long[] f10 = h4.f();
            int i10 = 0;
            while (true) {
                try {
                    JsonToken y12 = jsonParser.y1();
                    if (y12 != JsonToken.END_ARRAY) {
                        try {
                            if (y12 == JsonToken.VALUE_NUMBER_INT) {
                                H0 = jsonParser.H0();
                            } else if (y12 == JsonToken.VALUE_NULL) {
                                l lVar = this.f14964h;
                                if (lVar != null) {
                                    lVar.getNullValue(deserializationContext);
                                } else {
                                    m0(deserializationContext);
                                    H0 = 0;
                                }
                            } else {
                                H0 = f0(jsonParser, deserializationContext);
                            }
                            f10[i10] = H0;
                            i10 = i4;
                        } catch (Exception e4) {
                            e = e4;
                            i10 = i4;
                            throw JsonMappingException.wrapWithPath(e, f10, h4.d() + i10);
                        }
                        if (i10 >= f10.length) {
                            f10 = h4.c(f10, i10);
                            i10 = 0;
                        }
                        i4 = i10 + 1;
                    } else {
                        return h4.e(f10, i10);
                    }
                } catch (Exception e10) {
                    e = e10;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: L0 */
        public long[] G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new long[]{f0(jsonParser, deserializationContext)};
        }

        protected g(g gVar, l lVar, Boolean bool) {
            super(gVar, lVar, bool);
        }
    }

    @c2.a
    /* loaded from: classes.dex */
    static final class h extends PrimitiveArrayDeserializers<short[]> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f14974i = 1;

        public h() {
            super(short[].class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        protected PrimitiveArrayDeserializers<?> H0(l lVar, Boolean bool) {
            return new h(this, lVar, bool);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: I0 */
        public short[] C0(short[] sArr, short[] sArr2) {
            int length = sArr.length;
            int length2 = sArr2.length;
            short[] copyOf = Arrays.copyOf(sArr, length + length2);
            System.arraycopy(sArr2, 0, copyOf, length, length2);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: J0 */
        public short[] D0() {
            return new short[0];
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: K0 */
        public short[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            short h02;
            int i4;
            if (!jsonParser.p1()) {
                return F0(jsonParser, deserializationContext);
            }
            b.h i10 = deserializationContext.getArrayBuilders().i();
            short[] f10 = i10.f();
            int i11 = 0;
            while (true) {
                try {
                    JsonToken y12 = jsonParser.y1();
                    if (y12 != JsonToken.END_ARRAY) {
                        try {
                            if (y12 == JsonToken.VALUE_NULL) {
                                l lVar = this.f14964h;
                                if (lVar != null) {
                                    lVar.getNullValue(deserializationContext);
                                } else {
                                    m0(deserializationContext);
                                    h02 = 0;
                                }
                            } else {
                                h02 = h0(jsonParser, deserializationContext);
                            }
                            f10[i11] = h02;
                            i11 = i4;
                        } catch (Exception e4) {
                            e = e4;
                            i11 = i4;
                            throw JsonMappingException.wrapWithPath(e, f10, i10.d() + i11);
                        }
                        if (i11 >= f10.length) {
                            f10 = i10.c(f10, i11);
                            i11 = 0;
                        }
                        i4 = i11 + 1;
                    } else {
                        return i10.e(f10, i11);
                    }
                } catch (Exception e10) {
                    e = e10;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers
        /* renamed from: L0 */
        public short[] G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new short[]{h0(jsonParser, deserializationContext)};
        }

        protected h(h hVar, l lVar, Boolean bool) {
            super(hVar, lVar, bool);
        }
    }

    protected PrimitiveArrayDeserializers(Class<T> cls) {
        super((Class<?>) cls);
        this.f14962f = null;
        this.f14964h = null;
    }

    public static com.fasterxml.jackson.databind.d<?> forType(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return f.f14971j;
        }
        if (cls == Long.TYPE) {
            return g.f14973j;
        }
        if (cls == Byte.TYPE) {
            return new b();
        }
        if (cls == Short.TYPE) {
            return new h();
        }
        if (cls == Float.TYPE) {
            return new e();
        }
        if (cls == Double.TYPE) {
            return new d();
        }
        if (cls == Boolean.TYPE) {
            return new a();
        }
        if (cls == Character.TYPE) {
            return new c();
        }
        throw new IllegalStateException();
    }

    protected abstract T C0(T t9, T t10);

    protected abstract T D0();

    protected void E0(DeserializationContext deserializationContext) throws IOException {
        throw InvalidNullException.from(deserializationContext, (PropertyName) null, deserializationContext.constructType(this.f14988a));
    }

    protected T F0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.k1(JsonToken.VALUE_STRING)) {
            return t(jsonParser, deserializationContext);
        }
        Boolean bool = this.f14962f;
        if (bool == Boolean.TRUE || (bool == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))) {
            return G0(jsonParser, deserializationContext);
        }
        return (T) deserializationContext.handleUnexpectedToken(this.f14988a, jsonParser);
    }

    protected abstract T G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    protected abstract PrimitiveArrayDeserializers<?> H0(l lVar, Boolean bool);

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        l lVar;
        Boolean v02 = v0(deserializationContext, beanProperty, this.f14988a, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        Nulls s02 = s0(deserializationContext, beanProperty);
        if (s02 == Nulls.SKIP) {
            lVar = NullsConstantProvider.skipper();
        } else if (s02 != Nulls.FAIL) {
            lVar = null;
        } else if (beanProperty == null) {
            lVar = NullsFailProvider.constructForRootValue(deserializationContext.constructType(this.f14988a.getComponentType()));
        } else {
            lVar = NullsFailProvider.constructForProperty(beanProperty, beanProperty.getType().getContentType());
        }
        return (Objects.equals(v02, this.f14962f) && lVar == this.f14964h) ? this : H0(lVar, v02);
    }

    @Override // com.fasterxml.jackson.databind.d
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, T t9) throws IOException {
        T deserialize = deserialize(jsonParser, deserializationContext);
        return (t9 == null || Array.getLength(t9) == 0) ? deserialize : C0(t9, deserialize);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.CONSTANT;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        Object obj = this.f14963g;
        if (obj == null) {
            T D0 = D0();
            this.f14963g = D0;
            return D0;
        }
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Array;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.TRUE;
    }

    protected PrimitiveArrayDeserializers(PrimitiveArrayDeserializers<?> primitiveArrayDeserializers, l lVar, Boolean bool) {
        super(primitiveArrayDeserializers.f14988a);
        this.f14962f = bool;
        this.f14964h = lVar;
    }
}
