package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.type.WritableTypeId;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public abstract class JsonGenerator implements Closeable, Flushable, n {

    /* renamed from: b  reason: collision with root package name */
    protected static final com.fasterxml.jackson.core.util.f<StreamWriteCapability> f13695b;

    /* renamed from: c  reason: collision with root package name */
    protected static final com.fasterxml.jackson.core.util.f<StreamWriteCapability> f13696c;

    /* renamed from: d  reason: collision with root package name */
    protected static final com.fasterxml.jackson.core.util.f<StreamWriteCapability> f13697d;

    /* renamed from: a  reason: collision with root package name */
    protected i f13698a;

    /* loaded from: classes.dex */
    public enum Feature {
        AUTO_CLOSE_TARGET(true),
        AUTO_CLOSE_JSON_CONTENT(true),
        FLUSH_PASSED_TO_STREAM(true),
        QUOTE_FIELD_NAMES(true),
        QUOTE_NON_NUMERIC_NUMBERS(true),
        ESCAPE_NON_ASCII(false),
        WRITE_NUMBERS_AS_STRINGS(false),
        WRITE_BIGDECIMAL_AS_PLAIN(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNKNOWN(false);
        

        /* renamed from: a  reason: collision with root package name */
        private final boolean f13700a;

        /* renamed from: b  reason: collision with root package name */
        private final int f13701b = 1 << ordinal();

        Feature(boolean z9) {
            this.f13700a = z9;
        }

        public static int collectDefaults() {
            Feature[] values;
            int i4 = 0;
            for (Feature feature : values()) {
                if (feature.enabledByDefault()) {
                    i4 |= feature.getMask();
                }
            }
            return i4;
        }

        public boolean enabledByDefault() {
            return this.f13700a;
        }

        public boolean enabledIn(int i4) {
            return (i4 & this.f13701b) != 0;
        }

        public int getMask() {
            return this.f13701b;
        }
    }

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13702a;

        static {
            int[] iArr = new int[WritableTypeId.Inclusion.values().length];
            f13702a = iArr;
            try {
                iArr[WritableTypeId.Inclusion.PARENT_PROPERTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13702a[WritableTypeId.Inclusion.PAYLOAD_PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13702a[WritableTypeId.Inclusion.METADATA_PROPERTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13702a[WritableTypeId.Inclusion.WRAPPER_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13702a[WritableTypeId.Inclusion.WRAPPER_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static {
        com.fasterxml.jackson.core.util.f<StreamWriteCapability> c10 = com.fasterxml.jackson.core.util.f.c(StreamWriteCapability.values());
        f13695b = c10;
        f13696c = c10.e(StreamWriteCapability.CAN_WRITE_FORMATTED_NUMBERS);
        f13697d = c10.e(StreamWriteCapability.CAN_WRITE_BINARY_NATIVELY);
    }

    public boolean A() {
        return false;
    }

    public JsonGenerator A0(j jVar) {
        throw new UnsupportedOperationException();
    }

    public abstract void A1(char[] cArr, int i4, int i10) throws IOException;

    public void B0(c cVar) {
        throw new UnsupportedOperationException(String.format("Generator of type %s does not support schema of type '%s'", getClass().getName(), cVar.a()));
    }

    public abstract void B1(byte[] bArr, int i4, int i10) throws IOException;

    public abstract JsonGenerator C0();

    public void C1(j jVar) throws IOException {
        D1(jVar.getValue());
    }

    public boolean D() {
        return false;
    }

    public void D0(double[] dArr, int i4, int i10) throws IOException {
        if (dArr != null) {
            i(dArr.length, i4, i10);
            J1(dArr, i10);
            int i11 = i10 + i4;
            while (i4 < i11) {
                Y0(dArr[i4]);
                i4++;
            }
            R0();
            return;
        }
        throw new IllegalArgumentException("null array");
    }

    public abstract void D1(String str) throws IOException;

    public final JsonGenerator E(Feature feature, boolean z9) {
        if (z9) {
            K(feature);
        } else {
            J(feature);
        }
        return this;
    }

    public void E0(int[] iArr, int i4, int i10) throws IOException {
        if (iArr != null) {
            i(iArr.length, i4, i10);
            J1(iArr, i10);
            int i11 = i10 + i4;
            while (i4 < i11) {
                a1(iArr[i4]);
                i4++;
            }
            R0();
            return;
        }
        throw new IllegalArgumentException("null array");
    }

    public abstract void E1(String str, int i4, int i10) throws IOException;

    public void F0(long[] jArr, int i4, int i10) throws IOException {
        if (jArr != null) {
            i(jArr.length, i4, i10);
            J1(jArr, i10);
            int i11 = i10 + i4;
            while (i4 < i11) {
                b1(jArr[i4]);
                i4++;
            }
            R0();
            return;
        }
        throw new IllegalArgumentException("null array");
    }

    public abstract void F1(char[] cArr, int i4, int i10) throws IOException;

    public void G(JsonParser jsonParser) throws IOException {
        JsonToken W = jsonParser.W();
        switch (W == null ? -1 : W.id()) {
            case -1:
                b("No current event to copy");
                return;
            case 0:
            default:
                throw new IllegalStateException("Internal error: unknown current token, " + W);
            case 1:
                K1();
                return;
            case 2:
                S0();
                return;
            case 3:
                G1();
                return;
            case 4:
                R0();
                return;
            case 5:
                V0(jsonParser.u0());
                return;
            case 6:
                if (jsonParser.j1()) {
                    Q1(jsonParser.T0(), jsonParser.V0(), jsonParser.U0());
                    return;
                } else {
                    P1(jsonParser.S0());
                    return;
                }
            case 7:
                JsonParser.NumberType J0 = jsonParser.J0();
                if (J0 == JsonParser.NumberType.INT) {
                    a1(jsonParser.F0());
                    return;
                } else if (J0 == JsonParser.NumberType.BIG_INTEGER) {
                    e1(jsonParser.n0());
                    return;
                } else {
                    b1(jsonParser.H0());
                    return;
                }
            case 8:
                JsonParser.NumberType J02 = jsonParser.J0();
                if (J02 == JsonParser.NumberType.BIG_DECIMAL) {
                    d1(jsonParser.y0());
                    return;
                } else if (J02 == JsonParser.NumberType.FLOAT) {
                    Z0(jsonParser.C0());
                    return;
                } else {
                    Y0(jsonParser.z0());
                    return;
                }
            case 9:
                O0(true);
                return;
            case 10:
                O0(false);
                return;
            case 11:
                W0();
                return;
            case 12:
                o1(jsonParser.A0());
                return;
        }
    }

    public void G0(String[] strArr, int i4, int i10) throws IOException {
        if (strArr != null) {
            i(strArr.length, i4, i10);
            J1(strArr, i10);
            int i11 = i10 + i4;
            while (i4 < i11) {
                P1(strArr[i4]);
                i4++;
            }
            R0();
            return;
        }
        throw new IllegalArgumentException("null array");
    }

    public abstract void G1() throws IOException;

    public void H(JsonParser jsonParser) throws IOException {
        JsonToken W = jsonParser.W();
        int id = W == null ? -1 : W.id();
        if (id == 5) {
            V0(jsonParser.u0());
            JsonToken y12 = jsonParser.y1();
            id = y12 != null ? y12.id() : -1;
        }
        if (id == 1) {
            K1();
            a(jsonParser);
        } else if (id != 3) {
            G(jsonParser);
        } else {
            G1();
            a(jsonParser);
        }
    }

    public void H0(String str) throws IOException {
        V0(str);
        G1();
    }

    @Deprecated
    public void H1(int i4) throws IOException {
        G1();
    }

    public Object I() {
        return W();
    }

    public abstract int I0(Base64Variant base64Variant, InputStream inputStream, int i4) throws IOException;

    public void I1(Object obj) throws IOException {
        G1();
        w0(obj);
    }

    public abstract JsonGenerator J(Feature feature);

    public int J0(InputStream inputStream, int i4) throws IOException {
        return I0(com.fasterxml.jackson.core.a.a(), inputStream, i4);
    }

    public void J1(Object obj, int i4) throws IOException {
        H1(i4);
        w0(obj);
    }

    public abstract JsonGenerator K(Feature feature);

    public abstract void K0(Base64Variant base64Variant, byte[] bArr, int i4, int i10) throws IOException;

    public abstract void K1() throws IOException;

    public CharacterEscapes L() {
        return null;
    }

    public void L0(byte[] bArr) throws IOException {
        K0(com.fasterxml.jackson.core.a.a(), bArr, 0, bArr.length);
    }

    public void L1(Object obj) throws IOException {
        K1();
        w0(obj);
    }

    public abstract h M();

    public void M0(byte[] bArr, int i4, int i10) throws IOException {
        K0(com.fasterxml.jackson.core.a.a(), bArr, i4, i10);
    }

    public void M1(Object obj, int i4) throws IOException {
        K1();
        w0(obj);
    }

    public void N0(String str, byte[] bArr) throws IOException {
        V0(str);
        L0(bArr);
    }

    public abstract void N1(j jVar) throws IOException;

    public abstract void O0(boolean z9) throws IOException;

    public void O1(Reader reader, int i4) throws IOException {
        d();
    }

    public void P0(String str, boolean z9) throws IOException {
        V0(str);
        O0(z9);
    }

    public abstract void P1(String str) throws IOException;

    public void Q0(Object obj) throws IOException {
        if (obj == null) {
            W0();
        } else if (obj instanceof byte[]) {
            L0((byte[]) obj);
        } else {
            throw new JsonGenerationException("No native support for writing embedded objects of type " + obj.getClass().getName(), this);
        }
    }

    public abstract void Q1(char[] cArr, int i4, int i10) throws IOException;

    public abstract void R0() throws IOException;

    public void R1(String str, String str2) throws IOException {
        V0(str);
        P1(str2);
    }

    public abstract void S0() throws IOException;

    public abstract void S1(m mVar) throws IOException;

    public void T0(long j4) throws IOException {
        V0(Long.toString(j4));
    }

    public void T1(Object obj) throws IOException {
        throw new JsonGenerationException("No native support for writing Type Ids", this);
    }

    public abstract void U0(j jVar) throws IOException;

    public WritableTypeId U1(WritableTypeId writableTypeId) throws IOException {
        Object obj = writableTypeId.f14224c;
        JsonToken jsonToken = writableTypeId.f14227f;
        if (D()) {
            writableTypeId.f14228g = false;
            T1(obj);
        } else {
            String valueOf = obj instanceof String ? (String) obj : String.valueOf(obj);
            writableTypeId.f14228g = true;
            WritableTypeId.Inclusion inclusion = writableTypeId.f14226e;
            if (jsonToken != JsonToken.START_OBJECT && inclusion.requiresObjectContext()) {
                inclusion = WritableTypeId.Inclusion.WRAPPER_ARRAY;
                writableTypeId.f14226e = inclusion;
            }
            int i4 = a.f13702a[inclusion.ordinal()];
            if (i4 != 1 && i4 != 2) {
                if (i4 == 3) {
                    L1(writableTypeId.f14222a);
                    R1(writableTypeId.f14225d, valueOf);
                    return writableTypeId;
                } else if (i4 != 4) {
                    G1();
                    P1(valueOf);
                } else {
                    K1();
                    V0(valueOf);
                }
            }
        }
        if (jsonToken == JsonToken.START_OBJECT) {
            L1(writableTypeId.f14222a);
        } else if (jsonToken == JsonToken.START_ARRAY) {
            G1();
        }
        return writableTypeId;
    }

    public abstract void V0(String str) throws IOException;

    public WritableTypeId V1(WritableTypeId writableTypeId) throws IOException {
        JsonToken jsonToken = writableTypeId.f14227f;
        if (jsonToken == JsonToken.START_OBJECT) {
            S0();
        } else if (jsonToken == JsonToken.START_ARRAY) {
            R0();
        }
        if (writableTypeId.f14228g) {
            int i4 = a.f13702a[writableTypeId.f14226e.ordinal()];
            if (i4 == 1) {
                Object obj = writableTypeId.f14224c;
                R1(writableTypeId.f14225d, obj instanceof String ? (String) obj : String.valueOf(obj));
            } else if (i4 != 2 && i4 != 3) {
                if (i4 != 5) {
                    S0();
                } else {
                    R0();
                }
            }
        }
        return writableTypeId;
    }

    public Object W() {
        f h02 = h0();
        if (h02 == null) {
            return null;
        }
        return h02.c();
    }

    public abstract void W0() throws IOException;

    public abstract void W1(byte[] bArr, int i4, int i10) throws IOException;

    public abstract int X();

    public void X0(String str) throws IOException {
        V0(str);
        W0();
    }

    public abstract void Y0(double d4) throws IOException;

    public abstract void Z0(float f10) throws IOException;

    protected void a(JsonParser jsonParser) throws IOException {
        int i4 = 1;
        while (true) {
            JsonToken y12 = jsonParser.y1();
            if (y12 == null) {
                return;
            }
            switch (y12.id()) {
                case 1:
                    K1();
                    break;
                case 2:
                    S0();
                    i4--;
                    if (i4 == 0) {
                        return;
                    }
                    continue;
                case 3:
                    G1();
                    break;
                case 4:
                    R0();
                    i4--;
                    if (i4 == 0) {
                        return;
                    }
                    continue;
                case 5:
                    V0(jsonParser.u0());
                    continue;
                case 6:
                    if (jsonParser.j1()) {
                        Q1(jsonParser.T0(), jsonParser.V0(), jsonParser.U0());
                    } else {
                        P1(jsonParser.S0());
                        continue;
                    }
                case 7:
                    JsonParser.NumberType J0 = jsonParser.J0();
                    if (J0 == JsonParser.NumberType.INT) {
                        a1(jsonParser.F0());
                    } else if (J0 == JsonParser.NumberType.BIG_INTEGER) {
                        e1(jsonParser.n0());
                    } else {
                        b1(jsonParser.H0());
                        continue;
                    }
                case 8:
                    JsonParser.NumberType J02 = jsonParser.J0();
                    if (J02 == JsonParser.NumberType.BIG_DECIMAL) {
                        d1(jsonParser.y0());
                    } else if (J02 == JsonParser.NumberType.FLOAT) {
                        Z0(jsonParser.C0());
                    } else {
                        Y0(jsonParser.z0());
                        continue;
                    }
                case 9:
                    O0(true);
                    continue;
                case 10:
                    O0(false);
                    continue;
                case 11:
                    W0();
                    continue;
                case 12:
                    o1(jsonParser.A0());
                    continue;
                default:
                    throw new IllegalStateException("Internal error: unknown current token, " + y12);
            }
            i4++;
        }
    }

    public abstract void a1(int i4) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str) throws JsonGenerationException {
        throw new JsonGenerationException(str, this);
    }

    public int b0() {
        return 0;
    }

    public abstract void b1(long j4) throws IOException;

    public abstract void c1(String str) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        throw new UnsupportedOperationException("Operation not supported by generator of type " + getClass().getName());
    }

    public int d0() {
        return 0;
    }

    public abstract void d1(BigDecimal bigDecimal) throws IOException;

    public abstract void e1(BigInteger bigInteger) throws IOException;

    public void f1(short s9) throws IOException {
        a1(s9);
    }

    @Override // java.io.Flushable
    public abstract void flush() throws IOException;

    public int g0() {
        return -1;
    }

    public void g1(char[] cArr, int i4, int i10) throws IOException {
        c1(new String(cArr, i4, i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h() {
        com.fasterxml.jackson.core.util.l.f();
    }

    public abstract f h0();

    public void h1(String str, double d4) throws IOException {
        V0(str);
        Y0(d4);
    }

    protected final void i(int i4, int i10, int i11) {
        if (i10 < 0 || i10 + i11 > i4) {
            throw new IllegalArgumentException(String.format("invalid argument(s) (offset=%d, length=%d) for input array of %d element", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i4)));
        }
    }

    public void i1(String str, float f10) throws IOException {
        V0(str);
        Z0(f10);
    }

    public abstract boolean isClosed();

    public void j1(String str, int i4) throws IOException {
        V0(str);
        a1(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k(Object obj) throws IOException {
        if (obj == null) {
            W0();
        } else if (obj instanceof String) {
            P1((String) obj);
        } else {
            if (obj instanceof Number) {
                Number number = (Number) obj;
                if (number instanceof Integer) {
                    a1(number.intValue());
                    return;
                } else if (number instanceof Long) {
                    b1(number.longValue());
                    return;
                } else if (number instanceof Double) {
                    Y0(number.doubleValue());
                    return;
                } else if (number instanceof Float) {
                    Z0(number.floatValue());
                    return;
                } else if (number instanceof Short) {
                    f1(number.shortValue());
                    return;
                } else if (number instanceof Byte) {
                    f1(number.byteValue());
                    return;
                } else if (number instanceof BigInteger) {
                    e1((BigInteger) number);
                    return;
                } else if (number instanceof BigDecimal) {
                    d1((BigDecimal) number);
                    return;
                } else if (number instanceof AtomicInteger) {
                    a1(((AtomicInteger) number).get());
                    return;
                } else if (number instanceof AtomicLong) {
                    b1(((AtomicLong) number).get());
                    return;
                }
            } else if (obj instanceof byte[]) {
                L0((byte[]) obj);
                return;
            } else if (obj instanceof Boolean) {
                O0(((Boolean) obj).booleanValue());
                return;
            } else if (obj instanceof AtomicBoolean) {
                O0(((AtomicBoolean) obj).get());
                return;
            }
            throw new IllegalStateException("No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed " + obj.getClass().getName() + ")");
        }
    }

    public void k1(String str, long j4) throws IOException {
        V0(str);
        b1(j4);
    }

    public Object l0() {
        return null;
    }

    public void l1(String str, BigDecimal bigDecimal) throws IOException {
        V0(str);
        d1(bigDecimal);
    }

    public void m1(String str, BigInteger bigInteger) throws IOException {
        V0(str);
        e1(bigInteger);
    }

    public i n0() {
        return this.f13698a;
    }

    public void n1(String str, short s9) throws IOException {
        V0(str);
        f1(s9);
    }

    public c o0() {
        return null;
    }

    public abstract void o1(Object obj) throws IOException;

    public void p(Object obj) {
        w0(obj);
    }

    public com.fasterxml.jackson.core.util.f<StreamWriteCapability> p0() {
        return f13695b;
    }

    public void p1(String str, Object obj) throws IOException {
        V0(str);
        o1(obj);
    }

    public boolean q() {
        return true;
    }

    public abstract boolean q0(Feature feature);

    public void q1(String str) throws IOException {
        V0(str);
        K1();
    }

    public boolean r(c cVar) {
        return false;
    }

    public boolean r0(StreamWriteFeature streamWriteFeature) {
        return q0(streamWriteFeature.mappedFeature());
    }

    public void r1(Object obj) throws IOException {
        throw new JsonGenerationException("No native support for writing Object Ids", this);
    }

    public boolean s() {
        return false;
    }

    public JsonGenerator s0(int i4, int i10) {
        return this;
    }

    public void s1(Object obj) throws IOException {
        throw new JsonGenerationException("No native support for writing Object Ids", this);
    }

    public JsonGenerator t0(int i4, int i10) {
        return x0((i4 & i10) | (X() & (~i10)));
    }

    public void t1(String str) throws IOException {
    }

    public JsonGenerator u0(CharacterEscapes characterEscapes) {
        return this;
    }

    public void u1(Object obj) throws IOException {
        o1(obj);
    }

    public abstract JsonGenerator v0(h hVar);

    public void v1(String str, Object obj) throws IOException {
        p1(str, obj);
    }

    @Override // com.fasterxml.jackson.core.n
    public abstract Version version();

    public void w0(Object obj) {
        f h02 = h0();
        if (h02 != null) {
            h02.p(obj);
        }
    }

    public abstract void w1(char c10) throws IOException;

    @Deprecated
    public abstract JsonGenerator x0(int i4);

    public void x1(j jVar) throws IOException {
        y1(jVar.getValue());
    }

    public boolean y() {
        return false;
    }

    public JsonGenerator y0(int i4) {
        return this;
    }

    public abstract void y1(String str) throws IOException;

    public JsonGenerator z0(i iVar) {
        this.f13698a = iVar;
        return this;
    }

    public abstract void z1(String str, int i4, int i10) throws IOException;
}
