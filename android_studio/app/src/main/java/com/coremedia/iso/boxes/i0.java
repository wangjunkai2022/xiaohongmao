package com.coremedia.iso.boxes;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.ksyun.media.player.KSYMediaMeta;
import java.nio.ByteBuffer;
import java.util.Date;
import org.aspectj.lang.c;
import org.bouncycastle.math.Primes;

/* compiled from: MovieHeaderBox.java */
/* loaded from: classes.dex */
public class i0 extends com.googlecode.mp4parser.c {
    public static final String F = "mvhd";
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
    private static final /* synthetic */ c.b f10162b1 = null;

    /* renamed from: b2  reason: collision with root package name */
    private static final /* synthetic */ c.b f10163b2 = null;

    /* renamed from: g1  reason: collision with root package name */
    private static final /* synthetic */ c.b f10164g1 = null;

    /* renamed from: g2  reason: collision with root package name */
    private static final /* synthetic */ c.b f10165g2 = null;

    /* renamed from: p1  reason: collision with root package name */
    private static final /* synthetic */ c.b f10166p1 = null;

    /* renamed from: p2  reason: collision with root package name */
    private static final /* synthetic */ c.b f10167p2 = null;

    /* renamed from: x1  reason: collision with root package name */
    private static final /* synthetic */ c.b f10168x1 = null;

    /* renamed from: x2  reason: collision with root package name */
    private static final /* synthetic */ c.b f10169x2 = null;

    /* renamed from: y1  reason: collision with root package name */
    private static final /* synthetic */ c.b f10170y1 = null;

    /* renamed from: y2  reason: collision with root package name */
    private static final /* synthetic */ c.b f10171y2 = null;
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;

    /* renamed from: r  reason: collision with root package name */
    private Date f10172r;

    /* renamed from: s  reason: collision with root package name */
    private Date f10173s;

    /* renamed from: t  reason: collision with root package name */
    private long f10174t;

    /* renamed from: u  reason: collision with root package name */
    private long f10175u;

    /* renamed from: v  reason: collision with root package name */
    private double f10176v;

    /* renamed from: w  reason: collision with root package name */
    private float f10177w;

    /* renamed from: x  reason: collision with root package name */
    private com.googlecode.mp4parser.util.l f10178x;

    /* renamed from: y  reason: collision with root package name */
    private long f10179y;

    /* renamed from: z  reason: collision with root package name */
    private int f10180z;

    static {
        s();
    }

