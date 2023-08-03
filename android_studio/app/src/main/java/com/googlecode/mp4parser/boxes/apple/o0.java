package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: BaseMediaInfoAtom.java */
/* loaded from: classes2.dex */
public class o0 extends com.googlecode.mp4parser.c {
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

    /* renamed from: x  reason: collision with root package name */
    public static final String f36480x = "gmin";

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36481y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36482z = null;

    /* renamed from: r  reason: collision with root package name */
    short f36483r;

    /* renamed from: s  reason: collision with root package name */
    int f36484s;

    /* renamed from: t  reason: collision with root package name */
    int f36485t;

    /* renamed from: u  reason: collision with root package name */
    int f36486u;

    /* renamed from: v  reason: collision with root package name */
    short f36487v;

    /* renamed from: w  reason: collision with root package name */
    short f36488w;

    static {
        s();
    }

    public o0() {
        super(f36480x);
        this.f36483r = (short) 64;
        this.f36484s = 32768;
        this.f36485t = 32768;
        this.f36486u = 32768;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("BaseMediaInfoAtom.java", o0.class);
        f36481y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGraphicsMode", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "short"), 54);
        f36482z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setGraphicsMode", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "short", "graphicsMode", "", "void"), 58);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "short"), 94);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "short", "reserved", "", "void"), 98);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "java.lang.String"), 103);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getOpColorR", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "int"), 62);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setOpColorR", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "int", "opColorR", "", "void"), 66);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getOpColorG", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "int"), 70);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setOpColorG", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "int", "opColorG", "", "void"), 74);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getOpColorB", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "int"), 78);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setOpColorB", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "int", "opColorB", "", "void"), 82);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBalance", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "short"), 86);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBalance", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "short", "balance", "", "void"), 90);
    }

    public short A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f36488w;
    }

    public void B(short s9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.o(s9)));
        this.f36487v = s9;
    }

    public void C(short s9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36482z, this, this, org.aspectj.runtime.internal.e.o(s9)));
        this.f36483r = s9;
    }

    public void D(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36486u = i4;
    }

    public void E(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36485t = i4;
    }

    public void F(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36484s = i4;
    }

    public void G(short s9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, org.aspectj.runtime.internal.e.o(s9)));
        this.f36488w = s9;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f36483r = byteBuffer.getShort();
        this.f36484s = com.coremedia.iso.g.i(byteBuffer);
        this.f36485t = com.coremedia.iso.g.i(byteBuffer);
        this.f36486u = com.coremedia.iso.g.i(byteBuffer);
        this.f36487v = byteBuffer.getShort();
        this.f36488w = byteBuffer.getShort();
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.putShort(this.f36483r);
        com.coremedia.iso.i.f(byteBuffer, this.f36484s);
        com.coremedia.iso.i.f(byteBuffer, this.f36485t);
        com.coremedia.iso.i.f(byteBuffer, this.f36486u);
        byteBuffer.putShort(this.f36487v);
        byteBuffer.putShort(this.f36488w);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 16L;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return "BaseMediaInfoAtom{graphicsMode=" + ((int) this.f36483r) + ", opColorR=" + this.f36484s + ", opColorG=" + this.f36485t + ", opColorB=" + this.f36486u + ", balance=" + ((int) this.f36487v) + ", reserved=" + ((int) this.f36488w) + '}';
    }

    public short v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f36487v;
    }

    public short w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36481y, this, this));
        return this.f36483r;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f36486u;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f36485t;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f36484s;
    }
}
