package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TimeCodeBox.java */
/* loaded from: classes2.dex */
public class u0 extends com.googlecode.mp4parser.a implements com.coremedia.iso.boxes.sampleentry.f {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;
    private static final /* synthetic */ c.b G = null;
    private static final /* synthetic */ c.b H = null;
    private static final /* synthetic */ c.b I = null;
    private static final /* synthetic */ c.b J = null;
    private static final /* synthetic */ c.b K = null;
    private static final /* synthetic */ c.b L = null;
    private static final /* synthetic */ c.b M = null;

    /* renamed from: v  reason: collision with root package name */
    public static final String f36529v = "tmcd";

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36530w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36531x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36532y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36533z = null;

    /* renamed from: n  reason: collision with root package name */
    int f36534n;

    /* renamed from: o  reason: collision with root package name */
    int f36535o;

    /* renamed from: p  reason: collision with root package name */
    int f36536p;

    /* renamed from: q  reason: collision with root package name */
    int f36537q;

    /* renamed from: r  reason: collision with root package name */
    int f36538r;

    /* renamed from: s  reason: collision with root package name */
    long f36539s;

    /* renamed from: t  reason: collision with root package name */
    int f36540t;

    /* renamed from: u  reason: collision with root package name */
    byte[] f36541u;

    static {
        s();
    }

    public u0() {
        super(f36529v);
        this.f36541u = new byte[0];
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TimeCodeBox.java", u0.class);
        f36530w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataReferenceIndex", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 81);
        f36531x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDataReferenceIndex", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "dataReferenceIndex", "", "void"), 85);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved1", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "reserved1", "", "void"), com.google.android.exoplayer2.extractor.ts.h0.I);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved2", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), com.google.android.exoplayer2.extractor.ts.h0.Q);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved2", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "reserved2", "", "void"), com.google.android.exoplayer2.extractor.ts.h0.H);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFlags", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "long"), 142);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setFlags", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "long", "flags", "", "void"), 146);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getRest", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "[B"), 150);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setRest", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "[B", "rest", "", "void"), 154);
        f36532y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "java.lang.String"), 91);
        f36533z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTimeScale", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 102);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTimeScale", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "timeScale", "", "void"), 106);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFrameDuration", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 110);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setFrameDuration", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "frameDuration", "", "void"), 114);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getNumberOfFrames", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 118);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setNumberOfFrames", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "numberOfFrames", "", "void"), 122);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved1", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 126);
    }

    public void A(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(K, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f36539s = j4;
    }

    public void B(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36535o = i4;
    }

    public void C(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36536p = i4;
    }

    public void D(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36537q = i4;
    }

    public void E(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36538r = i4;
    }

    public void F(byte[] bArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(M, this, this, bArr));
        this.f36541u = bArr;
    }

    public void G(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36534n = i4;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        byteBuffer.position(6);
        this.f36540t = com.coremedia.iso.g.i(byteBuffer);
        this.f36537q = byteBuffer.getInt();
        this.f36539s = com.coremedia.iso.g.l(byteBuffer);
        this.f36534n = byteBuffer.getInt();
        this.f36535o = byteBuffer.getInt();
        this.f36536p = com.coremedia.iso.g.p(byteBuffer);
        this.f36538r = com.coremedia.iso.g.k(byteBuffer);
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.f36541u = bArr;
        byteBuffer.get(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(new byte[6]);
        com.coremedia.iso.i.f(byteBuffer, this.f36540t);
        byteBuffer.putInt(this.f36537q);
        com.coremedia.iso.i.i(byteBuffer, this.f36539s);
        byteBuffer.putInt(this.f36534n);
        byteBuffer.putInt(this.f36535o);
        com.coremedia.iso.i.m(byteBuffer, this.f36536p);
        com.coremedia.iso.i.h(byteBuffer, this.f36538r);
        byteBuffer.put(this.f36541u);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.f
    public void d(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36531x, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36540t = i4;
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f36541u.length + 28;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.f
    public int i() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36530w, this, this));
        return this.f36540t;
    }

    public long t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f36539s;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36532y, this, this));
        return "TimeCodeBox{timeScale=" + this.f36534n + ", frameDuration=" + this.f36535o + ", numberOfFrames=" + this.f36536p + ", reserved1=" + this.f36537q + ", reserved2=" + this.f36538r + ", flags=" + this.f36539s + '}';
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f36535o;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f36536p;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f36537q;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f36538r;
    }

    public byte[] y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f36541u;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36533z, this, this));
        return this.f36534n;
    }
}
