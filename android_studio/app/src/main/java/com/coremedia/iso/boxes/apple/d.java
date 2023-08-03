package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.i;
import com.facebook.imagepipeline.producers.n;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AppleLosslessSpecificBox.java */
/* loaded from: classes.dex */
public final class d extends com.googlecode.mp4parser.c {
    public static final String C = "alac";
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
    private static final /* synthetic */ c.b V = null;
    private static final /* synthetic */ c.b W = null;

    /* renamed from: b1  reason: collision with root package name */
    private static final /* synthetic */ c.b f9941b1 = null;

    /* renamed from: g1  reason: collision with root package name */
    private static final /* synthetic */ c.b f9942g1 = null;
    private long A;
    private long B;

    /* renamed from: r  reason: collision with root package name */
    private long f9943r;

    /* renamed from: s  reason: collision with root package name */
    private int f9944s;

    /* renamed from: t  reason: collision with root package name */
    private int f9945t;

    /* renamed from: u  reason: collision with root package name */
    private int f9946u;

    /* renamed from: v  reason: collision with root package name */
    private int f9947v;

    /* renamed from: w  reason: collision with root package name */
    private int f9948w;

    /* renamed from: x  reason: collision with root package name */
    private int f9949x;

    /* renamed from: y  reason: collision with root package name */
    private int f9950y;

    /* renamed from: z  reason: collision with root package name */
    private long f9951z;

    static {
        s();
    }

    public d() {
        super("alac");
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleLosslessSpecificBox.java", d.class);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMaxSamplePerFrame", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "long"), 34);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMaxSamplePerFrame", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "maxSamplePerFrame", "", "void"), 38);
        N = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getKModifier", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 74);
        O = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setKModifier", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "kModifier", "", "void"), 78);
        P = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getChannels", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 82);
        Q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setChannels", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "channels", "", "void"), 86);
        R = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown2", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 90);
        S = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown2", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "unknown2", "", "void"), 94);
        T = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMaxCodedFrameSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "long"), 98);
        U = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMaxCodedFrameSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "maxCodedFrameSize", "", "void"), 102);
        V = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBitRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "long"), 106);
        W = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBitRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "bitRate", "", "void"), 110);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getUnknown1", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 42);
        f9941b1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "long"), 114);
        f9942g1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "sampleRate", "", "void"), 118);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setUnknown1", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "unknown1", "", "void"), 46);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 50);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", n.f13108v, "", "void"), 54);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getHistoryMult", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 58);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setHistoryMult", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "historyMult", "", "void"), 62);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getInitialHistory", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 66);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setInitialHistory", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "initialHistory", "", "void"), 70);
    }

    public long A() {
        j.b().c(org.aspectj.runtime.reflect.e.v(T, this, this));
        return this.f9951z;
    }

    public long B() {
        j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f9943r;
    }

    public long C() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f9941b1, this, this));
        return this.B;
    }

    public int D() {
        j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f9945t;
    }

    public int E() {
        j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f9944s;
    }

    public int F() {
        j.b().c(org.aspectj.runtime.reflect.e.v(R, this, this));
        return this.f9950y;
    }

    public void G(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(W, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.A = i4;
    }

    public void H(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(Q, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9949x = i4;
    }

    public void I(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(K, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9946u = i4;
    }

    public void J(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(M, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9947v = i4;
    }

    public void K(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(O, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9948w = i4;
    }

    public void L(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(U, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9951z = i4;
    }

    public void M(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9943r = i4;
    }

    public void N(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f9942g1, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.B = i4;
    }

    public void O(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9945t = i4;
    }

    public void P(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9944s = i4;
    }

    public void Q(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(S, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9950y = i4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f9943r = com.coremedia.iso.g.l(byteBuffer);
        this.f9944s = com.coremedia.iso.g.p(byteBuffer);
        this.f9945t = com.coremedia.iso.g.p(byteBuffer);
        this.f9946u = com.coremedia.iso.g.p(byteBuffer);
        this.f9947v = com.coremedia.iso.g.p(byteBuffer);
        this.f9948w = com.coremedia.iso.g.p(byteBuffer);
        this.f9949x = com.coremedia.iso.g.p(byteBuffer);
        this.f9950y = com.coremedia.iso.g.i(byteBuffer);
        this.f9951z = com.coremedia.iso.g.l(byteBuffer);
        this.A = com.coremedia.iso.g.l(byteBuffer);
        this.B = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.i(byteBuffer, this.f9943r);
        i.m(byteBuffer, this.f9944s);
        i.m(byteBuffer, this.f9945t);
        i.m(byteBuffer, this.f9946u);
        i.m(byteBuffer, this.f9947v);
        i.m(byteBuffer, this.f9948w);
        i.m(byteBuffer, this.f9949x);
        i.f(byteBuffer, this.f9950y);
        i.i(byteBuffer, this.f9951z);
        i.i(byteBuffer, this.A);
        i.i(byteBuffer, this.B);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 28L;
    }

    public long v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(V, this, this));
        return this.A;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(P, this, this));
        return this.f9949x;
    }

    public int x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f9946u;
    }

    public int y() {
        j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f9947v;
    }

    public int z() {
        j.b().c(org.aspectj.runtime.reflect.e.v(N, this, this));
        return this.f9948w;
    }
}
