package com.fasterxml.jackson.core.json.async;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.h;
import com.fasterxml.jackson.core.io.d;
import com.fasterxml.jackson.core.util.c;
import com.fasterxml.jackson.core.util.f;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* compiled from: NonBlockingJsonParserBase.java */
/* loaded from: classes.dex */
public abstract class b extends com.fasterxml.jackson.core.base.b {
    protected static final int A3 = 1;
    protected static final int B3 = 2;
    protected static final int C3 = 3;
    protected static final int D3 = 4;
    protected static final int E3 = 5;
    protected static final int F3 = 7;
    protected static final int G3 = 8;
    protected static final int H3 = 9;
    protected static final int I3 = 10;
    protected static final int J3 = 12;
    protected static final int K3 = 13;
    protected static final int L3 = 14;
    protected static final int M3 = 15;
    protected static final int N3 = 16;
    protected static final int O3 = 17;
    protected static final int P3 = 18;
    protected static final int Q3 = 19;
    protected static final int R3 = 23;
    protected static final int S3 = 24;
    protected static final int T3 = 25;
    protected static final int U3 = 26;
    protected static final int V3 = 30;
    protected static final int W3 = 31;
    protected static final int X3 = 32;
    protected static final int Y3 = 40;
    protected static final int Z3 = 41;

    /* renamed from: a4  reason: collision with root package name */
    protected static final int f14019a4 = 42;

    /* renamed from: b4  reason: collision with root package name */
    protected static final int f14020b4 = 43;

    /* renamed from: c4  reason: collision with root package name */
    protected static final int f14021c4 = 44;
    protected static final int d4 = 45;
    protected static final int e4 = 50;

    /* renamed from: f4  reason: collision with root package name */
    protected static final int f14022f4 = 51;
    protected static final int g4 = 52;
    protected static final int h4 = 53;
    protected static final int i4 = 54;
    protected static final int j4 = 55;

    /* renamed from: k4  reason: collision with root package name */
    protected static final int f14023k4 = 0;

    /* renamed from: l4  reason: collision with root package name */
    protected static final int f14024l4 = 1;

    /* renamed from: m4  reason: collision with root package name */
    protected static final int f14025m4 = 2;

    /* renamed from: n4  reason: collision with root package name */
    protected static final int f14026n4 = 3;

    /* renamed from: o4  reason: collision with root package name */
    protected static final String[] f14027o4 = {"NaN", "Infinity", "+Infinity", "-Infinity"};

    /* renamed from: p4  reason: collision with root package name */
    protected static final double[] f14028p4 = {Double.NaN, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.NEGATIVE_INFINITY};

    /* renamed from: s3  reason: collision with root package name */
    protected static final int f14029s3 = 0;

    /* renamed from: t3  reason: collision with root package name */
    protected static final int f14030t3 = 1;

    /* renamed from: u3  reason: collision with root package name */
    protected static final int f14031u3 = 2;

    /* renamed from: v3  reason: collision with root package name */
    protected static final int f14032v3 = 3;

    /* renamed from: w3  reason: collision with root package name */
    protected static final int f14033w3 = 4;

    /* renamed from: x3  reason: collision with root package name */
    protected static final int f14034x3 = 5;

    /* renamed from: y3  reason: collision with root package name */
    protected static final int f14035y3 = 6;

    /* renamed from: z3  reason: collision with root package name */
    protected static final int f14036z3 = 7;

    /* renamed from: c3  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.sym.a f14037c3;

    /* renamed from: d3  reason: collision with root package name */
    protected int[] f14038d3;

    /* renamed from: e3  reason: collision with root package name */
    protected int f14039e3;

    /* renamed from: f3  reason: collision with root package name */
    protected int f14040f3;

    /* renamed from: g3  reason: collision with root package name */
    protected int f14041g3;

    /* renamed from: h3  reason: collision with root package name */
    protected int f14042h3;

    /* renamed from: i3  reason: collision with root package name */
    protected int f14043i3;

    /* renamed from: j3  reason: collision with root package name */
    protected int f14044j3;

    /* renamed from: k3  reason: collision with root package name */
    protected int f14045k3;

    /* renamed from: l3  reason: collision with root package name */
    protected int f14046l3;

    /* renamed from: m3  reason: collision with root package name */
    protected int f14047m3;

    /* renamed from: n3  reason: collision with root package name */
    protected int f14048n3;

    /* renamed from: o3  reason: collision with root package name */
    protected boolean f14049o3;

    /* renamed from: p3  reason: collision with root package name */
    protected int f14050p3;

    /* renamed from: q3  reason: collision with root package name */
    protected int f14051q3;

    /* renamed from: r3  reason: collision with root package name */
    protected int f14052r3;

