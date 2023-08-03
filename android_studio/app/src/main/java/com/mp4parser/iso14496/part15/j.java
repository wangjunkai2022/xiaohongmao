package com.mp4parser.iso14496.part15;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TierBitRateBox.java */
/* loaded from: classes3.dex */
public class j extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;

    /* renamed from: t  reason: collision with root package name */
    public static final String f47048t = "tibr";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f47049u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f47050v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f47051w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f47052x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f47053y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f47054z = null;

    /* renamed from: n  reason: collision with root package name */
    long f47055n;

    /* renamed from: o  reason: collision with root package name */
    long f47056o;

    /* renamed from: p  reason: collision with root package name */
    long f47057p;

    /* renamed from: q  reason: collision with root package name */
    long f47058q;

    /* renamed from: r  reason: collision with root package name */
    long f47059r;

    /* renamed from: s  reason: collision with root package name */
    long f47060s;

    static {
        s();
    }

    public j() {
        super(f47048t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TierBitRateBox.java", j.class);
        f47049u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 52);
        f47050v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "baseBitRate", "", "void"), 56);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTierAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 92);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTierAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "tierAvgBitRate", "", "void"), 96);
        f47051w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 60);
        f47052x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "maxBitRate", "", "void"), 64);
        f47053y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 68);
        f47054z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "avgBitRate", "", "void"), 72);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTierBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 76);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTierBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "tierBaseBitRate", "", "void"), 80);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTierMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", "long"), 84);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTierMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "long", "tierMaxBitRate", "", "void"), 88);
    }

    public void A(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f47050v, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f47055n = j4;
    }

    public void B(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f47052x, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f47056o = j4;
    }

    public void C(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f47060s = j4;
    }

    public void D(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f47058q = j4;
    }

    public void E(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f47059r = j4;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f47055n = com.coremedia.iso.g.l(byteBuffer);
        this.f47056o = com.coremedia.iso.g.l(byteBuffer);
        this.f47057p = com.coremedia.iso.g.l(byteBuffer);
        this.f47058q = com.coremedia.iso.g.l(byteBuffer);
        this.f47059r = com.coremedia.iso.g.l(byteBuffer);
        this.f47060s = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.i(byteBuffer, this.f47055n);
        com.coremedia.iso.i.i(byteBuffer, this.f47056o);
        com.coremedia.iso.i.i(byteBuffer, this.f47057p);
        com.coremedia.iso.i.i(byteBuffer, this.f47058q);
        com.coremedia.iso.i.i(byteBuffer, this.f47059r);
        com.coremedia.iso.i.i(byteBuffer, this.f47060s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 24L;
    }

    public long t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f47053y, this, this));
        return this.f47057p;
    }

    public long u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f47049u, this, this));
        return this.f47055n;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f47051w, this, this));
        return this.f47056o;
    }

    public long w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f47060s;
    }

    public long x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f47058q;
    }

    public long y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f47059r;
    }

    public void z(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f47054z, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f47057p = j4;
    }
}
