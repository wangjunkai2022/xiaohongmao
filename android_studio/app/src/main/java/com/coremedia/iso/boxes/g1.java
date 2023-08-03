package com.coremedia.iso.boxes;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.ksyun.media.player.KSYMediaMeta;
import java.nio.ByteBuffer;
import java.util.Date;
import org.aspectj.lang.c;
import org.bouncycastle.math.Primes;

/* compiled from: TrackHeaderBox.java */
/* loaded from: classes.dex */
public class g1 extends com.googlecode.mp4parser.c {
    public static final String B = "tkhd";
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
    private static final /* synthetic */ c.b T1 = null;
    private static final /* synthetic */ c.b U = null;
    private static final /* synthetic */ c.b V = null;
    private static final /* synthetic */ c.b V1 = null;
    private static final /* synthetic */ c.b W = null;

    /* renamed from: b1  reason: collision with root package name */
    private static final /* synthetic */ c.b f10128b1 = null;

    /* renamed from: b2  reason: collision with root package name */
    private static final /* synthetic */ c.b f10129b2 = null;

    /* renamed from: g1  reason: collision with root package name */
    private static final /* synthetic */ c.b f10130g1 = null;

    /* renamed from: g2  reason: collision with root package name */
    private static final /* synthetic */ c.b f10131g2 = null;

    /* renamed from: p1  reason: collision with root package name */
    private static final /* synthetic */ c.b f10132p1 = null;

    /* renamed from: x1  reason: collision with root package name */
    private static final /* synthetic */ c.b f10133x1 = null;

    /* renamed from: y1  reason: collision with root package name */
    private static final /* synthetic */ c.b f10134y1 = null;
    private double A;

    /* renamed from: r  reason: collision with root package name */
    private Date f10135r;

    /* renamed from: s  reason: collision with root package name */
    private Date f10136s;

    /* renamed from: t  reason: collision with root package name */
    private long f10137t;

    /* renamed from: u  reason: collision with root package name */
    private long f10138u;

    /* renamed from: v  reason: collision with root package name */
    private int f10139v;

    /* renamed from: w  reason: collision with root package name */
    private int f10140w;

    /* renamed from: x  reason: collision with root package name */
    private float f10141x;

    /* renamed from: y  reason: collision with root package name */
    private com.googlecode.mp4parser.util.l f10142y;

    /* renamed from: z  reason: collision with root package name */
    private double f10143z;

    static {
        s();
    }

