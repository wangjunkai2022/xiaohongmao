package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.exc.InputCoercionException;
import com.fasterxml.jackson.core.f;
import com.fasterxml.jackson.core.io.JsonEOFException;
import com.fasterxml.jackson.core.io.g;
import com.fasterxml.jackson.core.util.l;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: ParserMinimalBase.java */
/* loaded from: classes.dex */
public abstract class c extends JsonParser {
    protected static final int A = 57;
    protected static final int B = 45;
    protected static final int C = 43;
    protected static final int D = 46;
    protected static final int E = 101;
    protected static final int F = 69;
    protected static final char G = 0;
    protected static final byte[] H = new byte[0];
    protected static final int[] I = new int[0];
    protected static final int J = 0;
    protected static final int K = 1;
    protected static final int L = 2;
    protected static final int M = 4;
    protected static final int N = 8;
    protected static final int O = 16;
    protected static final int P = 32;
    protected static final BigInteger Q;
    protected static final BigInteger R;
    protected static final BigInteger S;
    protected static final BigInteger T;
    protected static final double T1 = -2.147483648E9d;
    protected static final BigDecimal U;
    protected static final BigDecimal V;
    protected static final double V1 = 2.147483647E9d;
    protected static final BigDecimal W;

    /* renamed from: b1  reason: collision with root package name */
    protected static final BigDecimal f13790b1;

    /* renamed from: b2  reason: collision with root package name */
    protected static final int f13791b2 = 256;

    /* renamed from: g1  reason: collision with root package name */
    protected static final long f13792g1 = -2147483648L;

    /* renamed from: j  reason: collision with root package name */
    protected static final int f13793j = 9;

    /* renamed from: k  reason: collision with root package name */
    protected static final int f13794k = 10;

    /* renamed from: l  reason: collision with root package name */
    protected static final int f13795l = 13;

    /* renamed from: m  reason: collision with root package name */
    protected static final int f13796m = 32;

    /* renamed from: n  reason: collision with root package name */
    protected static final int f13797n = 91;

    /* renamed from: o  reason: collision with root package name */
    protected static final int f13798o = 93;

    /* renamed from: p  reason: collision with root package name */
    protected static final int f13799p = 123;

    /* renamed from: p1  reason: collision with root package name */
    protected static final long f13800p1 = 2147483647L;

    /* renamed from: q  reason: collision with root package name */
    protected static final int f13801q = 125;

    /* renamed from: r  reason: collision with root package name */
    protected static final int f13802r = 34;

    /* renamed from: s  reason: collision with root package name */
    protected static final int f13803s = 39;

    /* renamed from: t  reason: collision with root package name */
    protected static final int f13804t = 92;

    /* renamed from: u  reason: collision with root package name */
    protected static final int f13805u = 47;

    /* renamed from: v  reason: collision with root package name */
    protected static final int f13806v = 42;

    /* renamed from: w  reason: collision with root package name */
    protected static final int f13807w = 58;

    /* renamed from: x  reason: collision with root package name */
    protected static final int f13808x = 44;

    /* renamed from: x1  reason: collision with root package name */
    protected static final double f13809x1 = -9.223372036854776E18d;

    /* renamed from: y  reason: collision with root package name */
    protected static final int f13810y = 35;

    /* renamed from: y1  reason: collision with root package name */
    protected static final double f13811y1 = 9.223372036854776E18d;

    /* renamed from: z  reason: collision with root package name */
    protected static final int f13812z = 48;

    /* renamed from: h  reason: collision with root package name */
    protected JsonToken f13813h;

    /* renamed from: i  reason: collision with root package name */
    protected JsonToken f13814i;

    static {
        BigInteger valueOf = BigInteger.valueOf(f13792g1);
        Q = valueOf;
        BigInteger valueOf2 = BigInteger.valueOf(f13800p1);
        R = valueOf2;
        BigInteger valueOf3 = BigInteger.valueOf(Long.MIN_VALUE);
        S = valueOf3;
        BigInteger valueOf4 = BigInteger.valueOf(Long.MAX_VALUE);
        T = valueOf4;
        U = new BigDecimal(valueOf3);
        V = new BigDecimal(valueOf4);
        W = new BigDecimal(valueOf);
        f13790b1 = new BigDecimal(valueOf2);
    }

    protected c() {
    }

