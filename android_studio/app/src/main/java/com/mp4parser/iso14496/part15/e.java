package com.mp4parser.iso14496.part15;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: PriotityRangeBox.java */
/* loaded from: classes3.dex */
public class e extends com.googlecode.mp4parser.a {

    /* renamed from: r  reason: collision with root package name */
    public static final String f47017r = "svpr";

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f47018s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f47019t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f47020u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f47021v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f47022w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f47023x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f47024y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f47025z = null;

    /* renamed from: n  reason: collision with root package name */
    int f47026n;

    /* renamed from: o  reason: collision with root package name */
    int f47027o;

    /* renamed from: p  reason: collision with root package name */
    int f47028p;

    /* renamed from: q  reason: collision with root package name */
    int f47029q;

    static {
        s();
    }

    public e() {
        super(f47017r);
        this.f47026n = 0;
        this.f47028p = 0;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("PriotityRangeBox.java", e.class);
        f47018s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved1", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 45);
        f47019t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved1", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "reserved1", "", "void"), 49);
        f47020u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMin_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 53);
        f47021v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMin_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "min_priorityId", "", "void"), 57);
        f47022w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved2", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 61);
        f47023x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved2", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "reserved2", "", "void"), 65);
        f47024y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMax_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 69);
        f47025z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMax_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "max_priorityId", "", "void"), 73);
    }

    public void A(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f47023x, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47028p = i4;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        this.f47026n = (p9 & 192) >> 6;
        this.f47027o = p9 & 63;
        int p10 = com.coremedia.iso.g.p(byteBuffer);
        this.f47028p = (p10 & 192) >> 6;
        this.f47029q = p10 & 63;
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, (this.f47026n << 6) + this.f47027o);
        com.coremedia.iso.i.m(byteBuffer, (this.f47028p << 6) + this.f47029q);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 2L;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f47024y, this, this));
        return this.f47029q;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f47020u, this, this));
        return this.f47027o;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f47018s, this, this));
        return this.f47026n;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f47022w, this, this));
        return this.f47028p;
    }

    public void x(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f47025z, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47029q = i4;
    }

    public void y(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f47021v, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47027o = i4;
    }

    public void z(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f47019t, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f47026n = i4;
    }
}
