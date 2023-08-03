package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: HintMediaHeaderBox.java */
/* loaded from: classes.dex */
public class y extends a {
    private static final /* synthetic */ c.b A = null;

    /* renamed from: v  reason: collision with root package name */
    public static final String f10473v = "hmhd";

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10474w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10475x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10476y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10477z = null;

    /* renamed from: r  reason: collision with root package name */
    private int f10478r;

    /* renamed from: s  reason: collision with root package name */
    private int f10479s;

    /* renamed from: t  reason: collision with root package name */
    private long f10480t;

    /* renamed from: u  reason: collision with root package name */
    private long f10481u;

    static {
        s();
    }

    public y() {
        super(f10473v);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("HintMediaHeaderBox.java", y.class);
        f10474w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMaxPduSize", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "int"), 42);
        f10475x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAvgPduSize", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "int"), 46);
        f10476y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMaxBitrate", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "long"), 50);
        f10477z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAvgBitrate", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "long"), 54);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "java.lang.String"), 84);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10478r = com.coremedia.iso.g.i(byteBuffer);
        this.f10479s = com.coremedia.iso.g.i(byteBuffer);
        this.f10480t = com.coremedia.iso.g.l(byteBuffer);
        this.f10481u = com.coremedia.iso.g.l(byteBuffer);
        com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.f(byteBuffer, this.f10478r);
        com.coremedia.iso.i.f(byteBuffer, this.f10479s);
        com.coremedia.iso.i.i(byteBuffer, this.f10480t);
        com.coremedia.iso.i.i(byteBuffer, this.f10481u);
        com.coremedia.iso.i.i(byteBuffer, 0L);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 20L;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return "HintMediaHeaderBox{maxPduSize=" + this.f10478r + ", avgPduSize=" + this.f10479s + ", maxBitrate=" + this.f10480t + ", avgBitrate=" + this.f10481u + '}';
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10477z, this, this));
        return this.f10481u;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10475x, this, this));
        return this.f10479s;
    }

    public long x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10476y, this, this));
        return this.f10480t;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10474w, this, this));
        return this.f10478r;
    }
}
