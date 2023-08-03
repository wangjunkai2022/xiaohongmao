package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.io.ContentReference;
import com.fasterxml.jackson.core.io.g;
import com.fasterxml.jackson.core.json.d;
import com.fasterxml.jackson.core.util.f;
import com.fasterxml.jackson.core.util.j;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;

/* compiled from: ParserBase.java */
/* loaded from: classes.dex */
public abstract class b extends c {

    /* renamed from: b3  reason: collision with root package name */
    protected static final f<StreamReadCapability> f13784b3 = JsonParser.f13715g;
    protected long E2;
    protected int F2;
    protected int G2;
    protected long H2;
    protected int I2;
    protected int J2;
    protected d K2;
    protected JsonToken L2;
    protected final j M2;
    protected char[] N2;
    protected boolean O2;
    protected com.fasterxml.jackson.core.util.c P2;
    protected byte[] Q2;
    protected int R2;
    protected int S2;
    protected long T2;
    protected double U2;
    protected BigInteger V2;
    protected BigDecimal W2;
    protected boolean X2;
    protected int Y2;
    protected int Z2;

    /* renamed from: a3  reason: collision with root package name */
    protected int f13785a3;

    /* renamed from: g2  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.io.d f13786g2;

    /* renamed from: p2  reason: collision with root package name */
    protected boolean f13787p2;

    /* renamed from: x2  reason: collision with root package name */
    protected int f13788x2;