    public b(d dVar, int i10, com.fasterxml.jackson.core.sym.a aVar) {
        super(dVar, i10);
        this.f14038d3 = new int[8];
        this.f14049o3 = false;
        this.f14051q3 = 0;
        this.f14052r3 = 1;
        this.f14037c3 = aVar;
        this.f13813h = null;
        this.f14045k3 = 0;
        this.f14046l3 = 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final int y3(int i10, int i11) {
        return i11 == 4 ? i10 : i10 | ((-1) << (i11 << 3));
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object A0() throws IOException {
        if (this.f13813h == JsonToken.VALUE_EMBEDDED_OBJECT) {
            return this.Q2;
        }
        return null;
    }

    protected void A3(int i10) throws JsonParseException {
        e2("Invalid UTF-8 start byte 0x" + Integer.toHexString(i10));
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected void B2() throws IOException {
        this.f14051q3 = 0;
        this.f13789y2 = 0;
    }

    protected void B3(int i10) throws JsonParseException {
        e2("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void C3(int i10, int i11) throws JsonParseException {
        this.f13788x2 = i11;
        B3(i10);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int D1(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        byte[] p02 = p0(base64Variant);
        outputStream.write(p02);
        return p02.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken D3() throws IOException {
        this.K2 = this.K2.u(-1, -1);
        this.f14045k3 = 5;
        this.f14046l3 = 6;
        JsonToken jsonToken = JsonToken.START_ARRAY;
        this.f13813h = jsonToken;
        return jsonToken;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean E() {
        return true;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object E0() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken E3() throws IOException {
        this.K2 = this.K2.v(-1, -1);
        this.f14045k3 = 2;
        this.f14046l3 = 3;
        JsonToken jsonToken = JsonToken.START_OBJECT;
        this.f13813h = jsonToken;
        return jsonToken;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void F3() {
        this.I2 = Math.max(this.F2, this.f14052r3);
        int i10 = this.f13788x2;
        this.J2 = i10 - this.G2;
        this.H2 = this.E2 + (i10 - this.f14051q3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken G3(JsonToken jsonToken) throws IOException {
        this.f14045k3 = this.f14046l3;
        this.f13813h = jsonToken;
        return jsonToken;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken H3(int i10, String str) throws IOException {
        this.M2.G(str);
        this.Y2 = str.length();
        this.R2 = 1;
        this.S2 = i10;
        this.f14045k3 = this.f14046l3;
        JsonToken jsonToken = JsonToken.VALUE_NUMBER_INT;
        this.f13813h = jsonToken;
        return jsonToken;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken I3(int i10) throws IOException {
        String str = f14027o4[i10];
        this.M2.G(str);
        if (!m1(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
            f2("Non-standard token '%s': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow", str);
        }
        this.Y2 = 0;
        this.R2 = 8;
        this.U2 = f14028p4[i10];
        this.f14045k3 = this.f14046l3;
        JsonToken jsonToken = JsonToken.VALUE_NUMBER_FLOAT;
        this.f13813h = jsonToken;
        return jsonToken;
    }

    protected com.fasterxml.jackson.core.sym.a J3() {
        return this.f14037c3;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public abstract int K1(OutputStream outputStream) throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public void N1(h hVar) {
        throw new UnsupportedOperationException("Can not use ObjectMapper with non-blocking parser");
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public f<StreamReadCapability> O0() {
        return com.fasterxml.jackson.core.base.b.f13784b3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.core.base.b
    public void Q2() throws IOException {
        super.Q2();
        this.f14037c3.N();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int R0(Writer writer) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            return this.M2.m(writer);
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            String b10 = this.K2.b();
            writer.write(b10);
            return b10.length();
        } else if (jsonToken != null) {
            if (jsonToken.isNumeric()) {
                return this.M2.m(writer);
            }
            if (jsonToken == JsonToken.NOT_AVAILABLE) {
                e2("Current token not available: can not call this method");
            }
            char[] asCharArray = jsonToken.asCharArray();
            writer.write(asCharArray);
            return asCharArray.length;
        } else {
            return 0;
        }
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String S0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            return this.M2.l();
        }
        return w3(jsonToken);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public char[] T0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 5) {
                if (id != 6 && id != 7 && id != 8) {
                    return this.f13813h.asCharArray();
                }
                return this.M2.x();
            }
            if (!this.O2) {
                String b10 = this.K2.b();
                int length = b10.length();
                char[] cArr = this.N2;
                if (cArr == null) {
                    this.N2 = this.f13786g2.g(length);
                } else if (cArr.length < length) {
                    this.N2 = new char[length];
                }
                b10.getChars(0, length, this.N2, 0);
                this.O2 = true;
            }
            return this.N2;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public int U0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 5) {
                if (id != 6 && id != 7 && id != 8) {
                    return this.f13813h.asCharArray().length;
                }
                return this.M2.K();
            }
            return this.K2.b().length();
        }
        return 0;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public int V0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id == 6 || id == 7 || id == 8) {
                return this.M2.y();
            }
            return 0;
        }
        return 0;
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.JsonParser
    public JsonLocation W0() {
        return new JsonLocation(C2(), this.H2, -1L, this.I2, this.J2);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String g1() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            return this.M2.l();
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            return u0();
        }
        return super.h1(null);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String h1(String str) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            return this.M2.l();
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            return u0();
        }
        return super.h1(str);
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public boolean j1() {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            return this.M2.z();
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            return this.O2;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String o3(int[] r17, int r18, int r19) throws com.fasterxml.jackson.core.JsonParseException {
        /*
            Method dump skipped, instructions count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.async.b.o3(int[], int, int):java.lang.String");
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public byte[] p0(Base64Variant base64Variant) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != JsonToken.VALUE_STRING) {
            f2("Current token (%s) not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary", jsonToken);
        }
        if (this.Q2 == null) {
            c I2 = I2();
            Y1(S0(), I2, base64Variant);
            this.Q2 = I2.E();
        }
        return this.Q2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken p3() throws IOException {
        int i10;
        if (!this.K2.k()) {
            R2(93, '}');
        }
        com.fasterxml.jackson.core.json.d e10 = this.K2.e();
        this.K2 = e10;
        if (e10.l()) {
            i10 = 3;
        } else {
            i10 = e10.k() ? 6 : 1;
        }
        this.f14045k3 = i10;
        this.f14046l3 = i10;
        JsonToken jsonToken = JsonToken.END_ARRAY;
        this.f13813h = jsonToken;
        return jsonToken;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken q3() throws IOException {
        int i10;
        if (!this.K2.l()) {
            R2(125, ']');
        }
        com.fasterxml.jackson.core.json.d e10 = this.K2.e();
        this.K2 = e10;
        if (e10.l()) {
            i10 = 3;
        } else {
            i10 = e10.k() ? 6 : 1;
        }
        this.f14045k3 = i10;
        this.f14046l3 = i10;
        JsonToken jsonToken = JsonToken.END_OBJECT;
        this.f13813h = jsonToken;
        return jsonToken;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken r3() throws IOException {
        this.f14045k3 = 7;
        if (!this.K2.m()) {
            a2();
        }
        close();
        this.f13813h = null;
        return null;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public h s0() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken s3(String str) throws IOException {
        this.f14045k3 = 4;
        this.K2.C(str);
        JsonToken jsonToken = JsonToken.FIELD_NAME;
        this.f13813h = jsonToken;
        return jsonToken;
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.JsonParser
    public JsonLocation t0() {
        int i10 = (this.f13788x2 - this.G2) + 1;
        return new JsonLocation(C2(), this.E2 + (this.f13788x2 - this.f14051q3), -1L, Math.max(this.F2, this.f14052r3), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String t3(int i10, int i11) throws JsonParseException {
        int y32 = y3(i10, i11);
        String A = this.f14037c3.A(y32);
        if (A != null) {
            return A;
        }
        int[] iArr = this.f14038d3;
        iArr[0] = y32;
        return o3(iArr, 1, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String u3(int i10, int i11, int i12) throws JsonParseException {
        int y32 = y3(i11, i12);
        String B = this.f14037c3.B(i10, y32);
        if (B != null) {
            return B;
        }
        int[] iArr = this.f14038d3;
        iArr[0] = i10;
        iArr[1] = y32;
        return o3(iArr, 2, i12);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String v3(int i10, int i11, int i12, int i13) throws JsonParseException {
        int y32 = y3(i12, i13);
        String C = this.f14037c3.C(i10, i11, y32);
        if (C != null) {
            return C;
        }
        int[] iArr = this.f14038d3;
        iArr[0] = i10;
        iArr[1] = i11;
        iArr[2] = y3(y32, i13);
        return o3(iArr, 3, i13);
    }

    protected final String w3(JsonToken jsonToken) {
        int id;
        if (jsonToken == null || (id = jsonToken.id()) == -1) {
            return null;
        }
        if (id != 5) {
            if (id != 6 && id != 7 && id != 8) {
                return jsonToken.asString();
            }
            return this.M2.l();
        }
        return this.K2.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String x3(int i10) {
        return f14027o4[i10];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z3(int i10) throws JsonParseException {
        if (i10 < 32) {
            q2(i10);
        }
        A3(i10);
    }
}
