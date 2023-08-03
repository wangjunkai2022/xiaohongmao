package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: GenericMediaHeaderTextAtom.java */
/* loaded from: classes2.dex */
public class r0 extends com.googlecode.mp4parser.a {
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
    private static final /* synthetic */ c.b N = null;
    private static final /* synthetic */ c.b O = null;

    /* renamed from: w  reason: collision with root package name */
    public static final String f36497w = "text";

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36498x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36499y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36500z = null;

    /* renamed from: n  reason: collision with root package name */
    int f36501n;

    /* renamed from: o  reason: collision with root package name */
    int f36502o;

    /* renamed from: p  reason: collision with root package name */
    int f36503p;

    /* renamed from: q  reason: collision with root package name */
    int f36504q;

    /* renamed from: r  reason: collision with root package name */
    int f36505r;

    /* renamed from: s  reason: collision with root package name */
    int f36506s;

    /* renamed from: t  reason: collision with root package name */
    int f36507t;

    /* renamed from: u  reason: collision with root package name */
    int f36508u;

    /* renamed from: v  reason: collision with root package name */
    int f36509v;

    static {
        s();
    }

    public r0() {
        super("text");
        this.f36501n = 65536;
        this.f36505r = 65536;
        this.f36509v = 1073741824;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("GenericMediaHeaderTextAtom.java", r0.class);
        f36498x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown_1", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 60);
        f36499y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown_1", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_1", "", "void"), 64);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown_6", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 100);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown_6", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_6", "", "void"), 104);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown_7", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 108);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown_7", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_7", "", "void"), 112);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown_8", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 116);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown_8", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_8", "", "void"), 120);
        N = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown_9", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 124);
        O = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown_9", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_9", "", "void"), 128);
        f36500z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown_2", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 68);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown_2", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_2", "", "void"), 72);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown_3", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 76);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown_3", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_3", "", "void"), 80);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown_4", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 84);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown_4", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_4", "", "void"), 88);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown_5", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 92);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown_5", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_5", "", "void"), 96);
    }

    public int A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f36508u;
    }

    public int B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(N, this, this));
        return this.f36509v;
    }

    public void C(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36499y, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36501n = i4;
    }

    public void D(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36502o = i4;
    }

    public void E(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36503p = i4;
    }

    public void F(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36504q = i4;
    }

    public void G(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36505r = i4;
    }

    public void H(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36506s = i4;
    }

    public void I(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(K, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36507t = i4;
    }

    public void J(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(M, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36508u = i4;
    }

    public void K(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(O, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36509v = i4;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f36501n = byteBuffer.getInt();
        this.f36502o = byteBuffer.getInt();
        this.f36503p = byteBuffer.getInt();
        this.f36504q = byteBuffer.getInt();
        this.f36505r = byteBuffer.getInt();
        this.f36506s = byteBuffer.getInt();
        this.f36507t = byteBuffer.getInt();
        this.f36508u = byteBuffer.getInt();
        this.f36509v = byteBuffer.getInt();
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.putInt(this.f36501n);
        byteBuffer.putInt(this.f36502o);
        byteBuffer.putInt(this.f36503p);
        byteBuffer.putInt(this.f36504q);
        byteBuffer.putInt(this.f36505r);
        byteBuffer.putInt(this.f36506s);
        byteBuffer.putInt(this.f36507t);
        byteBuffer.putInt(this.f36508u);
        byteBuffer.putInt(this.f36509v);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 36L;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36498x, this, this));
        return this.f36501n;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36500z, this, this));
        return this.f36502o;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f36503p;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f36504q;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f36505r;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f36506s;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f36507t;
    }
}
