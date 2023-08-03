package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.mlkit.common.MlKitException;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: DTSSpecificBox.java */
/* loaded from: classes2.dex */
public class d extends com.googlecode.mp4parser.a {
    public static final String D = "ddts";
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b E2 = null;
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
    private static final /* synthetic */ c.b T1 = null;
    private static final /* synthetic */ c.b U = null;
    private static final /* synthetic */ c.b V = null;
    private static final /* synthetic */ c.b V1 = null;
    private static final /* synthetic */ c.b W = null;

    /* renamed from: b1  reason: collision with root package name */
    private static final /* synthetic */ c.b f36619b1 = null;

    /* renamed from: b2  reason: collision with root package name */
    private static final /* synthetic */ c.b f36620b2 = null;

    /* renamed from: g1  reason: collision with root package name */
    private static final /* synthetic */ c.b f36621g1 = null;

    /* renamed from: g2  reason: collision with root package name */
    private static final /* synthetic */ c.b f36622g2 = null;

    /* renamed from: p1  reason: collision with root package name */
    private static final /* synthetic */ c.b f36623p1 = null;

    /* renamed from: p2  reason: collision with root package name */
    private static final /* synthetic */ c.b f36624p2 = null;

    /* renamed from: x1  reason: collision with root package name */
    private static final /* synthetic */ c.b f36625x1 = null;

    /* renamed from: x2  reason: collision with root package name */
    private static final /* synthetic */ c.b f36626x2 = null;

    /* renamed from: y1  reason: collision with root package name */
    private static final /* synthetic */ c.b f36627y1 = null;

    /* renamed from: y2  reason: collision with root package name */
    private static final /* synthetic */ c.b f36628y2 = null;
    int A;
    int B;
    int C;

    /* renamed from: n  reason: collision with root package name */
    long f36629n;

    /* renamed from: o  reason: collision with root package name */
    long f36630o;

    /* renamed from: p  reason: collision with root package name */
    long f36631p;

    /* renamed from: q  reason: collision with root package name */
    int f36632q;

    /* renamed from: r  reason: collision with root package name */
    int f36633r;

    /* renamed from: s  reason: collision with root package name */
    int f36634s;

    /* renamed from: t  reason: collision with root package name */
    int f36635t;

    /* renamed from: u  reason: collision with root package name */
    int f36636u;

    /* renamed from: v  reason: collision with root package name */
    int f36637v;

    /* renamed from: w  reason: collision with root package name */
    int f36638w;

    /* renamed from: x  reason: collision with root package name */
    int f36639x;

    /* renamed from: y  reason: collision with root package name */
    int f36640y;

    /* renamed from: z  reason: collision with root package name */
    int f36641z;

    static {
        s();
    }