    public g1() {
        super(B);
        this.f10142y = com.googlecode.mp4parser.util.l.f36990j;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackHeaderBox.java", g1.class);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.util.Date"), 60);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.util.Date"), 64);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getContent", "com.coremedia.iso.boxes.TrackHeaderBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 142);
        N = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "java.lang.String"), 170);
        O = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "creationTime", "", "void"), 196);
        P = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "modificationTime", "", "void"), 203);
        Q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "long", "trackId", "", "void"), Primes.SMALL_FACTOR_LIMIT);
        R = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "long", "duration", "", "void"), com.facebook.imageutils.c.f13395j);
        S = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "layer", "", "void"), 222);
        T = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "alternateGroup", "", "void"), 226);
        U = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setVolume", "com.coremedia.iso.boxes.TrackHeaderBox", TypedValues.Custom.S_FLOAT, "volume", "", "void"), 230);
        V = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "", "void"), 234);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "long"), 68);
        W = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "double", "width", "", "void"), 238);
        f10128b1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "double", "height", "", "void"), 242);
        f10130g1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 247);
        f10132p1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 251);
        f10133x1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 255);
        f10134y1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 259);
        T1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", TypedValues.Custom.S_BOOLEAN, "enabled", "", "void"), 263);
        V1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", TypedValues.Custom.S_BOOLEAN, "inMovie", "", "void"), 271);
        f10129b2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", TypedValues.Custom.S_BOOLEAN, "inPreview", "", "void"), 279);
        f10131g2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", TypedValues.Custom.S_BOOLEAN, "inPoster", "", "void"), 287);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "long"), 72);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "int"), 76);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "int"), 80);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", TypedValues.Custom.S_FLOAT), 84);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "com.googlecode.mp4parser.util.Matrix"), 88);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "double"), 92);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "", "double"), 96);
    }

    public com.googlecode.mp4parser.util.l A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f10142y;
    }

    public Date B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f10136s;
    }

    public long C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f10137t;
    }

    public float D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f10141x;
    }

    public double E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f10143z;
    }

    public boolean F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10130g1, this, this));
        return (getFlags() & 1) > 0;
    }

    public boolean G() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10132p1, this, this));
        return (getFlags() & 2) > 0;
    }

    public boolean H() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10134y1, this, this));
        return (getFlags() & 8) > 0;
    }

    public boolean I() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10133x1, this, this));
        return (getFlags() & 4) > 0;
    }

    public void J(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(T, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10140w = i4;
    }

    public void K(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(O, this, this, date));
        this.f10135r = date;
        if (com.googlecode.mp4parser.util.e.a(date) >= KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            setVersion(1);
        }
    }

    public void L(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(R, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10138u = j4;
        if (j4 >= KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            setFlags(1);
        }
    }

    public void M(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(T1, this, this, org.aspectj.runtime.internal.e.a(z9)));
        if (z9) {
            setFlags(getFlags() | 1);
        } else {
            setFlags(getFlags() & (-2));
        }
    }

    public void N(double d4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10128b1, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.A = d4;
    }

    public void O(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(V1, this, this, org.aspectj.runtime.internal.e.a(z9)));
        if (z9) {
            setFlags(getFlags() | 2);
        } else {
            setFlags(getFlags() & (-3));
        }
    }

    public void P(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10131g2, this, this, org.aspectj.runtime.internal.e.a(z9)));
        if (z9) {
            setFlags(getFlags() | 8);
        } else {
            setFlags(getFlags() & (-9));
        }
    }

    public void Q(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10129b2, this, this, org.aspectj.runtime.internal.e.a(z9)));
        if (z9) {
            setFlags(getFlags() | 4);
        } else {
            setFlags(getFlags() & (-5));
        }
    }

    public void R(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(S, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10139v = i4;
    }

    public void S(com.googlecode.mp4parser.util.l lVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(V, this, this, lVar));
        this.f10142y = lVar;
    }

    public void T(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(P, this, this, date));
        this.f10136s = date;
        if (com.googlecode.mp4parser.util.e.a(date) >= KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            setVersion(1);
        }
    }

    public void U(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(Q, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10137t = j4;
    }

    public void V(float f10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(U, this, this, org.aspectj.runtime.internal.e.i(f10)));
        this.f10141x = f10;
    }

    public void W(double d4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(W, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f10143z = d4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            this.f10135r = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f10136s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f10137t = com.coremedia.iso.g.l(byteBuffer);
            com.coremedia.iso.g.l(byteBuffer);
            long j4 = byteBuffer.getLong();
            this.f10138u = j4;
            if (j4 < -1) {
                throw new RuntimeException("The tracks duration is bigger than Long.MAX_VALUE");
            }
        } else {
            this.f10135r = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f10136s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f10137t = com.coremedia.iso.g.l(byteBuffer);
            com.coremedia.iso.g.l(byteBuffer);
            this.f10138u = com.coremedia.iso.g.l(byteBuffer);
        }
        com.coremedia.iso.g.l(byteBuffer);
        com.coremedia.iso.g.l(byteBuffer);
        this.f10139v = com.coremedia.iso.g.i(byteBuffer);
        this.f10140w = com.coremedia.iso.g.i(byteBuffer);
        this.f10141x = com.coremedia.iso.g.e(byteBuffer);
        com.coremedia.iso.g.i(byteBuffer);
        this.f10142y = com.googlecode.mp4parser.util.l.a(byteBuffer);
        this.f10143z = com.coremedia.iso.g.d(byteBuffer);
        this.A = com.coremedia.iso.g.d(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public void c(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(M, this, this, byteBuffer));
        u(byteBuffer);
        if (getVersion() == 1) {
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10135r));
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10136s));
            com.coremedia.iso.i.i(byteBuffer, this.f10137t);
            com.coremedia.iso.i.i(byteBuffer, 0L);
            com.coremedia.iso.i.l(byteBuffer, this.f10138u);
        } else {
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10135r));
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10136s));
            com.coremedia.iso.i.i(byteBuffer, this.f10137t);
            com.coremedia.iso.i.i(byteBuffer, 0L);
            com.coremedia.iso.i.i(byteBuffer, this.f10138u);
        }
        com.coremedia.iso.i.i(byteBuffer, 0L);
        com.coremedia.iso.i.i(byteBuffer, 0L);
        com.coremedia.iso.i.f(byteBuffer, this.f10139v);
        com.coremedia.iso.i.f(byteBuffer, this.f10140w);
        com.coremedia.iso.i.c(byteBuffer, this.f10141x);
        com.coremedia.iso.i.f(byteBuffer, 0);
        this.f10142y.c(byteBuffer);
        com.coremedia.iso.i.b(byteBuffer, this.f10143z);
        com.coremedia.iso.i.b(byteBuffer, this.A);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (getVersion() == 1 ? 36L : 24L) + 60;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(N, this, this));
        return "TrackHeaderBox[creationTime=" + w() + com.alipay.sdk.util.i.f6965b + "modificationTime=" + B() + com.alipay.sdk.util.i.f6965b + "trackId=" + C() + com.alipay.sdk.util.i.f6965b + "duration=" + x() + com.alipay.sdk.util.i.f6965b + "layer=" + z() + com.alipay.sdk.util.i.f6965b + "alternateGroup=" + v() + com.alipay.sdk.util.i.f6965b + "volume=" + D() + com.alipay.sdk.util.i.f6965b + "matrix=" + this.f10142y + com.alipay.sdk.util.i.f6965b + "width=" + E() + com.alipay.sdk.util.i.f6965b + "height=" + y() + "]";
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f10140w;
    }

    public Date w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f10135r;
    }

    public long x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f10138u;
    }

    public double y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.A;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f10139v;
    }
}
