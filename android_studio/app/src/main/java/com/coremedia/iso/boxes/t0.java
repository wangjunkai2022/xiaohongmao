package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: SampleSizeBox.java */
/* loaded from: classes.dex */
public class t0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;

    /* renamed from: u  reason: collision with root package name */
    public static final String f10388u = "stsz";

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10389v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10390w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10391x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10392y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10393z = null;

    /* renamed from: r  reason: collision with root package name */
    private long f10394r;

    /* renamed from: s  reason: collision with root package name */
    private long[] f10395s;

    /* renamed from: t  reason: collision with root package name */
    int f10396t;

    static {
        s();
    }

    public t0() {
        super(f10388u);
        this.f10395s = new long[0];
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SampleSizeBox.java", t0.class);
        f10389v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "long"), 50);
        f10390w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "long", com.facebook.imagepipeline.producers.n.f13108v, "", "void"), 54);
        f10391x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleSizeAtIndex", "com.coremedia.iso.boxes.SampleSizeBox", "int", "index", "", "long"), 59);
        f10392y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleCount", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "long"), 67);
        f10393z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "[J"), 76);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "[J", "sampleSizes", "", "void"), 80);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "java.lang.String"), 119);
    }

    public void A(long[] jArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, jArr));
        this.f10395s = jArr;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10394r = com.coremedia.iso.g.l(byteBuffer);
        int a10 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f10396t = a10;
        if (this.f10394r == 0) {
            this.f10395s = new long[a10];
            for (int i4 = 0; i4 < this.f10396t; i4++) {
                this.f10395s[i4] = com.coremedia.iso.g.l(byteBuffer);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10394r);
        if (this.f10394r == 0) {
            com.coremedia.iso.i.i(byteBuffer, this.f10395s.length);
            for (long j4 : this.f10395s) {
                com.coremedia.iso.i.i(byteBuffer, j4);
            }
            return;
        }
        com.coremedia.iso.i.i(byteBuffer, this.f10396t);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f10394r == 0 ? this.f10395s.length * 4 : 0) + 12;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return "SampleSizeBox[sampleSize=" + w() + ";sampleCount=" + v() + "]";
    }

    public long v() {
        int length;
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10392y, this, this));
        if (this.f10394r > 0) {
            length = this.f10396t;
        } else {
            length = this.f10395s.length;
        }
        return length;
    }

    public long w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10389v, this, this));
        return this.f10394r;
    }

    public long x(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10391x, this, this, org.aspectj.runtime.internal.e.k(i4)));
        long j4 = this.f10394r;
        return j4 > 0 ? j4 : this.f10395s[i4];
    }

    public long[] y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10393z, this, this));
        return this.f10395s;
    }

    public void z(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10390w, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10394r = j4;
    }
}