    @Deprecated
    protected static String V1(byte[] bArr) {
        try {
            return new String(bArr, "US-ASCII");
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Deprecated
    protected static byte[] W1(String str) {
        byte[] bArr = new byte[str.length()];
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            bArr[i4] = (byte) str.charAt(i4);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final String Z1(int i4) {
        char c10 = (char) i4;
        if (Character.isISOControl(c10)) {
            return "(CTRL-CHAR, code " + i4 + ")";
        } else if (i4 > 255) {
            return "'" + c10 + "' (code " + i4 + " / 0x" + Integer.toHexString(i4) + ")";
        } else {
            return "'" + c10 + "' (code " + i4 + ")";
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract void A1(String str);

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken G0() {
        return this.f13814i;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void J() {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != null) {
            this.f13814i = jsonToken;
            this.f13813h = null;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract f N0();

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract String S0() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract char[] T0() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract int U0() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser U1() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != JsonToken.START_OBJECT && jsonToken != JsonToken.START_ARRAY) {
            return this;
        }
        int i4 = 1;
        while (true) {
            JsonToken y12 = y1();
            if (y12 == null) {
                a2();
                return this;
            } else if (y12.isStructStart()) {
                i4++;
            } else if (y12.isStructEnd()) {
                i4--;
                if (i4 == 0) {
                    return this;
                }
            } else if (y12 == JsonToken.NOT_AVAILABLE) {
                f2("Not enough content available for `skipChildren()`: non-blocking parser? (%s)", getClass().getName());
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract int V0() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken W() {
        return this.f13813h;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int X() {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == null) {
            return 0;
        }
        return jsonToken.id();
    }

    protected final JsonParseException X1(String str, Throwable th) {
        return new JsonParseException(this, str, th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Y1(String str, com.fasterxml.jackson.core.util.c cVar, Base64Variant base64Variant) throws IOException {
        try {
            base64Variant.decode(str, cVar);
        } catch (IllegalArgumentException e4) {
            e2(e4.getMessage());
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean Z0(boolean z9) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != null) {
            switch (jsonToken.id()) {
                case 6:
                    String trim = S0().trim();
                    if ("true".equals(trim)) {
                        return true;
                    }
                    if ("false".equals(trim) || b2(trim)) {
                        return false;
                    }
                    break;
                case 7:
                    return F0() != 0;
                case 9:
                    return true;
                case 10:
                case 11:
                    return false;
                case 12:
                    Object A0 = A0();
                    if (A0 instanceof Boolean) {
                        return ((Boolean) A0).booleanValue();
                    }
                    break;
            }
        }
        return z9;
    }

    protected abstract void a2() throws JsonParseException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public double b1(double d4) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != null) {
            switch (jsonToken.id()) {
                case 6:
                    String S0 = S0();
                    if (b2(S0)) {
                        return 0.0d;
                    }
                    return g.c(S0, d4);
                case 7:
                case 8:
                    return z0();
                case 9:
                    return 1.0d;
                case 10:
                case 11:
                    return 0.0d;
                case 12:
                    Object A0 = A0();
                    return A0 instanceof Number ? ((Number) A0).doubleValue() : d4;
                default:
                    return d4;
            }
        }
        return d4;
    }

    protected boolean b2(String str) {
        return "null".equals(str);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int c1() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return d1(0);
        }
        return F0();
    }

    protected String c2(String str) {
        int length = str.length();
        if (length < 1000) {
            return str;
        }
        if (str.startsWith("-")) {
            length--;
        }
        return String.format("[Integer with %d digits]", Integer.valueOf(length));
    }

    @Override // com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public int d1(int i4) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return F0();
        }
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 6) {
                switch (id) {
                    case 9:
                        return 1;
                    case 10:
                    case 11:
                        return 0;
                    case 12:
                        Object A0 = A0();
                        return A0 instanceof Number ? ((Number) A0).intValue() : i4;
                    default:
                        return i4;
                }
            }
            String S0 = S0();
            if (b2(S0)) {
                return 0;
            }
            return g.d(S0, i4);
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String d2(String str) {
        int length = str.length();
        if (length < 1000) {
            return str;
        }
        if (str.startsWith("-")) {
            length--;
        }
        return String.format("[number with %d characters]", Integer.valueOf(length));
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long e1() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != JsonToken.VALUE_NUMBER_INT && jsonToken != JsonToken.VALUE_NUMBER_FLOAT) {
            return f1(0L);
        }
        return H0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e2(String str) throws JsonParseException {
        throw k(str);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long f1(long j4) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return H0();
        }
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 6) {
                switch (id) {
                    case 9:
                        return 1L;
                    case 10:
                    case 11:
                        return 0L;
                    case 12:
                        Object A0 = A0();
                        return A0 instanceof Number ? ((Number) A0).longValue() : j4;
                    default:
                        return j4;
                }
            }
            String S0 = S0();
            if (b2(S0)) {
                return 0L;
            }
            return g.e(S0, j4);
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f2(String str, Object obj) throws JsonParseException {
        throw k(String.format(str, obj));
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String g1() throws IOException {
        return h1(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g2(String str, Object obj, Object obj2) throws JsonParseException {
        throw k(String.format(str, obj, obj2));
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String h1(String str) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            return S0();
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            return u0();
        }
        return (jsonToken == null || jsonToken == JsonToken.VALUE_NULL || !jsonToken.isScalarValue()) ? str : S0();
    }

    protected void h2(String str, JsonToken jsonToken, Class<?> cls) throws InputCoercionException {
        throw new InputCoercionException(this, str, jsonToken, cls);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean i1() {
        return this.f13813h != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i2() throws JsonParseException {
        k2(" in " + this.f13813h, this.f13813h);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract boolean isClosed();

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract boolean j1();

    @Deprecated
    protected void j2(String str) throws JsonParseException {
        throw new JsonEOFException(this, null, "Unexpected end-of-input" + str);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean k1(JsonToken jsonToken) {
        return this.f13813h == jsonToken;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k2(String str, JsonToken jsonToken) throws JsonParseException {
        throw new JsonEOFException(this, jsonToken, "Unexpected end-of-input" + str);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean l1(int i4) {
        JsonToken jsonToken = this.f13813h;
        return jsonToken == null ? i4 == 0 : jsonToken.id() == i4;
    }

    @Deprecated
    protected void l2() throws JsonParseException {
        j2(" in a value");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m2(JsonToken jsonToken) throws JsonParseException {
        String str;
        if (jsonToken == JsonToken.VALUE_STRING) {
            str = " in a String value";
        } else {
            str = (jsonToken == JsonToken.VALUE_NUMBER_INT || jsonToken == JsonToken.VALUE_NUMBER_FLOAT) ? " in a Number value" : " in a value";
        }
        k2(str, jsonToken);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n2(int i4) throws JsonParseException {
        o2(i4, "Expected space separating root-level values");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean o1() {
        return this.f13813h == JsonToken.VALUE_NUMBER_INT;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void o2(int i4, String str) throws JsonParseException {
        if (i4 < 0) {
            i2();
        }
        String format = String.format("Unexpected character (%s)", Z1(i4));
        if (str != null) {
            format = format + ": " + str;
        }
        e2(format);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract byte[] p0(Base64Variant base64Variant) throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean p1() {
        return this.f13813h == JsonToken.START_ARRAY;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void p2() {
        l.f();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean q1() {
        return this.f13813h == JsonToken.START_OBJECT;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q2(int i4) throws JsonParseException {
        e2("Illegal character (" + Z1((char) i4) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void r2(String str, Throwable th) throws JsonParseException {
        throw X1(str, th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void s2(String str) throws JsonParseException {
        e2("Invalid numeric value: " + str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void t2() throws IOException {
        u2(S0());
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract String u0() throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void u2(String str) throws IOException {
        v2(str, W());
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken v0() {
        return this.f13813h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void v2(String str, JsonToken jsonToken) throws IOException {
        h2(String.format("Numeric value (%s) out of range of int (%d - %s)", c2(str), Integer.MIN_VALUE, Integer.MAX_VALUE), jsonToken, Integer.TYPE);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    @Deprecated
    public int w0() {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == null) {
            return 0;
        }
        return jsonToken.id();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void w2() throws IOException {
        x2(S0());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void x2(String str) throws IOException {
        y2(str, W());
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract JsonToken y1() throws IOException;

    protected void y2(String str, JsonToken jsonToken) throws IOException {
        h2(String.format("Numeric value (%s) out of range of long (%d - %s)", c2(str), Long.MIN_VALUE, Long.MAX_VALUE), jsonToken, Long.TYPE);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken z1() throws IOException {
        JsonToken y12 = y1();
        return y12 == JsonToken.FIELD_NAME ? y1() : y12;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z2(int i4, String str) throws JsonParseException {
        String format = String.format("Unexpected character (%s) in numeric value", Z1(i4));
        if (str != null) {
            format = format + ": " + str;
        }
        e2(format);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(int i4) {
        super(i4);
    }
}
