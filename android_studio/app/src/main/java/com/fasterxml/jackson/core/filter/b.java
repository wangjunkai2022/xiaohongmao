package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.f;
import com.fasterxml.jackson.core.filter.TokenFilter;
import com.fasterxml.jackson.core.util.h;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: FilteringParserDelegate.java */
/* loaded from: classes.dex */
public class b extends h {

    /* renamed from: i  reason: collision with root package name */
    protected TokenFilter f13847i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f13848j;

    /* renamed from: k  reason: collision with root package name */
    protected TokenFilter.Inclusion f13849k;

    /* renamed from: l  reason: collision with root package name */
    protected JsonToken f13850l;

    /* renamed from: m  reason: collision with root package name */
    protected JsonToken f13851m;

    /* renamed from: n  reason: collision with root package name */
    protected d f13852n;

    /* renamed from: o  reason: collision with root package name */
    protected d f13853o;

    /* renamed from: p  reason: collision with root package name */
    protected TokenFilter f13854p;

    /* renamed from: q  reason: collision with root package name */
    protected int f13855q;

    @Deprecated
    public b(JsonParser jsonParser, TokenFilter tokenFilter, boolean z9, boolean z10) {
        this(jsonParser, tokenFilter, z9 ? TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH : TokenFilter.Inclusion.ONLY_INCLUDE_ALL, z10);
    }

    private JsonToken X1(d dVar) throws IOException {
        this.f13853o = dVar;
        JsonToken F = dVar.F();
        if (F != null) {
            return F;
        }
        while (dVar != this.f13852n) {
            dVar = this.f13853o.B(dVar);
            this.f13853o = dVar;
            if (dVar != null) {
                JsonToken F2 = dVar.F();
                if (F2 != null) {
                    return F2;
                }
            } else {
                throw k("Unexpected problem: chain of filtered context broken");
            }
        }
        throw k("Internal error: failed to locate expected buffered tokens");
    }