    public i0() {
        super(F);
        this.f10176v = 1.0d;
        this.f10177w = 1.0f;
        this.f10178x = com.googlecode.mp4parser.util.l.f36990j;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MovieHeaderBox.java", i0.class);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.util.Date"), 63);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.util.Date"), 67);
        Q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "modificationTime", "", "void"), 203);
        R = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "timescale", "", "void"), Primes.SMALL_FACTOR_LIMIT);
        S = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "duration", "", "void"), com.facebook.imageutils.c.f13395j);
        T = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setRate", "com.coremedia.iso.boxes.MovieHeaderBox", "double", "rate", "", "void"), 222);
        U = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setVolume", "com.coremedia.iso.boxes.MovieHeaderBox", TypedValues.Custom.S_FLOAT, "volume", "", "void"), 226);
        V = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "", "void"), 230);
        W = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "nextTrackId", "", "void"), 234);
        f10162b1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 238);
        f10164g1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewTime", "", "void"), 242);
        f10166p1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 246);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 71);
        f10168x1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewDuration", "", "void"), ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        f10170y1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 254);
        T1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "posterTime", "", "void"), 258);
        V1 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 262);
        f10163b2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionTime", "", "void"), 266);
        f10165g2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), com.facebook.imagepipeline.common.e.f12206f);
        f10167p2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionDuration", "", "void"), com.facebook.imageutils.e.f13400d);
        f10169x2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "int"), 278);
        f10171y2 = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "currentTime", "", "void"), 282);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 75);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getRate", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "double"), 79);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", TypedValues.Custom.S_FLOAT), 83);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "com.googlecode.mp4parser.util.Matrix"), 87);
        N = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "long"), 91);
        O = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "", "java.lang.String"), 139);
        P = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "creationTime", "", "void"), 195);
    }

    public long A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(N, this, this));
        return this.f10179y;
    }

    public int B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10170y1, this, this));
        return this.B;
    }

    public int C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10166p1, this, this));
        return this.A;
    }

    public int D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10162b1, this, this));
        return this.f10180z;
    }

    public double E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f10176v;
    }

    public int F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10165g2, this, this));
        return this.D;
    }

    public int G() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(V1, this, this));
        return this.C;
    }

    public long H() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f10174t;
    }

    public float I() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f10177w;
    }

    public void J(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(P, this, this, date));
        this.f10172r = date;
        if (com.googlecode.mp4parser.util.e.a(date) >= KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            setVersion(1);
        }
    }

    public void K(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10171y2, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.E = i4;
    }

    public void L(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(S, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10175u = j4;
        if (j4 >= KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            setVersion(1);
        }
    }

    public void M(com.googlecode.mp4parser.util.l lVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(V, this, this, lVar));
        this.f10178x = lVar;
    }

    public void N(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(Q, this, this, date));
        this.f10173s = date;
        if (com.googlecode.mp4parser.util.e.a(date) >= KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            setVersion(1);
        }
    }

    public void O(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(W, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10179y = j4;
    }

    public void P(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(T1, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.B = i4;
    }

    public void Q(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10168x1, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.A = i4;
    }

    public void R(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10164g1, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10180z = i4;
    }

    public void S(double d4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(T, this, this, org.aspectj.runtime.internal.e.g(d4)));
        this.f10176v = d4;
    }

    public void T(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10167p2, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.D = i4;
    }

    public void U(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10163b2, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.C = i4;
    }

    public void V(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(R, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10174t = j4;
    }

    public void W(float f10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(U, this, this, org.aspectj.runtime.internal.e.i(f10)));
        this.f10177w = f10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            this.f10172r = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f10173s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f10174t = com.coremedia.iso.g.l(byteBuffer);
            this.f10175u = com.coremedia.iso.g.o(byteBuffer);
        } else {
            this.f10172r = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f10173s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f10174t = com.coremedia.iso.g.l(byteBuffer);
            this.f10175u = com.coremedia.iso.g.l(byteBuffer);
        }
        this.f10176v = com.coremedia.iso.g.d(byteBuffer);
        this.f10177w = com.coremedia.iso.g.e(byteBuffer);
        com.coremedia.iso.g.i(byteBuffer);
        com.coremedia.iso.g.l(byteBuffer);
        com.coremedia.iso.g.l(byteBuffer);
        this.f10178x = com.googlecode.mp4parser.util.l.a(byteBuffer);
        this.f10180z = byteBuffer.getInt();
        this.A = byteBuffer.getInt();
        this.B = byteBuffer.getInt();
        this.C = byteBuffer.getInt();
        this.D = byteBuffer.getInt();
        this.E = byteBuffer.getInt();
        this.f10179y = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 1) {
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10172r));
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10173s));
            com.coremedia.iso.i.i(byteBuffer, this.f10174t);
            com.coremedia.iso.i.l(byteBuffer, this.f10175u);
        } else {
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10172r));
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10173s));
            com.coremedia.iso.i.i(byteBuffer, this.f10174t);
            com.coremedia.iso.i.i(byteBuffer, this.f10175u);
        }
        com.coremedia.iso.i.b(byteBuffer, this.f10176v);
        com.coremedia.iso.i.c(byteBuffer, this.f10177w);
        com.coremedia.iso.i.f(byteBuffer, 0);
        com.coremedia.iso.i.i(byteBuffer, 0L);
        com.coremedia.iso.i.i(byteBuffer, 0L);
        this.f10178x.c(byteBuffer);
        byteBuffer.putInt(this.f10180z);
        byteBuffer.putInt(this.A);
        byteBuffer.putInt(this.B);
        byteBuffer.putInt(this.C);
        byteBuffer.putInt(this.D);
        byteBuffer.putInt(this.E);
        com.coremedia.iso.i.i(byteBuffer, this.f10179y);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (getVersion() == 1 ? 32L : 20L) + 80;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(O, this, this));
        return "MovieHeaderBox[creationTime=" + v() + com.alipay.sdk.util.i.f6965b + "modificationTime=" + z() + com.alipay.sdk.util.i.f6965b + "timescale=" + H() + com.alipay.sdk.util.i.f6965b + "duration=" + x() + com.alipay.sdk.util.i.f6965b + "rate=" + E() + com.alipay.sdk.util.i.f6965b + "volume=" + I() + com.alipay.sdk.util.i.f6965b + "matrix=" + this.f10178x + com.alipay.sdk.util.i.f6965b + "nextTrackId=" + A() + "]";
    }

    public Date v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f10172r;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10169x2, this, this));
        return this.E;
    }

    public long x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f10175u;
    }

    public com.googlecode.mp4parser.util.l y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.f10178x;
    }

    public Date z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f10173s;
    }
}