    public d() {
        super(D);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("DTSSpecificBox.java", d.class);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAvgBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "long"), 89);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAvgBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "long", "avgBitRate", "", "void"), 93);
        O = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getStreamConstruction", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), h0.G);
        P = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setStreamConstruction", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "streamConstruction", "", "void"), 133);
        Q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCoreLFEPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 137);
        R = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCoreLFEPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "coreLFEPresent", "", "void"), 141);
        S = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCoreLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 145);
        T = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCoreLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "coreLayout", "", "void"), 149);
        U = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCoreSize", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 153);
        V = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCoreSize", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "coreSize", "", "void"), 157);
        W = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getStereoDownmix", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 161);
        f36619b1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setStereoDownmix", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "stereoDownmix", "", "void"), 165);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDTSSamplingFrequency", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "long"), 97);
        f36621g1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getRepresentationType", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 169);
        f36623p1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setRepresentationType", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "representationType", "", "void"), 173);
        f36625x1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getChannelLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 177);
        f36627y1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setChannelLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "channelLayout", "", "void"), 181);
        T1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMultiAssetFlag", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 185);
        V1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMultiAssetFlag", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "multiAssetFlag", "", "void"), a0.f22979w);
        f36620b2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLBRDurationMod", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 193);
        f36622g2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLBRDurationMod", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "LBRDurationMod", "", "void"), 197);
        f36624p2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 201);
        f36626x2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "reserved", "", "void"), MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDTSSamplingFrequency", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "long", "DTSSamplingFrequency", "", "void"), 101);
        f36628y2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReservedBoxPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 209);
        E2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReservedBoxPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "reservedBoxPresent", "", "void"), 213);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMaxBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "long"), 105);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMaxBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "long", "maxBitRate", "", "void"), 109);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPcmSampleDepth", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 113);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPcmSampleDepth", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "pcmSampleDepth", "", "void"), 117);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFrameDuration", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 121);
        N = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setFrameDuration", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "frameDuration", "", "void"), 125);
    }

    public int A() {
        j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.f36633r;
    }

    public int B() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36620b2, this, this));
        return this.A;
    }

    public long C() {
        j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f36630o;
    }

    public int D() {
        j.b().c(org.aspectj.runtime.reflect.e.v(T1, this, this));
        return this.f36641z;
    }

    public int E() {
        j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f36632q;
    }

    public int F() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36621g1, this, this));
        return this.f36639x;
    }

    public int G() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36624p2, this, this));
        return this.C;
    }

    public int H() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36628y2, this, this));
        return this.B;
    }

    public int I() {
        j.b().c(org.aspectj.runtime.reflect.e.v(W, this, this));
        return this.f36638w;
    }

    public int J() {
        j.b().c(org.aspectj.runtime.reflect.e.v(O, this, this));
        return this.f36634s;
    }

    public void K(long j4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f36631p = j4;
    }

    public void L(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36627y1, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36640y = i4;
    }

    public void M(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(R, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36635t = i4;
    }

    public void N(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(T, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36636u = i4;
    }

    public void O(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(V, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36637v = i4;
    }

    public void P(long j4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f36629n = j4;
    }

    public void Q(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(N, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36633r = i4;
    }

    public void R(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36622g2, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.A = i4;
    }

    public void S(long j4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f36630o = j4;
    }

    public void T(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(V1, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36641z = i4;
    }

    public void U(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(L, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36632q = i4;
    }

    public void V(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36623p1, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36639x = i4;
    }

    public void W(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36626x2, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.C = i4;
    }

    public void X(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(E2, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.B = i4;
    }

    public void Y(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36619b1, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36638w = i4;
    }

    public void Z(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(P, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36634s = i4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f36629n = g.l(byteBuffer);
        this.f36630o = g.l(byteBuffer);
        this.f36631p = g.l(byteBuffer);
        this.f36632q = g.p(byteBuffer);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
        this.f36633r = cVar.c(2);
        this.f36634s = cVar.c(5);
        this.f36635t = cVar.c(1);
        this.f36636u = cVar.c(6);
        this.f36637v = cVar.c(14);
        this.f36638w = cVar.c(1);
        this.f36639x = cVar.c(3);
        this.f36640y = cVar.c(16);
        this.f36641z = cVar.c(1);
        this.A = cVar.c(1);
        this.B = cVar.c(1);
        this.C = cVar.c(5);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        i.i(byteBuffer, this.f36629n);
        i.i(byteBuffer, this.f36630o);
        i.i(byteBuffer, this.f36631p);
        i.m(byteBuffer, this.f36632q);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
        dVar.a(this.f36633r, 2);
        dVar.a(this.f36634s, 5);
        dVar.a(this.f36635t, 1);
        dVar.a(this.f36636u, 6);
        dVar.a(this.f36637v, 14);
        dVar.a(this.f36638w, 1);
        dVar.a(this.f36639x, 3);
        dVar.a(this.f36640y, 16);
        dVar.a(this.f36641z, 1);
        dVar.a(this.A, 1);
        dVar.a(this.B, 1);
        dVar.a(this.C, 5);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 20L;
    }

    public long t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f36631p;
    }

    public int u() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36625x1, this, this));
        return this.f36640y;
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(Q, this, this));
        return this.f36635t;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(S, this, this));
        return this.f36636u;
    }

    public int x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(U, this, this));
        return this.f36637v;
    }

    public long y() {
        j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f36629n;
    }

    @s3.a
    public int[] z() {
        int i4;
        int i10;
        int u9 = u();
        if ((u9 & 1) == 1) {
            i4 = 1;
            i10 = 4;
        } else {
            i4 = 0;
            i10 = 0;
        }
        if ((u9 & 2) == 2) {
            i4 += 2;
            i10 = i10 | 1 | 2;
        }
        if ((u9 & 4) == 4) {
            i4 += 2;
            i10 = i10 | 16 | 32;
        }
        if ((u9 & 8) == 8) {
            i4++;
            i10 |= 8;
        }
        if ((u9 & 16) == 16) {
            i4++;
            i10 |= 256;
        }
        if ((u9 & 32) == 32) {
            i4 += 2;
            i10 = i10 | 4096 | 16384;
        }
        if ((u9 & 64) == 64) {
            i4 += 2;
            i10 = i10 | 16 | 32;
        }
        if ((u9 & 128) == 128) {
            i4++;
            i10 |= 8192;
        }
        if ((u9 & 256) == 256) {
            i4++;
            i10 |= 2048;
        }
        if ((u9 & 512) == 512) {
            i4 += 2;
            i10 = i10 | 64 | 128;
        }
        if ((u9 & 1024) == 1024) {
            i4 += 2;
            i10 = i10 | 512 | 1024;
        }
        if ((u9 & 2048) == 2048) {
            i4 += 2;
            i10 = i10 | 16 | 32;
        }
        if ((u9 & 4096) == 4096) {
            i4++;
            i10 |= 8;
        }
        if ((u9 & 8192) == 8192) {
            i4 += 2;
            i10 = i10 | 16 | 32;
        }
        if ((u9 & 16384) == 16384) {
            i4++;
            i10 |= 65536;
        }
        if ((u9 & 32768) == 32768) {
            i4 += 2;
            i10 = 32768 | i10 | 131072;
        }
        if ((u9 & 65536) == 65536) {
            i4++;
        }
        if ((u9 & 131072) == 131072) {
            i4 += 2;
        }
        return new int[]{i4, i10};
    }
}
