package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.f;
import com.fasterxml.jackson.core.filter.TokenFilter;
import com.fasterxml.jackson.core.j;
import com.fasterxml.jackson.core.util.g;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: FilteringGeneratorDelegate.java */
/* loaded from: classes.dex */
public class a extends g {

    /* renamed from: g  reason: collision with root package name */
    protected TokenFilter f13841g;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f13842h;

    /* renamed from: i  reason: collision with root package name */
    protected TokenFilter.Inclusion f13843i;

    /* renamed from: j  reason: collision with root package name */
    protected d f13844j;

    /* renamed from: k  reason: collision with root package name */
    protected TokenFilter f13845k;

    /* renamed from: l  reason: collision with root package name */
    protected int f13846l;

    @Deprecated
    public a(JsonGenerator jsonGenerator, TokenFilter tokenFilter, boolean z9, boolean z10) {
        this(jsonGenerator, tokenFilter, z9 ? TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH : TokenFilter.Inclusion.ONLY_INCLUDE_ALL, z10);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void A1(char[] cArr, int i4, int i10) throws IOException {
        if (d2()) {
            this.f14284e.A1(cArr, i4, i10);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void B1(byte[] bArr, int i4, int i10) throws IOException {
        if (d2()) {
            this.f14284e.B1(bArr, i4, i10);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void D1(String str) throws IOException {
        if (d2()) {
            this.f14284e.D1(str);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void E1(String str, int i4, int i10) throws IOException {
        if (d2()) {
            this.f14284e.E1(str, i4, i10);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void F1(char[] cArr, int i4, int i10) throws IOException {
        if (d2()) {
            this.f14284e.F1(cArr, i4, i10);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void G1() throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            this.f13844j = this.f13844j.x(null, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter == tokenFilter2) {
            this.f13844j = this.f13844j.x(tokenFilter, true);
            this.f14284e.G1();
            return;
        }
        TokenFilter u9 = this.f13844j.u(tokenFilter);
        this.f13845k = u9;
        if (u9 == null) {
            this.f13844j = this.f13844j.x(null, false);
            return;
        }
        if (u9 != tokenFilter2) {
            this.f13845k = u9.d();
        }
        TokenFilter tokenFilter3 = this.f13845k;
        if (tokenFilter3 == tokenFilter2) {
            a2();
            this.f13844j = this.f13844j.x(this.f13845k, true);
            this.f14284e.G1();
        } else if (tokenFilter3 != null && this.f13843i == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            b2(false);
            this.f13844j = this.f13844j.x(this.f13845k, true);
            this.f14284e.G1();
        } else {
            this.f13844j = this.f13844j.x(tokenFilter3, false);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void H1(int i4) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            this.f13844j = this.f13844j.x(null, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter == tokenFilter2) {
            this.f13844j = this.f13844j.x(tokenFilter, true);
            this.f14284e.H1(i4);
            return;
        }
        TokenFilter u9 = this.f13844j.u(tokenFilter);
        this.f13845k = u9;
        if (u9 == null) {
            this.f13844j = this.f13844j.x(null, false);
            return;
        }
        if (u9 != tokenFilter2) {
            this.f13845k = u9.d();
        }
        TokenFilter tokenFilter3 = this.f13845k;
        if (tokenFilter3 == tokenFilter2) {
            a2();
            this.f13844j = this.f13844j.x(this.f13845k, true);
            this.f14284e.H1(i4);
        } else if (tokenFilter3 != null && this.f13843i == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            b2(false);
            this.f13844j = this.f13844j.x(this.f13845k, true);
            this.f14284e.H1(i4);
        } else {
            this.f13844j = this.f13844j.x(tokenFilter3, false);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public int I0(Base64Variant base64Variant, InputStream inputStream, int i4) throws IOException {
        if (Z1()) {
            return this.f14284e.I0(base64Variant, inputStream, i4);
        }
        return -1;
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void I1(Object obj) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            this.f13844j = this.f13844j.x(null, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter == tokenFilter2) {
            this.f13844j = this.f13844j.x(tokenFilter, true);
            this.f14284e.I1(obj);
            return;
        }
        TokenFilter u9 = this.f13844j.u(tokenFilter);
        this.f13845k = u9;
        if (u9 == null) {
            this.f13844j = this.f13844j.x(null, false);
            return;
        }
        if (u9 != tokenFilter2) {
            this.f13845k = u9.d();
        }
        TokenFilter tokenFilter3 = this.f13845k;
        if (tokenFilter3 == tokenFilter2) {
            a2();
            this.f13844j = this.f13844j.x(this.f13845k, true);
            this.f14284e.I1(obj);
            return;
        }
        this.f13844j = this.f13844j.x(tokenFilter3, false);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void J1(Object obj, int i4) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            this.f13844j = this.f13844j.x(null, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter == tokenFilter2) {
            this.f13844j = this.f13844j.x(tokenFilter, true);
            this.f14284e.J1(obj, i4);
            return;
        }
        TokenFilter u9 = this.f13844j.u(tokenFilter);
        this.f13845k = u9;
        if (u9 == null) {
            this.f13844j = this.f13844j.x(null, false);
            return;
        }
        if (u9 != tokenFilter2) {
            this.f13845k = u9.d();
        }
        TokenFilter tokenFilter3 = this.f13845k;
        if (tokenFilter3 == tokenFilter2) {
            a2();
            this.f13844j = this.f13844j.x(this.f13845k, true);
            this.f14284e.J1(obj, i4);
            return;
        }
        this.f13844j = this.f13844j.x(tokenFilter3, false);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void K0(Base64Variant base64Variant, byte[] bArr, int i4, int i10) throws IOException {
        if (Z1()) {
            this.f14284e.K0(base64Variant, bArr, i4, i10);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void K1() throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            this.f13844j = this.f13844j.y(tokenFilter, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter == tokenFilter2) {
            this.f13844j = this.f13844j.y(tokenFilter, true);
            this.f14284e.K1();
            return;
        }
        TokenFilter u9 = this.f13844j.u(tokenFilter);
        if (u9 == null) {
            return;
        }
        if (u9 != tokenFilter2) {
            u9 = u9.e();
        }
        if (u9 == tokenFilter2) {
            a2();
            this.f13844j = this.f13844j.y(u9, true);
            this.f14284e.K1();
        } else if (u9 != null && this.f13843i == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            b2(false);
            this.f13844j = this.f13844j.y(u9, true);
            this.f14284e.K1();
        } else {
            this.f13844j = this.f13844j.y(u9, false);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void L1(Object obj) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            this.f13844j = this.f13844j.y(tokenFilter, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter == tokenFilter2) {
            this.f13844j = this.f13844j.y(tokenFilter, true);
            this.f14284e.L1(obj);
            return;
        }
        TokenFilter u9 = this.f13844j.u(tokenFilter);
        if (u9 == null) {
            return;
        }
        if (u9 != tokenFilter2) {
            u9 = u9.e();
        }
        if (u9 == tokenFilter2) {
            a2();
            this.f13844j = this.f13844j.y(u9, true);
            this.f14284e.L1(obj);
        } else if (u9 != null && this.f13843i == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            b2(false);
            this.f13844j = this.f13844j.y(u9, true);
            this.f14284e.L1(obj);
        } else {
            this.f13844j = this.f13844j.y(u9, false);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void M1(Object obj, int i4) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            this.f13844j = this.f13844j.y(tokenFilter, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter == tokenFilter2) {
            this.f13844j = this.f13844j.y(tokenFilter, true);
            this.f14284e.M1(obj, i4);
            return;
        }
        TokenFilter u9 = this.f13844j.u(tokenFilter);
        if (u9 == null) {
            return;
        }
        if (u9 != tokenFilter2) {
            u9 = u9.e();
        }
        if (u9 == tokenFilter2) {
            a2();
            this.f13844j = this.f13844j.y(u9, true);
            this.f14284e.M1(obj, i4);
            return;
        }
        this.f13844j = this.f13844j.y(u9, false);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void N1(j jVar) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.u(jVar.getValue())) {
                return;
            }
            a2();
        }
        this.f14284e.N1(jVar);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void O0(boolean z9) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.g(z9)) {
                return;
            }
            a2();
        }
        this.f14284e.O0(z9);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void O1(Reader reader, int i4) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.t(reader, i4)) {
                return;
            }
            a2();
        }
        this.f14284e.O1(reader, i4);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void P1(String str) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.u(str)) {
                return;
            }
            a2();
        }
        this.f14284e.P1(str);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void Q1(char[] cArr, int i4, int i10) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            String str = new String(cArr, i4, i10);
            TokenFilter u9 = this.f13844j.u(this.f13845k);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.u(str)) {
                return;
            }
            a2();
        }
        this.f14284e.Q1(cArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void R0() throws IOException {
        d v9 = this.f13844j.v(this.f14284e);
        this.f13844j = v9;
        if (v9 != null) {
            this.f13845k = v9.C();
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void S0() throws IOException {
        d w9 = this.f13844j.w(this.f14284e);
        this.f13844j = w9;
        if (w9 != null) {
            this.f13845k = w9.C();
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void T0(long j4) throws IOException {
        V0(Long.toString(j4));
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void T1(Object obj) throws IOException {
        if (this.f13845k != null) {
            this.f14284e.T1(obj);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void U0(j jVar) throws IOException {
        TokenFilter H = this.f13844j.H(jVar.getValue());
        if (H == null) {
            this.f13845k = null;
            return;
        }
        TokenFilter tokenFilter = TokenFilter.f13839a;
        if (H == tokenFilter) {
            this.f13845k = H;
            this.f14284e.U0(jVar);
            return;
        }
        TokenFilter q9 = H.q(jVar.getValue());
        this.f13845k = q9;
        if (q9 == tokenFilter) {
            c2();
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void V0(String str) throws IOException {
        TokenFilter H = this.f13844j.H(str);
        if (H == null) {
            this.f13845k = null;
            return;
        }
        TokenFilter tokenFilter = TokenFilter.f13839a;
        if (H == tokenFilter) {
            this.f13845k = H;
            this.f14284e.V0(str);
            return;
        }
        TokenFilter q9 = H.q(str);
        this.f13845k = q9;
        if (q9 == tokenFilter) {
            c2();
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void W0() throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.j()) {
                return;
            }
            a2();
        }
        this.f14284e.W0();
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void W1(byte[] bArr, int i4, int i10) throws IOException {
        if (d2()) {
            this.f14284e.W1(bArr, i4, i10);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void Y0(double d4) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.k(d4)) {
                return;
            }
            a2();
        }
        this.f14284e.Y0(d4);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void Z0(float f10) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.l(f10)) {
                return;
            }
            a2();
        }
        this.f14284e.Z0(f10);
    }

    protected boolean Z1() throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return false;
        }
        if (tokenFilter == TokenFilter.f13839a) {
            return true;
        }
        if (tokenFilter.f()) {
            a2();
            return true;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void a1(int i4) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.m(i4)) {
                return;
            }
            a2();
        }
        this.f14284e.a1(i4);
    }

    protected void a2() throws IOException {
        b2(true);
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void b1(long j4) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.n(j4)) {
                return;
            }
            a2();
        }
        this.f14284e.b1(j4);
    }

    protected void b2(boolean z9) throws IOException {
        if (z9) {
            this.f13846l++;
        }
        TokenFilter.Inclusion inclusion = this.f13843i;
        if (inclusion == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH) {
            this.f13844j.J(this.f14284e);
        } else if (inclusion == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            this.f13844j.A(this.f14284e);
        }
        if (!z9 || this.f13842h) {
            return;
        }
        this.f13844j.I();
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void c1(String str) throws IOException, UnsupportedOperationException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.r()) {
                return;
            }
            a2();
        }
        this.f14284e.c1(str);
    }

    protected void c2() throws IOException {
        this.f13846l++;
        TokenFilter.Inclusion inclusion = this.f13843i;
        if (inclusion == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH) {
            this.f13844j.J(this.f14284e);
        } else if (inclusion == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            this.f13844j.A(this.f14284e);
        }
        if (this.f13842h) {
            return;
        }
        this.f13844j.I();
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void d1(BigDecimal bigDecimal) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.o(bigDecimal)) {
                return;
            }
            a2();
        }
        this.f14284e.d1(bigDecimal);
    }

    protected boolean d2() throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return false;
        }
        if (tokenFilter == TokenFilter.f13839a) {
            return true;
        }
        if (tokenFilter.r()) {
            a2();
            return true;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void e1(BigInteger bigInteger) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.p(bigInteger)) {
                return;
            }
            a2();
        }
        this.f14284e.e1(bigInteger);
    }

    public TokenFilter e2() {
        return this.f13841g;
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void f1(short s9) throws IOException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.m(s9)) {
                return;
            }
            a2();
        }
        this.f14284e.f1(s9);
    }

    public f f2() {
        return this.f13844j;
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void g1(char[] cArr, int i4, int i10) throws IOException, UnsupportedOperationException {
        TokenFilter tokenFilter = this.f13845k;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.f13839a;
        if (tokenFilter != tokenFilter2) {
            TokenFilter u9 = this.f13844j.u(tokenFilter);
            if (u9 == null) {
                return;
            }
            if (u9 != tokenFilter2 && !u9.r()) {
                return;
            }
            a2();
        }
        this.f14284e.g1(cArr, i4, i10);
    }

    public int g2() {
        return this.f13846l;
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public f h0() {
        return this.f13844j;
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void r1(Object obj) throws IOException {
        if (this.f13845k != null) {
            this.f14284e.r1(obj);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void s1(Object obj) throws IOException {
        if (this.f13845k != null) {
            this.f14284e.s1(obj);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void t1(String str) throws IOException {
        if (this.f13845k != null) {
            this.f14284e.t1(str);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void w1(char c10) throws IOException {
        if (d2()) {
            this.f14284e.w1(c10);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void x1(j jVar) throws IOException {
        if (d2()) {
            this.f14284e.x1(jVar);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void y1(String str) throws IOException {
        if (d2()) {
            this.f14284e.y1(str);
        }
    }

    @Override // com.fasterxml.jackson.core.util.g, com.fasterxml.jackson.core.JsonGenerator
    public void z1(String str, int i4, int i10) throws IOException {
        if (d2()) {
            this.f14284e.z1(str, i4, i10);
        }
    }

    public a(JsonGenerator jsonGenerator, TokenFilter tokenFilter, TokenFilter.Inclusion inclusion, boolean z9) {
        super(jsonGenerator, false);
        this.f13841g = tokenFilter;
        this.f13845k = tokenFilter;
        this.f13844j = d.z(tokenFilter);
        this.f13843i = inclusion;
        this.f13842h = z9;
    }
}
