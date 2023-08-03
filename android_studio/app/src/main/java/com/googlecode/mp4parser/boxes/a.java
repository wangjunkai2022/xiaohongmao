package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AC3SpecificBox.java */
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.a {
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

    /* renamed from: u  reason: collision with root package name */
    public static final String f36438u = "dac3";

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36439v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36440w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36441x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36442y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36443z = null;

    /* renamed from: n  reason: collision with root package name */
    int f36444n;

    /* renamed from: o  reason: collision with root package name */
    int f36445o;

    /* renamed from: p  reason: collision with root package name */
    int f36446p;

    /* renamed from: q  reason: collision with root package name */
    int f36447q;

    /* renamed from: r  reason: collision with root package name */
    int f36448r;

    /* renamed from: s  reason: collision with root package name */
    int f36449s;

    /* renamed from: t  reason: collision with root package name */
    int f36450t;

    static {
        s();
    }

    public a() {
        super(f36438u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AC3SpecificBox.java", a.class);
        f36439v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFscod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 55);
        f36440w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setFscod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "fscod", "", "void"), 59);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBitRateCode", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 95);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBitRateCode", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "bitRateCode", "", "void"), 99);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 103);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "reserved", "", "void"), 107);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "java.lang.String"), 112);
        f36441x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBsid", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 63);
        f36442y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBsid", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "bsid", "", "void"), 67);
        f36443z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBsmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 71);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBsmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "bsmod", "", "void"), 75);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAcmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 79);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAcmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "acmod", "", "void"), 83);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLfeon", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 87);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLfeon", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "lfeon", "", "void"), 91);
    }

    public void A(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36447q = i4;
    }

    public void B(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36449s = i4;
    }

    public void C(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36442y, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36445o = i4;
    }

    public void D(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36446p = i4;
    }

    public void E(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36440w, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36444n = i4;
    }

    public void F(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36448r = i4;
    }

    public void G(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36450t = i4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
        this.f36444n = cVar.c(2);
        this.f36445o = cVar.c(5);
        this.f36446p = cVar.c(3);
        this.f36447q = cVar.c(3);
        this.f36448r = cVar.c(1);
        this.f36449s = cVar.c(5);
        this.f36450t = cVar.c(5);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
        dVar.a(this.f36444n, 2);
        dVar.a(this.f36445o, 5);
        dVar.a(this.f36446p, 3);
        dVar.a(this.f36447q, 3);
        dVar.a(this.f36448r, 1);
        dVar.a(this.f36449s, 5);
        dVar.a(this.f36450t, 5);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 3L;
    }

    public int t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f36447q;
    }

    public String toString() {
        j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return "AC3SpecificBox{fscod=" + this.f36444n + ", bsid=" + this.f36445o + ", bsmod=" + this.f36446p + ", acmod=" + this.f36447q + ", lfeon=" + this.f36448r + ", bitRateCode=" + this.f36449s + ", reserved=" + this.f36450t + '}';
    }

    public int u() {
        j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f36449s;
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36441x, this, this));
        return this.f36445o;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36443z, this, this));
        return this.f36446p;
    }

    public int x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36439v, this, this));
        return this.f36444n;
    }

    public int y() {
        j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f36448r;
    }

    public int z() {
        j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f36450t;
    }
}