    private final boolean a2() throws IOException {
        int i4 = this.f13855q;
        if (i4 == 0 || this.f13848j) {
            this.f13855q = i4 + 1;
            return true;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public Object A0() throws IOException {
        return this.f14286h.A0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public void A1(String str) {
        throw new UnsupportedOperationException("Can not currently override name during filtering read");
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public float C0() throws IOException {
        return this.f14286h.C0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public int D1(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        return this.f14286h.D1(base64Variant, outputStream);
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public int F0() throws IOException {
        return this.f14286h.F0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonToken G0() {
        return this.f13851m;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public long H0() throws IOException {
        return this.f14286h.H0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public void J() {
        JsonToken jsonToken = this.f13850l;
        if (jsonToken != null) {
            this.f13851m = jsonToken;
            this.f13850l = null;
        }
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonParser.NumberType J0() throws IOException {
        return this.f14286h.J0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public Number K0() throws IOException {
        return this.f14286h.K0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public String M() throws IOException {
        f W1 = W1();
        JsonToken jsonToken = this.f13850l;
        if (jsonToken != JsonToken.START_OBJECT && jsonToken != JsonToken.START_ARRAY) {
            return W1.b();
        }
        f e4 = W1.e();
        if (e4 == null) {
            return null;
        }
        return e4.b();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public f N0() {
        return W1();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public short Q0() throws IOException {
        return this.f14286h.Q0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public String S0() throws IOException {
        if (this.f13850l == JsonToken.FIELD_NAME) {
            return M();
        }
        return this.f14286h.S0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public char[] T0() throws IOException {
        if (this.f13850l == JsonToken.FIELD_NAME) {
            return M().toCharArray();
        }
        return this.f14286h.T0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public int U0() throws IOException {
        if (this.f13850l == JsonToken.FIELD_NAME) {
            return M().length();
        }
        return this.f14286h.U0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonParser U1() throws IOException {
        JsonToken jsonToken = this.f13850l;
        if (jsonToken != JsonToken.START_OBJECT && jsonToken != JsonToken.START_ARRAY) {
            return this;
        }
        int i4 = 1;
        while (true) {
            JsonToken y12 = y1();
            if (y12 == null) {
                return this;
            }
            if (y12.isStructStart()) {
                i4++;
            } else if (y12.isStructEnd() && i4 - 1 == 0) {
                return this;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public int V0() throws IOException {
        if (this.f13850l == JsonToken.FIELD_NAME) {
            return 0;
        }
        return this.f14286h.V0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonToken W() {
        return this.f13850l;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonLocation W0() {
        return this.f14286h.W0();
    }

    protected f W1() {
        d dVar = this.f13853o;
        return dVar != null ? dVar : this.f13852n;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public final int X() {
        JsonToken jsonToken = this.f13850l;
        if (jsonToken == null) {
            return 0;
        }
        return jsonToken.id();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public boolean Y0() throws IOException {
        return this.f14286h.Y0();
    }

    protected final JsonToken Y1() throws IOException {
        TokenFilter u9;
        JsonToken Z1;
        JsonToken Z12;
        JsonToken Z13;
        while (true) {
            JsonToken y12 = this.f14286h.y1();
            if (y12 == null) {
                this.f13850l = y12;
                return y12;
            }
            int id = y12.id();
            if (id != 1) {
                if (id != 2) {
                    if (id == 3) {
                        TokenFilter tokenFilter = this.f13854p;
                        TokenFilter tokenFilter2 = TokenFilter.f13839a;
                        if (tokenFilter == tokenFilter2) {
                            this.f13852n = this.f13852n.x(tokenFilter, true);
                            this.f13850l = y12;
                            return y12;
                        } else if (tokenFilter == null) {
                            this.f14286h.U1();
                        } else {
                            TokenFilter u10 = this.f13852n.u(tokenFilter);
                            if (u10 == null) {
                                this.f14286h.U1();
                            } else {
                                if (u10 != tokenFilter2) {
                                    u10 = u10.d();
                                }
                                this.f13854p = u10;
                                if (u10 == tokenFilter2) {
                                    this.f13852n = this.f13852n.x(u10, true);
                                    this.f13850l = y12;
                                    return y12;
                                } else if (u10 != null && this.f13849k == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                                    this.f13852n = this.f13852n.x(u10, true);
                                    this.f13850l = y12;
                                    return y12;
                                } else {
                                    d x9 = this.f13852n.x(u10, false);
                                    this.f13852n = x9;
                                    if (this.f13849k == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH && (Z12 = Z1(x9)) != null) {
                                        this.f13850l = Z12;
                                        return Z12;
                                    }
                                }
                            }
                        }
                    } else if (id != 4) {
                        if (id != 5) {
                            TokenFilter tokenFilter3 = this.f13854p;
                            TokenFilter tokenFilter4 = TokenFilter.f13839a;
                            if (tokenFilter3 == tokenFilter4) {
                                this.f13850l = y12;
                                return y12;
                            } else if (tokenFilter3 != null && ((u9 = this.f13852n.u(tokenFilter3)) == tokenFilter4 || (u9 != null && u9.v(this.f14286h)))) {
                                if (a2()) {
                                    this.f13850l = y12;
                                    return y12;
                                }
                            }
                        } else {
                            String u02 = this.f14286h.u0();
                            TokenFilter H = this.f13852n.H(u02);
                            TokenFilter tokenFilter5 = TokenFilter.f13839a;
                            if (H == tokenFilter5) {
                                this.f13854p = H;
                                this.f13850l = y12;
                                return y12;
                            } else if (H == null) {
                                this.f14286h.y1();
                                this.f14286h.U1();
                            } else {
                                TokenFilter q9 = H.q(u02);
                                if (q9 == null) {
                                    this.f14286h.y1();
                                    this.f14286h.U1();
                                } else {
                                    this.f13854p = q9;
                                    if (q9 == tokenFilter5) {
                                        if (a2()) {
                                            if (this.f13849k == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH) {
                                                this.f13850l = y12;
                                                return y12;
                                            }
                                        } else {
                                            this.f14286h.y1();
                                            this.f14286h.U1();
                                        }
                                    } else if (this.f13849k != TokenFilter.Inclusion.ONLY_INCLUDE_ALL && (Z1 = Z1(this.f13852n)) != null) {
                                        this.f13850l = Z1;
                                        return Z1;
                                    }
                                }
                            }
                        }
                    }
                }
                boolean E = this.f13852n.E();
                TokenFilter C = this.f13852n.C();
                if (C != null && C != TokenFilter.f13839a) {
                    C.b();
                }
                d e4 = this.f13852n.e();
                this.f13852n = e4;
                this.f13854p = e4.C();
                if (E) {
                    this.f13850l = y12;
                    return y12;
                }
            } else {
                TokenFilter tokenFilter6 = this.f13854p;
                TokenFilter tokenFilter7 = TokenFilter.f13839a;
                if (tokenFilter6 == tokenFilter7) {
                    this.f13852n = this.f13852n.y(tokenFilter6, true);
                    this.f13850l = y12;
                    return y12;
                } else if (tokenFilter6 == null) {
                    this.f14286h.U1();
                } else {
                    TokenFilter u11 = this.f13852n.u(tokenFilter6);
                    if (u11 == null) {
                        this.f14286h.U1();
                    } else {
                        if (u11 != tokenFilter7) {
                            u11 = u11.e();
                        }
                        this.f13854p = u11;
                        if (u11 == tokenFilter7) {
                            this.f13852n = this.f13852n.y(u11, true);
                            this.f13850l = y12;
                            return y12;
                        } else if (u11 != null && this.f13849k == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                            this.f13852n = this.f13852n.y(u11, true);
                            this.f13850l = y12;
                            return y12;
                        } else {
                            d y9 = this.f13852n.y(u11, false);
                            this.f13852n = y9;
                            if (this.f13849k == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH && (Z13 = Z1(y9)) != null) {
                                this.f13850l = Z13;
                                return Z13;
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public boolean Z0(boolean z9) throws IOException {
        return this.f14286h.Z0(z9);
    }

    protected final JsonToken Z1(d dVar) throws IOException {
        TokenFilter u9;
        while (true) {
            JsonToken y12 = this.f14286h.y1();
            if (y12 == null) {
                return y12;
            }
            int id = y12.id();
            boolean z9 = false;
            if (id != 1) {
                if (id != 2) {
                    if (id == 3) {
                        TokenFilter u10 = this.f13852n.u(this.f13854p);
                        if (u10 == null) {
                            this.f14286h.U1();
                        } else {
                            TokenFilter tokenFilter = TokenFilter.f13839a;
                            if (u10 != tokenFilter) {
                                u10 = u10.d();
                            }
                            this.f13854p = u10;
                            if (u10 == tokenFilter) {
                                this.f13852n = this.f13852n.x(u10, true);
                                return X1(dVar);
                            } else if (u10 != null && this.f13849k == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                                this.f13852n = this.f13852n.x(u10, true);
                                return X1(dVar);
                            } else {
                                this.f13852n = this.f13852n.x(u10, false);
                            }
                        }
                    } else if (id != 4) {
                        if (id != 5) {
                            TokenFilter tokenFilter2 = this.f13854p;
                            TokenFilter tokenFilter3 = TokenFilter.f13839a;
                            if (tokenFilter2 == tokenFilter3) {
                                return X1(dVar);
                            }
                            if (tokenFilter2 != null && ((u9 = this.f13852n.u(tokenFilter2)) == tokenFilter3 || (u9 != null && u9.v(this.f14286h)))) {
                                if (a2()) {
                                    return X1(dVar);
                                }
                            }
                        } else {
                            String u02 = this.f14286h.u0();
                            TokenFilter H = this.f13852n.H(u02);
                            TokenFilter tokenFilter4 = TokenFilter.f13839a;
                            if (H == tokenFilter4) {
                                this.f13854p = H;
                                return X1(dVar);
                            } else if (H == null) {
                                this.f14286h.y1();
                                this.f14286h.U1();
                            } else {
                                TokenFilter q9 = H.q(u02);
                                if (q9 == null) {
                                    this.f14286h.y1();
                                    this.f14286h.U1();
                                } else {
                                    this.f13854p = q9;
                                    if (q9 != tokenFilter4) {
                                        continue;
                                    } else if (a2()) {
                                        return X1(dVar);
                                    } else {
                                        this.f13854p = this.f13852n.H(u02);
                                    }
                                }
                            }
                        }
                    }
                }
                TokenFilter C = this.f13852n.C();
                if (C != null && C != TokenFilter.f13839a) {
                    C.b();
                }
                d dVar2 = this.f13852n;
                if ((dVar2 == dVar) && dVar2.E()) {
                    z9 = true;
                }
                d e4 = this.f13852n.e();
                this.f13852n = e4;
                this.f13854p = e4.C();
                if (z9) {
                    return y12;
                }
            } else {
                TokenFilter tokenFilter5 = this.f13854p;
                TokenFilter tokenFilter6 = TokenFilter.f13839a;
                if (tokenFilter5 == tokenFilter6) {
                    this.f13852n = this.f13852n.y(tokenFilter5, true);
                    return y12;
                } else if (tokenFilter5 == null) {
                    this.f14286h.U1();
                } else {
                    TokenFilter u11 = this.f13852n.u(tokenFilter5);
                    if (u11 == null) {
                        this.f14286h.U1();
                    } else {
                        if (u11 != tokenFilter6) {
                            u11 = u11.e();
                        }
                        this.f13854p = u11;
                        if (u11 == tokenFilter6) {
                            this.f13852n = this.f13852n.y(u11, true);
                            return X1(dVar);
                        } else if (u11 != null && this.f13849k == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                            this.f13852n = this.f13852n.x(u11, true);
                            return X1(dVar);
                        } else {
                            this.f13852n = this.f13852n.y(u11, false);
                        }
                    }
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public double a1() throws IOException {
        return this.f14286h.a1();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public double b1(double d4) throws IOException {
        return this.f14286h.b1(d4);
    }

    public TokenFilter b2() {
        return this.f13847i;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public int c1() throws IOException {
        return this.f14286h.c1();
    }

    public int c2() {
        return this.f13855q;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public int d1(int i4) throws IOException {
        return this.f14286h.d1(i4);
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public long e1() throws IOException {
        return this.f14286h.e1();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public long f1(long j4) throws IOException {
        return this.f14286h.f1(j4);
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public String g1() throws IOException {
        if (this.f13850l == JsonToken.FIELD_NAME) {
            return M();
        }
        return this.f14286h.g1();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public String h1(String str) throws IOException {
        if (this.f13850l == JsonToken.FIELD_NAME) {
            return M();
        }
        return this.f14286h.h1(str);
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public boolean i1() {
        return this.f13850l != null;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public boolean j1() {
        if (this.f13850l == JsonToken.FIELD_NAME) {
            return false;
        }
        return this.f14286h.j1();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public final boolean k1(JsonToken jsonToken) {
        return this.f13850l == jsonToken;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public boolean l1(int i4) {
        JsonToken jsonToken = this.f13850l;
        return jsonToken == null ? i4 == 0 : jsonToken.id() == i4;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public BigInteger n0() throws IOException {
        return this.f14286h.n0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public byte[] p0(Base64Variant base64Variant) throws IOException {
        return this.f14286h.p0(base64Variant);
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public boolean p1() {
        return this.f13850l == JsonToken.START_ARRAY;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public boolean q0() throws IOException {
        return this.f14286h.q0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public boolean q1() {
        return this.f13850l == JsonToken.START_OBJECT;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public byte r0() throws IOException {
        return this.f14286h.r0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonLocation t0() {
        return this.f14286h.t0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public String u0() throws IOException {
        f W1 = W1();
        JsonToken jsonToken = this.f13850l;
        if (jsonToken != JsonToken.START_OBJECT && jsonToken != JsonToken.START_ARRAY) {
            return W1.b();
        }
        f e4 = W1.e();
        if (e4 == null) {
            return null;
        }
        return e4.b();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonToken v0() {
        return this.f13850l;
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    @Deprecated
    public final int w0() {
        return X();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public BigDecimal y0() throws IOException {
        return this.f14286h.y0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonToken y1() throws IOException {
        JsonToken Z1;
        JsonToken Z12;
        JsonToken Z13;
        TokenFilter u9;
        JsonToken jsonToken;
        if (!this.f13848j && (jsonToken = this.f13850l) != null && this.f13853o == null && jsonToken.isScalarValue() && !this.f13852n.E() && this.f13849k == TokenFilter.Inclusion.ONLY_INCLUDE_ALL && this.f13854p == TokenFilter.f13839a) {
            this.f13850l = null;
            return null;
        }
        d dVar = this.f13853o;
        if (dVar != null) {
            do {
                JsonToken F = dVar.F();
                if (F != null) {
                    this.f13850l = F;
                    return F;
                }
                d dVar2 = this.f13852n;
                if (dVar == dVar2) {
                    this.f13853o = null;
                    if (dVar.k()) {
                        JsonToken v02 = this.f14286h.v0();
                        this.f13850l = v02;
                        return v02;
                    }
                    JsonToken W = this.f14286h.W();
                    if (W != JsonToken.FIELD_NAME) {
                        this.f13850l = W;
                        return W;
                    }
                } else {
                    dVar = dVar2.B(dVar);
                    this.f13853o = dVar;
                }
            } while (dVar != null);
            throw k("Unexpected problem: chain of filtered context broken");
        }
        JsonToken y12 = this.f14286h.y1();
        if (y12 == null) {
            this.f13850l = y12;
            return y12;
        }
        int id = y12.id();
        if (id != 1) {
            if (id != 2) {
                if (id == 3) {
                    TokenFilter tokenFilter = this.f13854p;
                    TokenFilter tokenFilter2 = TokenFilter.f13839a;
                    if (tokenFilter == tokenFilter2) {
                        this.f13852n = this.f13852n.x(tokenFilter, true);
                        this.f13850l = y12;
                        return y12;
                    } else if (tokenFilter == null) {
                        this.f14286h.U1();
                    } else {
                        TokenFilter u10 = this.f13852n.u(tokenFilter);
                        if (u10 == null) {
                            this.f14286h.U1();
                        } else {
                            if (u10 != tokenFilter2) {
                                u10 = u10.d();
                            }
                            this.f13854p = u10;
                            if (u10 == tokenFilter2) {
                                this.f13852n = this.f13852n.x(u10, true);
                                this.f13850l = y12;
                                return y12;
                            } else if (u10 != null && this.f13849k == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                                this.f13852n = this.f13852n.x(u10, true);
                                this.f13850l = y12;
                                return y12;
                            } else {
                                d x9 = this.f13852n.x(u10, false);
                                this.f13852n = x9;
                                if (this.f13849k == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH && (Z12 = Z1(x9)) != null) {
                                    this.f13850l = Z12;
                                    return Z12;
                                }
                            }
                        }
                    }
                } else if (id != 4) {
                    if (id != 5) {
                        TokenFilter tokenFilter3 = this.f13854p;
                        TokenFilter tokenFilter4 = TokenFilter.f13839a;
                        if (tokenFilter3 == tokenFilter4) {
                            this.f13850l = y12;
                            return y12;
                        } else if (tokenFilter3 != null && (((u9 = this.f13852n.u(tokenFilter3)) == tokenFilter4 || (u9 != null && u9.v(this.f14286h))) && a2())) {
                            this.f13850l = y12;
                            return y12;
                        }
                    } else {
                        String u02 = this.f14286h.u0();
                        TokenFilter H = this.f13852n.H(u02);
                        TokenFilter tokenFilter5 = TokenFilter.f13839a;
                        if (H == tokenFilter5) {
                            this.f13854p = H;
                            this.f13850l = y12;
                            return y12;
                        } else if (H == null) {
                            this.f14286h.y1();
                            this.f14286h.U1();
                        } else {
                            TokenFilter q9 = H.q(u02);
                            if (q9 == null) {
                                this.f14286h.y1();
                                this.f14286h.U1();
                            } else {
                                this.f13854p = q9;
                                if (q9 == tokenFilter5) {
                                    if (a2()) {
                                        if (this.f13849k == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH) {
                                            this.f13850l = y12;
                                            return y12;
                                        }
                                    } else {
                                        this.f14286h.y1();
                                        this.f14286h.U1();
                                    }
                                }
                                if (this.f13849k != TokenFilter.Inclusion.ONLY_INCLUDE_ALL && (Z13 = Z1(this.f13852n)) != null) {
                                    this.f13850l = Z13;
                                    return Z13;
                                }
                            }
                        }
                    }
                }
            }
            boolean E = this.f13852n.E();
            TokenFilter C = this.f13852n.C();
            if (C != null && C != TokenFilter.f13839a) {
                C.b();
            }
            d e4 = this.f13852n.e();
            this.f13852n = e4;
            this.f13854p = e4.C();
            if (E) {
                this.f13850l = y12;
                return y12;
            }
        } else {
            TokenFilter tokenFilter6 = this.f13854p;
            TokenFilter tokenFilter7 = TokenFilter.f13839a;
            if (tokenFilter6 == tokenFilter7) {
                this.f13852n = this.f13852n.y(tokenFilter6, true);
                this.f13850l = y12;
                return y12;
            } else if (tokenFilter6 == null) {
                this.f14286h.U1();
            } else {
                TokenFilter u11 = this.f13852n.u(tokenFilter6);
                if (u11 == null) {
                    this.f14286h.U1();
                } else {
                    if (u11 != tokenFilter7) {
                        u11 = u11.e();
                    }
                    this.f13854p = u11;
                    if (u11 == tokenFilter7) {
                        this.f13852n = this.f13852n.y(u11, true);
                        this.f13850l = y12;
                        return y12;
                    } else if (u11 != null && this.f13849k == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
                        this.f13852n = this.f13852n.y(u11, true);
                        this.f13850l = y12;
                        return y12;
                    } else {
                        d y9 = this.f13852n.y(u11, false);
                        this.f13852n = y9;
                        if (this.f13849k == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH && (Z1 = Z1(y9)) != null) {
                            this.f13850l = Z1;
                            return Z1;
                        }
                    }
                }
            }
        }
        return Y1();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public double z0() throws IOException {
        return this.f14286h.z0();
    }

    @Override // com.fasterxml.jackson.core.util.h, com.fasterxml.jackson.core.JsonParser
    public JsonToken z1() throws IOException {
        JsonToken y12 = y1();
        return y12 == JsonToken.FIELD_NAME ? y1() : y12;
    }

    public b(JsonParser jsonParser, TokenFilter tokenFilter, TokenFilter.Inclusion inclusion, boolean z9) {
        super(jsonParser);
        this.f13847i = tokenFilter;
        this.f13854p = tokenFilter;
        this.f13852n = d.z(tokenFilter);
        this.f13849k = inclusion;
        this.f13848j = z9;
    }
}
