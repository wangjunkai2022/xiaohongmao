package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.exc.InputCoercionException;
import com.fasterxml.jackson.core.util.RequestPayload;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class JsonParser implements Closeable, n {

    /* renamed from: c  reason: collision with root package name */
    private static final int f13711c = -128;

    /* renamed from: d  reason: collision with root package name */
    private static final int f13712d = 255;

    /* renamed from: e  reason: collision with root package name */
    private static final int f13713e = -32768;

    /* renamed from: f  reason: collision with root package name */
    private static final int f13714f = 32767;

    /* renamed from: g  reason: collision with root package name */
    protected static final com.fasterxml.jackson.core.util.f<StreamReadCapability> f13715g = com.fasterxml.jackson.core.util.f.c(StreamReadCapability.values());

    /* renamed from: a  reason: collision with root package name */
    protected int f13716a;

    /* renamed from: b  reason: collision with root package name */
    protected transient RequestPayload f13717b;

    /* loaded from: classes.dex */
    public enum Feature {
        AUTO_CLOSE_SOURCE(true),
        ALLOW_COMMENTS(false),
        ALLOW_YAML_COMMENTS(false),
        ALLOW_UNQUOTED_FIELD_NAMES(false),
        ALLOW_SINGLE_QUOTES(false),
        ALLOW_UNQUOTED_CONTROL_CHARS(false),
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
        ALLOW_NUMERIC_LEADING_ZEROS(false),
        ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS(false),
        ALLOW_NON_NUMERIC_NUMBERS(false),
        ALLOW_MISSING_VALUES(false),
        ALLOW_TRAILING_COMMA(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNDEFINED(false),
        INCLUDE_SOURCE_IN_LOCATION(true);
        

        /* renamed from: a  reason: collision with root package name */
        private final boolean f13719a;

        /* renamed from: b  reason: collision with root package name */
        private final int f13720b = 1 << ordinal();

        Feature(boolean z9) {
            this.f13719a = z9;
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
            return this.f13719a;
        }

        public boolean enabledIn(int i4) {
            return (i4 & this.f13720b) != 0;
        }

        public int getMask() {
            return this.f13720b;
        }
    }

    /* loaded from: classes.dex */
    public enum NumberType {
        INT,
        LONG,
        BIG_INTEGER,
        FLOAT,
        DOUBLE,
        BIG_DECIMAL
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonParser() {
    }

    protected void A() {
        throw new UnsupportedOperationException("Operation not supported by parser of type " + getClass().getName());
    }

    public Object A0() throws IOException {
        return null;
    }

    public abstract void A1(String str);

    public int B0() {
        return this.f13716a;
    }

    public JsonParser B1(int i4, int i10) {
        return this;
    }

    public abstract float C0() throws IOException;

    public JsonParser C1(int i4, int i10) {
        return P1((i4 & i10) | (this.f13716a & (~i10)));
    }

    public void D(Object obj) {
        O1(obj);
    }

    public int D0() {
        return 0;
    }

    public int D1(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        A();
        return 0;
    }

    public boolean E() {
        return false;
    }

    public Object E0() {
        return null;
    }

    public int E1(OutputStream outputStream) throws IOException {
        return D1(a.a(), outputStream);
    }

    public abstract int F0() throws IOException;

    public <T> T F1(com.fasterxml.jackson.core.type.b<?> bVar) throws IOException {
        return (T) i().readValue(this, bVar);
    }

    public boolean G() {
        return false;
    }

    public abstract JsonToken G0();

    public <T> T G1(Class<T> cls) throws IOException {
        return (T) i().readValue(this, cls);
    }

    public boolean H() {
        return false;
    }

    public abstract long H0() throws IOException;

    public <T extends m> T H1() throws IOException {
        return (T) i().readTree(this);
    }

    public boolean I(c cVar) {
        return false;
    }

    public b2.c I0() {
        return null;
    }

    public <T> Iterator<T> I1(com.fasterxml.jackson.core.type.b<T> bVar) throws IOException {
        return i().readValues(this, bVar);
    }

    public abstract void J();

    public abstract NumberType J0() throws IOException;

    public <T> Iterator<T> J1(Class<T> cls) throws IOException {
        return i().readValues(this, cls);
    }

    public JsonParser K(Feature feature, boolean z9) {
        if (z9) {
            h0(feature);
        } else {
            g0(feature);
        }
        return this;
    }

    public abstract Number K0() throws IOException;

    public int K1(OutputStream outputStream) throws IOException {
        return -1;
    }

    public JsonLocation L() {
        return t0();
    }

    public Number L0() throws IOException {
        return K0();
    }

    public int L1(Writer writer) throws IOException {
        return -1;
    }

    public String M() throws IOException {
        return u0();
    }

    public Object M0() throws IOException {
        return null;
    }

    public boolean M1() {
        return false;
    }

    public abstract f N0();

    public abstract void N1(h hVar);

    public com.fasterxml.jackson.core.util.f<StreamReadCapability> O0() {
        return f13715g;
    }

    public void O1(Object obj) {
        f N0 = N0();
        if (N0 != null) {
            N0.p(obj);
        }
    }

    public c P0() {
        return null;
    }

    @Deprecated
    public JsonParser P1(int i4) {
        this.f13716a = i4;
        return this;
    }

    public short Q0() throws IOException {
        int F0 = F0();
        if (F0 < f13713e || F0 > f13714f) {
            throw new InputCoercionException(this, String.format("Numeric value (%s) out of range of Java short", S0()), JsonToken.VALUE_NUMBER_INT, Short.TYPE);
        }
        return (short) F0;
    }

    public void Q1(RequestPayload requestPayload) {
        this.f13717b = requestPayload;
    }

    public int R0(Writer writer) throws IOException, UnsupportedOperationException {
        String S0 = S0();
        if (S0 == null) {
            return 0;
        }
        writer.write(S0);
        return S0.length();
    }

    public void R1(String str) {
        this.f13717b = str == null ? null : new RequestPayload(str);
    }

    public abstract String S0() throws IOException;

    public void S1(byte[] bArr, String str) {
        this.f13717b = bArr == null ? null : new RequestPayload(bArr, str);
    }

    public abstract char[] T0() throws IOException;

    public void T1(c cVar) {
        throw new UnsupportedOperationException("Parser of type " + getClass().getName() + " does not support schema of type '" + cVar.a() + "'");
    }

    public abstract int U0() throws IOException;

    public abstract JsonParser U1() throws IOException;

    public abstract int V0() throws IOException;

    public JsonToken W() {
        return v0();
    }

    public abstract JsonLocation W0();

    public int X() {
        return w0();
    }

    public Object X0() throws IOException {
        return null;
    }

    public boolean Y0() throws IOException {
        return Z0(false);
    }

    public boolean Z0(boolean z9) throws IOException {
        return z9;
    }

    public double a1() throws IOException {
        return b1(0.0d);
    }

    public JsonLocation b0() {
        return W0();
    }

    public double b1(double d4) throws IOException {
        return d4;
    }

    public int c1() throws IOException {
        return d1(0);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public Object d0() {
        return x0();
    }

    public int d1(int i4) throws IOException {
        return i4;
    }

    public long e1() throws IOException {
        return f1(0L);
    }

    public long f1(long j4) throws IOException {
        return j4;
    }

    public JsonParser g0(Feature feature) {
        this.f13716a = (~feature.getMask()) & this.f13716a;
        return this;
    }

    public String g1() throws IOException {
        return h1(null);
    }

    public JsonParser h0(Feature feature) {
        this.f13716a = feature.getMask() | this.f13716a;
        return this;
    }

    public abstract String h1(String str) throws IOException;

    protected h i() {
        h s02 = s0();
        if (s02 != null) {
            return s02;
        }
        throw new IllegalStateException("No ObjectCodec defined for parser, needed for deserialization");
    }

    public abstract boolean i1();

    public abstract boolean isClosed();

    public abstract boolean j1();

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonParseException k(String str) {
        return new JsonParseException(this, str).withRequestPayload(this.f13717b);
    }

    public abstract boolean k1(JsonToken jsonToken);

    public void l0() throws IOException {
    }

    public abstract boolean l1(int i4);

    public boolean m1(Feature feature) {
        return feature.enabledIn(this.f13716a);
    }

    public abstract BigInteger n0() throws IOException;

    public boolean n1(StreamReadFeature streamReadFeature) {
        return streamReadFeature.mappedFeature().enabledIn(this.f13716a);
    }

    public byte[] o0() throws IOException {
        return p0(a.a());
    }

    public boolean o1() {
        return W() == JsonToken.VALUE_NUMBER_INT;
    }

    protected JsonParseException p(String str) {
        return k(str);
    }

    public abstract byte[] p0(Base64Variant base64Variant) throws IOException;

    public boolean p1() {
        return W() == JsonToken.START_ARRAY;
    }

    protected JsonParseException q(String str, Object obj) {
        return p(String.format(str, obj));
    }

    public boolean q0() throws IOException {
        JsonToken W = W();
        if (W == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (W == JsonToken.VALUE_FALSE) {
            return false;
        }
        throw new JsonParseException(this, String.format("Current token (%s) not of boolean type", W)).withRequestPayload(this.f13717b);
    }

    public boolean q1() {
        return W() == JsonToken.START_OBJECT;
    }

    protected JsonParseException r(String str, Object obj, Object obj2) {
        return p(String.format(str, obj, obj2));
    }

    public byte r0() throws IOException {
        int F0 = F0();
        if (F0 < f13711c || F0 > 255) {
            throw new InputCoercionException(this, String.format("Numeric value (%s) out of range of Java byte", S0()), JsonToken.VALUE_NUMBER_INT, Byte.TYPE);
        }
        return (byte) F0;
    }

    public boolean r1() throws IOException {
        return false;
    }

    protected JsonParseException s(String str, Object obj, Object obj2, Object obj3) {
        return p(String.format(str, obj, obj2, obj3));
    }

    public abstract h s0();

    public Boolean s1() throws IOException {
        JsonToken y12 = y1();
        if (y12 == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (y12 == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        return null;
    }

    public abstract JsonLocation t0();

    public String t1() throws IOException {
        if (y1() == JsonToken.FIELD_NAME) {
            return u0();
        }
        return null;
    }

    public abstract String u0() throws IOException;

    public boolean u1(j jVar) throws IOException {
        return y1() == JsonToken.FIELD_NAME && jVar.getValue().equals(u0());
    }

    public abstract JsonToken v0();

    public int v1(int i4) throws IOException {
        return y1() == JsonToken.VALUE_NUMBER_INT ? F0() : i4;
    }

    @Override // com.fasterxml.jackson.core.n
    public abstract Version version();

    @Deprecated
    public abstract int w0();

    public long w1(long j4) throws IOException {
        return y1() == JsonToken.VALUE_NUMBER_INT ? H0() : j4;
    }

    public Object x0() {
        f N0 = N0();
        if (N0 == null) {
            return null;
        }
        return N0.c();
    }

    public String x1() throws IOException {
        if (y1() == JsonToken.VALUE_STRING) {
            return S0();
        }
        return null;
    }

    protected JsonParseException y(String str, Throwable th) {
        JsonParseException jsonParseException = new JsonParseException(this, str, th);
        RequestPayload requestPayload = this.f13717b;
        return requestPayload != null ? jsonParseException.withRequestPayload(requestPayload) : jsonParseException;
    }

    public abstract BigDecimal y0() throws IOException;

    public abstract JsonToken y1() throws IOException;

    public abstract double z0() throws IOException;

    public abstract JsonToken z1() throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonParser(int i4) {
        this.f13716a = i4;
    }
}