    /* renamed from: y2  reason: collision with root package name */
    protected int f13789y2;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(com.fasterxml.jackson.core.io.d dVar, int i4) {
        super(i4);
        this.F2 = 1;
        this.I2 = 1;
        this.R2 = 0;
        this.f13786g2 = dVar;
        this.M2 = dVar.n();
        this.K2 = d.x(JsonParser.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i4) ? com.fasterxml.jackson.core.json.b.g(this) : null);
    }

    private void O2(int i4) throws IOException {
        try {
            if (i4 == 16) {
                this.W2 = this.M2.h();
                this.R2 = 16;
            } else {
                this.U2 = this.M2.i();
                this.R2 = 8;
            }
        } catch (NumberFormatException e4) {
            r2("Malformed numeric value (" + d2(this.M2.l()) + ")", e4);
        }
    }

    private void P2(int i4) throws IOException {
        String l10 = this.M2.l();
        try {
            int i10 = this.Y2;
            char[] x9 = this.M2.x();
            int y9 = this.M2.y();
            boolean z9 = this.X2;
            if (z9) {
                y9++;
            }
            if (g.b(x9, y9, i10, z9)) {
                this.T2 = Long.parseLong(l10);
                this.R2 = 2;
                return;
            }
            if (i4 == 1 || i4 == 2) {
                S2(i4, l10);
            }
            if (i4 != 8 && i4 != 32) {
                this.V2 = new BigInteger(l10);
                this.R2 = 4;
                return;
            }
            this.U2 = g.i(l10);
            this.R2 = 8;
        } catch (NumberFormatException e4) {
            r2("Malformed numeric value (" + d2(l10) + ")", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int[] f3(int[] iArr, int i4) {
        if (iArr == null) {
            return new int[i4];
        }
        return Arrays.copyOf(iArr, iArr.length + i4);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public void A1(String str) {
        d dVar = this.K2;
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) {
            dVar = dVar.e();
        }
        try {
            dVar.C(str);
        } catch (IOException e4) {
            throw new IllegalStateException(e4);
        }
    }

    protected void A2(int i4, int i10) {
        int mask = JsonParser.Feature.STRICT_DUPLICATE_DETECTION.getMask();
        if ((i10 & mask) == 0 || (i4 & mask) == 0) {
            return;
        }
        if (this.K2.z() == null) {
            this.K2 = this.K2.D(com.fasterxml.jackson.core.json.b.g(this));
        } else {
            this.K2 = this.K2.D(null);
        }
    }

    protected abstract void B2() throws IOException;

    @Override // com.fasterxml.jackson.core.JsonParser
    public float C0() throws IOException {
        return (float) z0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser C1(int i4, int i10) {
        int i11 = this.f13716a;
        int i12 = (i4 & i10) | ((~i10) & i11);
        int i13 = i11 ^ i12;
        if (i13 != 0) {
            this.f13716a = i12;
            A2(i12, i13);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ContentReference C2() {
        if (JsonParser.Feature.INCLUDE_SOURCE_IN_LOCATION.enabledIn(this.f13716a)) {
            return this.f13786g2.o();
        }
        return ContentReference.unknown();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int D2(Base64Variant base64Variant, char c10, int i4) throws IOException {
        if (c10 == '\\') {
            char F2 = F2();
            if (F2 > ' ' || i4 != 0) {
                int decodeBase64Char = base64Variant.decodeBase64Char(F2);
                if (decodeBase64Char >= 0 || (decodeBase64Char == -2 && i4 >= 2)) {
                    return decodeBase64Char;
                }
                throw i3(base64Variant, F2, i4);
            }
            return -1;
        }
        throw i3(base64Variant, c10, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int E2(Base64Variant base64Variant, int i4, int i10) throws IOException {
        if (i4 == 92) {
            char F2 = F2();
            if (F2 > ' ' || i10 != 0) {
                int decodeBase64Char = base64Variant.decodeBase64Char((int) F2);
                if (decodeBase64Char >= 0 || decodeBase64Char == -2) {
                    return decodeBase64Char;
                }
                throw i3(base64Variant, F2, i10);
            }
            return -1;
        }
        throw i3(base64Variant, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int F0() throws IOException {
        int i4 = this.R2;
        if ((i4 & 1) == 0) {
            if (i4 == 0) {
                return M2();
            }
            if ((i4 & 1) == 0) {
                Z2();
            }
        }
        return this.S2;
    }

    protected char F2() throws IOException {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int G2() throws JsonParseException {
        a2();
        return -1;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long H0() throws IOException {
        int i4 = this.R2;
        if ((i4 & 2) == 0) {
            if (i4 == 0) {
                N2(2);
            }
            if ((this.R2 & 2) == 0) {
                a3();
            }
        }
        return this.T2;
    }

    protected void H2() throws IOException {
    }

    public com.fasterxml.jackson.core.util.c I2() {
        com.fasterxml.jackson.core.util.c cVar = this.P2;
        if (cVar == null) {
            this.P2 = new com.fasterxml.jackson.core.util.c();
        } else {
            cVar.y();
        }
        return this.P2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser.NumberType J0() throws IOException {
        if (this.R2 == 0) {
            N2(0);
        }
        if (this.f13813h == JsonToken.VALUE_NUMBER_INT) {
            int i4 = this.R2;
            if ((i4 & 1) != 0) {
                return JsonParser.NumberType.INT;
            }
            if ((i4 & 2) != 0) {
                return JsonParser.NumberType.LONG;
            }
            return JsonParser.NumberType.BIG_INTEGER;
        } else if ((this.R2 & 16) != 0) {
            return JsonParser.NumberType.BIG_DECIMAL;
        } else {
            return JsonParser.NumberType.DOUBLE;
        }
    }

    @Deprecated
    protected Object J2() {
        if (JsonParser.Feature.INCLUDE_SOURCE_IN_LOCATION.enabledIn(this.f13716a)) {
            return this.f13786g2.o().getRawContent();
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Number K0() throws IOException {
        if (this.R2 == 0) {
            N2(0);
        }
        if (this.f13813h == JsonToken.VALUE_NUMBER_INT) {
            int i4 = this.R2;
            if ((i4 & 1) != 0) {
                return Integer.valueOf(this.S2);
            }
            if ((i4 & 2) != 0) {
                return Long.valueOf(this.T2);
            }
            if ((i4 & 4) != 0) {
                return this.V2;
            }
            p2();
        }
        int i10 = this.R2;
        if ((i10 & 16) != 0) {
            return this.W2;
        }
        if ((i10 & 8) == 0) {
            p2();
        }
        return Double.valueOf(this.U2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void K2(Base64Variant base64Variant) throws IOException {
        e2(base64Variant.missingPaddingMessage());
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Number L0() throws IOException {
        if (this.f13813h == JsonToken.VALUE_NUMBER_INT) {
            if (this.R2 == 0) {
                N2(0);
            }
            int i4 = this.R2;
            if ((i4 & 1) != 0) {
                return Integer.valueOf(this.S2);
            }
            if ((i4 & 2) != 0) {
                return Long.valueOf(this.T2);
            }
            if ((i4 & 4) != 0) {
                return this.V2;
            }
            p2();
        }
        if (this.R2 == 0) {
            N2(16);
        }
        int i10 = this.R2;
        if ((i10 & 16) != 0) {
            return this.W2;
        }
        if ((i10 & 8) == 0) {
            p2();
        }
        return Double.valueOf(this.U2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public char L2(char c10) throws JsonProcessingException {
        if (m1(JsonParser.Feature.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER)) {
            return c10;
        }
        if (c10 == '\'' && m1(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return c10;
        }
        e2("Unrecognized character escape " + c.Z1(c10));
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int M2() throws IOException {
        if (this.f13787p2) {
            e2("Internal error: _parseNumericValue called when parser instance closed");
        }
        if (this.f13813h == JsonToken.VALUE_NUMBER_INT && this.Y2 <= 9) {
            int j4 = this.M2.j(this.X2);
            this.S2 = j4;
            this.R2 = 1;
            return j4;
        }
        N2(1);
        if ((this.R2 & 1) == 0) {
            Z2();
        }
        return this.S2;
    }

    protected void N2(int i4) throws IOException {
        if (this.f13787p2) {
            e2("Internal error: _parseNumericValue called when parser instance closed");
        }
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            int i10 = this.Y2;
            if (i10 <= 9) {
                this.S2 = this.M2.j(this.X2);
                this.R2 = 1;
            } else if (i10 <= 18) {
                long k10 = this.M2.k(this.X2);
                if (i10 == 10) {
                    if (this.X2) {
                        if (k10 >= -2147483648L) {
                            this.S2 = (int) k10;
                            this.R2 = 1;
                            return;
                        }
                    } else if (k10 <= 2147483647L) {
                        this.S2 = (int) k10;
                        this.R2 = 1;
                        return;
                    }
                }
                this.T2 = k10;
                this.R2 = 2;
            } else {
                P2(i4);
            }
        } else if (jsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
            O2(i4);
        } else {
            f2("Current token (%s) not numeric, can not use numeric value accessors", jsonToken);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void O1(Object obj) {
        this.K2.p(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    @Deprecated
    public JsonParser P1(int i4) {
        int i10 = this.f13716a ^ i4;
        if (i10 != 0) {
            this.f13716a = i4;
            A2(i4, i10);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Q2() throws IOException {
        this.M2.A();
        char[] cArr = this.N2;
        if (cArr != null) {
            this.N2 = null;
            this.f13786g2.u(cArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void R2(int i4, char c10) throws JsonParseException {
        d N0 = N0();
        e2(String.format("Unexpected close marker '%s': expected '%c' (for %s starting at %s)", Character.valueOf((char) i4), Character.valueOf(c10), N0.r(), N0.q(C2())));
    }

    protected void S2(int i4, String str) throws IOException {
        if (i4 == 1) {
            u2(str);
        } else {
            x2(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void T2(int i4, String str) throws JsonParseException {
        if (!m1(JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS) || i4 > 32) {
            e2("Illegal unquoted character (" + c.Z1((char) i4) + "): has to be escaped using backslash to be included in " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String U2() throws IOException {
        return V2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String V2() throws IOException {
        return m1(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS) ? "(JSON String, Number (or 'NaN'/'INF'/'+INF'), Array, Object or token 'null', 'true' or 'false')" : "(JSON String, Number, Array, Object or token 'null', 'true' or 'false')";
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation W0() {
        return new JsonLocation(C2(), -1L, c3(), e3(), d3());
    }

    protected void W2() throws IOException {
        int i4 = this.R2;
        if ((i4 & 8) != 0) {
            this.W2 = g.f(S0());
        } else if ((i4 & 4) != 0) {
            this.W2 = new BigDecimal(this.V2);
        } else if ((i4 & 2) != 0) {
            this.W2 = BigDecimal.valueOf(this.T2);
        } else if ((i4 & 1) != 0) {
            this.W2 = BigDecimal.valueOf(this.S2);
        } else {
            p2();
        }
        this.R2 |= 16;
    }

    protected void X2() throws IOException {
        int i4 = this.R2;
        if ((i4 & 16) != 0) {
            this.V2 = this.W2.toBigInteger();
        } else if ((i4 & 2) != 0) {
            this.V2 = BigInteger.valueOf(this.T2);
        } else if ((i4 & 1) != 0) {
            this.V2 = BigInteger.valueOf(this.S2);
        } else if ((i4 & 8) != 0) {
            this.V2 = BigDecimal.valueOf(this.U2).toBigInteger();
        } else {
            p2();
        }
        this.R2 |= 4;
    }

    protected void Y2() throws IOException {
        int i4 = this.R2;
        if ((i4 & 16) != 0) {
            this.U2 = this.W2.doubleValue();
        } else if ((i4 & 4) != 0) {
            this.U2 = this.V2.doubleValue();
        } else if ((i4 & 2) != 0) {
            this.U2 = this.T2;
        } else if ((i4 & 1) != 0) {
            this.U2 = this.S2;
        } else {
            p2();
        }
        this.R2 |= 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Z2() throws IOException {
        int i4 = this.R2;
        if ((i4 & 2) != 0) {
            long j4 = this.T2;
            int i10 = (int) j4;
            if (i10 != j4) {
                v2(S0(), W());
            }
            this.S2 = i10;
        } else if ((i4 & 4) != 0) {
            if (c.Q.compareTo(this.V2) > 0 || c.R.compareTo(this.V2) < 0) {
                t2();
            }
            this.S2 = this.V2.intValue();
        } else if ((i4 & 8) != 0) {
            double d4 = this.U2;
            if (d4 < -2.147483648E9d || d4 > 2.147483647E9d) {
                t2();
            }
            this.S2 = (int) this.U2;
        } else if ((i4 & 16) != 0) {
            if (c.W.compareTo(this.W2) > 0 || c.f13790b1.compareTo(this.W2) < 0) {
                t2();
            }
            this.S2 = this.W2.intValue();
        } else {
            p2();
        }
        this.R2 |= 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.core.base.c
    public void a2() throws JsonParseException {
        if (this.K2.m()) {
            return;
        }
        k2(String.format(": expected close marker for %s (start marker at %s)", this.K2.k() ? "Array" : "Object", this.K2.q(C2())), null);
    }

    protected void a3() throws IOException {
        int i4 = this.R2;
        if ((i4 & 1) != 0) {
            this.T2 = this.S2;
        } else if ((i4 & 4) != 0) {
            if (c.S.compareTo(this.V2) > 0 || c.T.compareTo(this.V2) < 0) {
                w2();
            }
            this.T2 = this.V2.longValue();
        } else if ((i4 & 8) != 0) {
            double d4 = this.U2;
            if (d4 < -9.223372036854776E18d || d4 > 9.223372036854776E18d) {
                w2();
            }
            this.T2 = (long) this.U2;
        } else if ((i4 & 16) != 0) {
            if (c.U.compareTo(this.W2) > 0 || c.V.compareTo(this.W2) < 0) {
                w2();
            }
            this.T2 = this.W2.longValue();
        } else {
            p2();
        }
        this.R2 |= 2;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    /* renamed from: b3 */
    public d N0() {
        return this.K2;
    }

    public long c3() {
        return this.H2;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f13787p2) {
            return;
        }
        this.f13788x2 = Math.max(this.f13788x2, this.f13789y2);
        this.f13787p2 = true;
        try {
            B2();
        } finally {
            Q2();
        }
    }

    public int d3() {
        int i4 = this.J2;
        return i4 < 0 ? i4 : i4 + 1;
    }

    public int e3() {
        return this.I2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser g0(JsonParser.Feature feature) {
        this.f13716a &= ~feature.getMask();
        if (feature == JsonParser.Feature.STRICT_DUPLICATE_DETECTION) {
            this.K2 = this.K2.D(null);
        }
        return this;
    }

    @Deprecated
    protected boolean g3() throws IOException {
        return false;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser h0(JsonParser.Feature feature) {
        this.f13716a |= feature.getMask();
        if (feature == JsonParser.Feature.STRICT_DUPLICATE_DETECTION && this.K2.z() == null) {
            this.K2 = this.K2.D(com.fasterxml.jackson.core.json.b.g(this));
        }
        return this;
    }

    @Deprecated
    protected void h3() throws IOException {
        if (g3()) {
            return;
        }
        i2();
    }

    protected IllegalArgumentException i3(Base64Variant base64Variant, int i4, int i10) throws IllegalArgumentException {
        return j3(base64Variant, i4, i10, null);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public boolean isClosed() {
        return this.f13787p2;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public boolean j1() {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            return true;
        }
        if (jsonToken == JsonToken.FIELD_NAME) {
            return this.O2;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IllegalArgumentException j3(Base64Variant base64Variant, int i4, int i10, String str) throws IllegalArgumentException {
        String str2;
        if (i4 <= 32) {
            str2 = String.format("Illegal white space character (code 0x%s) as character #%d of 4-char base64 unit: can only used between units", Integer.toHexString(i4), Integer.valueOf(i10 + 1));
        } else if (base64Variant.usesPaddingChar(i4)) {
            str2 = "Unexpected padding character ('" + base64Variant.getPaddingChar() + "') as character #" + (i10 + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (Character.isDefined(i4) && !Character.isISOControl(i4)) {
            str2 = "Illegal character '" + ((char) i4) + "' (code 0x" + Integer.toHexString(i4) + ") in base64 content";
        } else {
            str2 = "Illegal character (code 0x" + Integer.toHexString(i4) + ") in base64 content";
        }
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        return new IllegalArgumentException(str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken k3(boolean z9, int i4, int i10, int i11) {
        if (i10 < 1 && i11 < 1) {
            return n3(z9, i4);
        }
        return m3(z9, i4, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken l3(String str, double d4) {
        this.M2.G(str);
        this.U2 = d4;
        this.R2 = 8;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken m3(boolean z9, int i4, int i10, int i11) {
        this.X2 = z9;
        this.Y2 = i4;
        this.Z2 = i10;
        this.f13785a3 = i11;
        this.R2 = 0;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigInteger n0() throws IOException {
        int i4 = this.R2;
        if ((i4 & 4) == 0) {
            if (i4 == 0) {
                N2(4);
            }
            if ((this.R2 & 4) == 0) {
                X2();
            }
        }
        return this.V2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonToken n3(boolean z9, int i4) {
        this.X2 = z9;
        this.Y2 = i4;
        this.Z2 = 0;
        this.f13785a3 = 0;
        this.R2 = 0;
        return JsonToken.VALUE_NUMBER_INT;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public byte[] p0(Base64Variant base64Variant) throws IOException {
        if (this.Q2 == null) {
            if (this.f13813h != JsonToken.VALUE_STRING) {
                e2("Current token (" + this.f13813h + ") not VALUE_STRING, can not access as binary");
            }
            com.fasterxml.jackson.core.util.c I2 = I2();
            Y1(S0(), I2, base64Variant);
            this.Q2 = I2.E();
        }
        return this.Q2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean r1() {
        if (this.f13813h != JsonToken.VALUE_NUMBER_FLOAT || (this.R2 & 8) == 0) {
            return false;
        }
        double d4 = this.U2;
        return Double.isNaN(d4) || Double.isInfinite(d4);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation t0() {
        return new JsonLocation(C2(), -1L, this.f13788x2 + this.E2, this.F2, (this.f13788x2 - this.G2) + 1);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public String u0() throws IOException {
        d e4;
        JsonToken jsonToken = this.f13813h;
        if ((jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) && (e4 = this.K2.e()) != null) {
            return e4.b();
        }
        return this.K2.b();
    }

    @Override // com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.core.n
    public Version version() {
        return com.fasterxml.jackson.core.json.f.f14081a;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object x0() {
        return this.K2.c();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigDecimal y0() throws IOException {
        int i4 = this.R2;
        if ((i4 & 16) == 0) {
            if (i4 == 0) {
                N2(16);
            }
            if ((this.R2 & 16) == 0) {
                W2();
            }
        }
        return this.W2;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public double z0() throws IOException {
        int i4 = this.R2;
        if ((i4 & 8) == 0) {
            if (i4 == 0) {
                N2(8);
            }
            if ((this.R2 & 8) == 0) {
                Y2();
            }
        }
        return this.U2;
    }
}
