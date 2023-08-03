package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.StreamWriteCapability;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.m;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: JsonGeneratorDelegate.java */
/* loaded from: classes.dex */
public class g extends JsonGenerator {

    /* renamed from: e  reason: collision with root package name */
    protected JsonGenerator f14284e;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f14285f;

    public g(JsonGenerator jsonGenerator) {
        this(jsonGenerator, true);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean A() {
        return this.f14284e.A();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator A0(com.fasterxml.jackson.core.j jVar) {
        this.f14284e.A0(jVar);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void A1(char[] cArr, int i4, int i10) throws IOException {
        this.f14284e.A1(cArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void B0(com.fasterxml.jackson.core.c cVar) {
        this.f14284e.B0(cVar);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void B1(byte[] bArr, int i4, int i10) throws IOException {
        this.f14284e.B1(bArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator C0() {
        this.f14284e.C0();
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean D() {
        return this.f14284e.D();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void D0(double[] dArr, int i4, int i10) throws IOException {
        this.f14284e.D0(dArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void D1(String str) throws IOException {
        this.f14284e.D1(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void E0(int[] iArr, int i4, int i10) throws IOException {
        this.f14284e.E0(iArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void E1(String str, int i4, int i10) throws IOException {
        this.f14284e.E1(str, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void F0(long[] jArr, int i4, int i10) throws IOException {
        this.f14284e.F0(jArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void F1(char[] cArr, int i4, int i10) throws IOException {
        this.f14284e.F1(cArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void G(JsonParser jsonParser) throws IOException {
        if (this.f14285f) {
            this.f14284e.G(jsonParser);
        } else {
            super.G(jsonParser);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void G0(String[] strArr, int i4, int i10) throws IOException {
        this.f14284e.G0(strArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void G1() throws IOException {
        this.f14284e.G1();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void H(JsonParser jsonParser) throws IOException {
        if (this.f14285f) {
            this.f14284e.H(jsonParser);
        } else {
            super.H(jsonParser);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void H1(int i4) throws IOException {
        this.f14284e.H1(i4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object I() {
        return this.f14284e.I();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int I0(Base64Variant base64Variant, InputStream inputStream, int i4) throws IOException {
        return this.f14284e.I0(base64Variant, inputStream, i4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void I1(Object obj) throws IOException {
        this.f14284e.I1(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator J(JsonGenerator.Feature feature) {
        this.f14284e.J(feature);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void J1(Object obj, int i4) throws IOException {
        this.f14284e.J1(obj, i4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator K(JsonGenerator.Feature feature) {
        this.f14284e.K(feature);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void K0(Base64Variant base64Variant, byte[] bArr, int i4, int i10) throws IOException {
        this.f14284e.K0(base64Variant, bArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void K1() throws IOException {
        this.f14284e.K1();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public CharacterEscapes L() {
        return this.f14284e.L();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void L1(Object obj) throws IOException {
        this.f14284e.L1(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public com.fasterxml.jackson.core.h M() {
        return this.f14284e.M();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void M1(Object obj, int i4) throws IOException {
        this.f14284e.M1(obj, i4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void N1(com.fasterxml.jackson.core.j jVar) throws IOException {
        this.f14284e.N1(jVar);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void O0(boolean z9) throws IOException {
        this.f14284e.O0(z9);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void O1(Reader reader, int i4) throws IOException {
        this.f14284e.O1(reader, i4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void P1(String str) throws IOException {
        this.f14284e.P1(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Q0(Object obj) throws IOException {
        this.f14284e.Q0(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Q1(char[] cArr, int i4, int i10) throws IOException {
        this.f14284e.Q1(cArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void R0() throws IOException {
        this.f14284e.R0();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void S0() throws IOException {
        this.f14284e.S0();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void S1(m mVar) throws IOException {
        if (this.f14285f) {
            this.f14284e.S1(mVar);
        } else if (mVar == null) {
            W0();
        } else {
            com.fasterxml.jackson.core.h M = M();
            if (M != null) {
                M.writeTree(this, mVar);
                return;
            }
            throw new IllegalStateException("No ObjectCodec defined");
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void T0(long j4) throws IOException {
        this.f14284e.T0(j4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void T1(Object obj) throws IOException {
        this.f14284e.T1(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void U0(com.fasterxml.jackson.core.j jVar) throws IOException {
        this.f14284e.U0(jVar);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void V0(String str) throws IOException {
        this.f14284e.V0(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object W() {
        return this.f14284e.W();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void W0() throws IOException {
        this.f14284e.W0();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void W1(byte[] bArr, int i4, int i10) throws IOException {
        this.f14284e.W1(bArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int X() {
        return this.f14284e.X();
    }

    public JsonGenerator X1() {
        return this.f14284e;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Y0(double d4) throws IOException {
        this.f14284e.Y0(d4);
    }

    @Deprecated
    public JsonGenerator Y1() {
        return this.f14284e;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Z0(float f10) throws IOException {
        this.f14284e.Z0(f10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void a1(int i4) throws IOException {
        this.f14284e.a1(i4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void b1(long j4) throws IOException {
        this.f14284e.b1(j4);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void c1(String str) throws IOException, UnsupportedOperationException {
        this.f14284e.c1(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f14284e.close();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int d0() {
        return this.f14284e.d0();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void d1(BigDecimal bigDecimal) throws IOException {
        this.f14284e.d1(bigDecimal);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void e1(BigInteger bigInteger) throws IOException {
        this.f14284e.e1(bigInteger);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void f1(short s9) throws IOException {
        this.f14284e.f1(s9);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        this.f14284e.flush();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int g0() {
        return this.f14284e.g0();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void g1(char[] cArr, int i4, int i10) throws IOException, UnsupportedOperationException {
        this.f14284e.g1(cArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public com.fasterxml.jackson.core.f h0() {
        return this.f14284e.h0();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean isClosed() {
        return this.f14284e.isClosed();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object l0() {
        return this.f14284e.l0();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public com.fasterxml.jackson.core.i n0() {
        return this.f14284e.n0();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public com.fasterxml.jackson.core.c o0() {
        return this.f14284e.o0();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void o1(Object obj) throws IOException {
        if (this.f14285f) {
            this.f14284e.o1(obj);
        } else if (obj == null) {
            W0();
        } else {
            com.fasterxml.jackson.core.h M = M();
            if (M != null) {
                M.writeValue(this, obj);
            } else {
                k(obj);
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void p(Object obj) {
        this.f14284e.p(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public f<StreamWriteCapability> p0() {
        return this.f14284e.p0();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean q() {
        return this.f14284e.q();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean q0(JsonGenerator.Feature feature) {
        return this.f14284e.q0(feature);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean r(com.fasterxml.jackson.core.c cVar) {
        return this.f14284e.r(cVar);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void r1(Object obj) throws IOException {
        this.f14284e.r1(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean s() {
        return this.f14284e.s();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator s0(int i4, int i10) {
        this.f14284e.s0(i4, i10);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void s1(Object obj) throws IOException {
        this.f14284e.s1(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator t0(int i4, int i10) {
        this.f14284e.t0(i4, i10);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void t1(String str) throws IOException {
        this.f14284e.t1(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator u0(CharacterEscapes characterEscapes) {
        this.f14284e.u0(characterEscapes);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void u1(Object obj) throws IOException {
        o1(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator v0(com.fasterxml.jackson.core.h hVar) {
        this.f14284e.v0(hVar);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.core.n
    public Version version() {
        return this.f14284e.version();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void w0(Object obj) {
        this.f14284e.w0(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void w1(char c10) throws IOException {
        this.f14284e.w1(c10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    @Deprecated
    public JsonGenerator x0(int i4) {
        this.f14284e.x0(i4);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void x1(com.fasterxml.jackson.core.j jVar) throws IOException {
        this.f14284e.x1(jVar);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean y() {
        return this.f14284e.y();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator y0(int i4) {
        this.f14284e.y0(i4);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void y1(String str) throws IOException {
        this.f14284e.y1(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator z0(com.fasterxml.jackson.core.i iVar) {
        this.f14284e.z0(iVar);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void z1(String str, int i4, int i10) throws IOException {
        this.f14284e.z1(str, i4, i10);
    }

    public g(JsonGenerator jsonGenerator, boolean z9) {
        this.f14284e = jsonGenerator;
        this.f14285f = z9;
    }
}
