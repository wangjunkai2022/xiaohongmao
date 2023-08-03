package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.core.Version;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: JsonParserDelegate.java */
/* loaded from: classes.dex */
public class h extends JsonParser {

    /* renamed from: h  reason: collision with root package name */
    protected JsonParser f14286h;

    public h(JsonParser jsonParser) {
        this.f14286h = jsonParser;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object A0() throws IOException {
        return this.f14286h.A0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void A1(String str) {
        this.f14286h.A1(str);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int B0() {
        return this.f14286h.B0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser B1(int i4, int i10) {
        this.f14286h.B1(i4, i10);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public float C0() throws IOException {
        return this.f14286h.C0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser C1(int i4, int i10) {
        this.f14286h.C1(i4, i10);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void D(Object obj) {
        this.f14286h.D(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int D1(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        return this.f14286h.D1(base64Variant, outputStream);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object E0() {
        return this.f14286h.E0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int F0() throws IOException {
        return this.f14286h.F0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean G() {
        return this.f14286h.G();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken G0() {
        return this.f14286h.G0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean H() {
        return this.f14286h.H();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long H0() throws IOException {
        return this.f14286h.H0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean I(com.fasterxml.jackson.core.c cVar) {
        return this.f14286h.I(cVar);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void J() {
        this.f14286h.J();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser.NumberType J0() throws IOException {
        return this.f14286h.J0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Number K0() throws IOException {
        return this.f14286h.K0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation L() {
        return this.f14286h.t0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Number L0() throws IOException {
        return this.f14286h.L0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String M() throws IOException {
        return this.f14286h.M();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object M0() throws IOException {
        return this.f14286h.M0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean M1() {
        return this.f14286h.M1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public com.fasterxml.jackson.core.f N0() {
        return this.f14286h.N0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void N1(com.fasterxml.jackson.core.h hVar) {
        this.f14286h.N1(hVar);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public f<StreamReadCapability> O0() {
        return this.f14286h.O0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void O1(Object obj) {
        this.f14286h.O1(obj);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public com.fasterxml.jackson.core.c P0() {
        return this.f14286h.P0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    @Deprecated
    public JsonParser P1(int i4) {
        this.f14286h.P1(i4);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public short Q0() throws IOException {
        return this.f14286h.Q0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int R0(Writer writer) throws IOException, UnsupportedOperationException {
        return this.f14286h.R0(writer);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String S0() throws IOException {
        return this.f14286h.S0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public char[] T0() throws IOException {
        return this.f14286h.T0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void T1(com.fasterxml.jackson.core.c cVar) {
        this.f14286h.T1(cVar);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int U0() throws IOException {
        return this.f14286h.U0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser U1() throws IOException {
        this.f14286h.U1();
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int V0() throws IOException {
        return this.f14286h.V0();
    }

    public JsonParser V1() {
        return this.f14286h;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken W() {
        return this.f14286h.W();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation W0() {
        return this.f14286h.W0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int X() {
        return this.f14286h.X();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object X0() throws IOException {
        return this.f14286h.X0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean Y0() throws IOException {
        return this.f14286h.Y0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean Z0(boolean z9) throws IOException {
        return this.f14286h.Z0(z9);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public double a1() throws IOException {
        return this.f14286h.a1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation b0() {
        return this.f14286h.W0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public double b1(double d4) throws IOException {
        return this.f14286h.b1(d4);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int c1() throws IOException {
        return this.f14286h.c1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f14286h.close();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object d0() {
        return this.f14286h.d0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int d1(int i4) throws IOException {
        return this.f14286h.d1(i4);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long e1() throws IOException {
        return this.f14286h.e1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public long f1(long j4) throws IOException {
        return this.f14286h.f1(j4);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser g0(JsonParser.Feature feature) {
        this.f14286h.g0(feature);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String g1() throws IOException {
        return this.f14286h.g1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonParser h0(JsonParser.Feature feature) {
        this.f14286h.h0(feature);
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String h1(String str) throws IOException {
        return this.f14286h.h1(str);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean i1() {
        return this.f14286h.i1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean isClosed() {
        return this.f14286h.isClosed();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean j1() {
        return this.f14286h.j1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean k1(JsonToken jsonToken) {
        return this.f14286h.k1(jsonToken);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void l0() throws IOException {
        this.f14286h.l0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean l1(int i4) {
        return this.f14286h.l1(i4);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean m1(JsonParser.Feature feature) {
        return this.f14286h.m1(feature);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigInteger n0() throws IOException {
        return this.f14286h.n0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean o1() {
        return this.f14286h.o1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public byte[] p0(Base64Variant base64Variant) throws IOException {
        return this.f14286h.p0(base64Variant);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean p1() {
        return this.f14286h.p1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean q0() throws IOException {
        return this.f14286h.q0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean q1() {
        return this.f14286h.q1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public byte r0() throws IOException {
        return this.f14286h.r0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean r1() throws IOException {
        return this.f14286h.r1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public com.fasterxml.jackson.core.h s0() {
        return this.f14286h.s0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonLocation t0() {
        return this.f14286h.t0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String u0() throws IOException {
        return this.f14286h.u0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken v0() {
        return this.f14286h.v0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.core.n
    public Version version() {
        return this.f14286h.version();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    @Deprecated
    public int w0() {
        return this.f14286h.w0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object x0() {
        return this.f14286h.x0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public BigDecimal y0() throws IOException {
        return this.f14286h.y0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken y1() throws IOException {
        return this.f14286h.y1();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public double z0() throws IOException {
        return this.f14286h.z0();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public JsonToken z1() throws IOException {
        return this.f14286h.z1();
    }
}
