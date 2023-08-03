package com.mp4parser.iso14496.part15;

import com.google.android.exoplayer2.extractor.ts.h0;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TierInfoBox.java */
/* loaded from: classes3.dex */
public class k extends com.googlecode.mp4parser.a {
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
    private static final /* synthetic */ c.b P = null;
    private static final /* synthetic */ c.b Q = null;
    private static final /* synthetic */ c.b R = null;
    private static final /* synthetic */ c.b S = null;
    private static final /* synthetic */ c.b T = null;
    private static final /* synthetic */ c.b U = null;

    /* renamed from: y  reason: collision with root package name */
    public static final String f47061y = "tiri";

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f47062z = null;

    /* renamed from: n  reason: collision with root package name */
    int f47063n;

    /* renamed from: o  reason: collision with root package name */
    int f47064o;

    /* renamed from: p  reason: collision with root package name */
    int f47065p;

    /* renamed from: q  reason: collision with root package name */
    int f47066q;

    /* renamed from: r  reason: collision with root package name */
    int f47067r;

    /* renamed from: s  reason: collision with root package name */
    int f47068s;

    /* renamed from: t  reason: collision with root package name */
    int f47069t;

    /* renamed from: u  reason: collision with root package name */
    int f47070u;

    /* renamed from: v  reason: collision with root package name */
    int f47071v;

    /* renamed from: w  reason: collision with root package name */
    int f47072w;

    /* renamed from: x  reason: collision with root package name */
    int f47073x;

    static {
        s();
    }

    public k() {
        super(f47061y);
        this.f47067r = 0;
        this.f47072w = 0;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TierInfoBox.java", k.class);
        f47062z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTierID", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 69);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTierID", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "tierID", "", "void"), 73);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getVisualWidth", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 109);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setVisualWidth", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "visualWidth", "", "void"), 113);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getVisualHeight", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 117);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setVisualHeight", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "visualHeight", "", "void"), 121);
        N = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDiscardable", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 125);
        O = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDiscardable", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "discardable", "", "void"), h0.G);
        P = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getConstantFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 133);
        Q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setConstantFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "constantFrameRate", "", "void"), 137);
        R = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved2", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 141);
        S = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved2", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "reserved2", "", "void"), 145);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getProfileIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 77);
        T = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 149);
        U = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "frameRate", "", "void"), 153);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setProfileIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "profileIndication", "", "void"), 81);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getProfile_compatibility", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 85);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setProfile_compatibility", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "profile_compatibility", "", "void"), 89);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLevelIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 93);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLevelIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "levelIndication", "", "void"), 97);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved1", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 101);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved1", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "reserved1", "", "void"), 105);
    }

    public int A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(R, this, this));
        return this.f47072w;
    }

    public int B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f47062z, this, this));
        return this.f47063n;
    }

    public int C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f47069t;
    }

    public int D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f47068s;
    }

    public void E(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(Q, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47071v = i4;
    }

    public void F(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(O, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47070u = i4;
    }

    public void G(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(U, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47073x = i4;
    }

    public void H(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47066q = i4;
    }

    public void I(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47064o = i4;
    }

    public void J(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47065p = i4;
    }

    public void K(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47067r = i4;
    }

    public void L(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(S, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47072w = i4;
    }

    public void M(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47063n = i4;
    }

    public void N(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(M, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47069t = i4;
    }

    public void O(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(K, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47068s = i4;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f47063n = com.coremedia.iso.g.i(byteBuffer);
        this.f47064o = com.coremedia.iso.g.p(byteBuffer);
        this.f47065p = com.coremedia.iso.g.p(byteBuffer);
        this.f47066q = com.coremedia.iso.g.p(byteBuffer);
        this.f47067r = com.coremedia.iso.g.p(byteBuffer);
        this.f47068s = com.coremedia.iso.g.i(byteBuffer);
        this.f47069t = com.coremedia.iso.g.i(byteBuffer);
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        this.f47070u = (p9 & 192) >> 6;
        this.f47071v = (p9 & 48) >> 4;
        this.f47072w = p9 & 15;
        this.f47073x = com.coremedia.iso.g.i(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.f(byteBuffer, this.f47063n);
        com.coremedia.iso.i.m(byteBuffer, this.f47064o);
        com.coremedia.iso.i.m(byteBuffer, this.f47065p);
        com.coremedia.iso.i.m(byteBuffer, this.f47066q);
        com.coremedia.iso.i.m(byteBuffer, this.f47067r);
        com.coremedia.iso.i.f(byteBuffer, this.f47068s);
        com.coremedia.iso.i.f(byteBuffer, this.f47069t);
        com.coremedia.iso.i.m(byteBuffer, (this.f47070u << 6) + (this.f47071v << 4) + this.f47072w);
        com.coremedia.iso.i.f(byteBuffer, this.f47073x);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 13L;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(P, this, this));
        return this.f47071v;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(N, this, this));
        return this.f47070u;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(T, this, this));
        return this.f47073x;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f47066q;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f47064o;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f47065p;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f47067r;
    }
}
