package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AmrSpecificBox.java */
/* loaded from: classes.dex */
public class b extends com.googlecode.mp4parser.a {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10319s = "damr";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10320t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10321u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10322v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10323w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10324x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10325y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10326z = null;

    /* renamed from: n  reason: collision with root package name */
    private String f10327n;

    /* renamed from: o  reason: collision with root package name */
    private int f10328o;

    /* renamed from: p  reason: collision with root package name */
    private int f10329p;

    /* renamed from: q  reason: collision with root package name */
    private int f10330q;

    /* renamed from: r  reason: collision with root package name */
    private int f10331r;

    static {
        s();
    }

    public b() {
        super(f10319s);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AmrSpecificBox.java", b.class);
        f10320t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getVendor", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "java.lang.String"), 46);
        f10321u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDecoderVersion", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 50);
        f10322v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getModeSet", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 54);
        f10323w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getModeChangePeriod", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 58);
        f10324x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFramesPerSample", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 62);
        f10325y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getContent", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 84);
        f10326z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "java.lang.String"), 92);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        this.f10327n = com.coremedia.iso.f.I(bArr);
        this.f10328o = com.coremedia.iso.g.p(byteBuffer);
        this.f10329p = com.coremedia.iso.g.i(byteBuffer);
        this.f10330q = com.coremedia.iso.g.p(byteBuffer);
        this.f10331r = com.coremedia.iso.g.p(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public void c(ByteBuffer byteBuffer) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f10325y, this, this, byteBuffer));
        byteBuffer.put(com.coremedia.iso.f.J(this.f10327n));
        i.m(byteBuffer, this.f10328o);
        i.f(byteBuffer, this.f10329p);
        i.m(byteBuffer, this.f10330q);
        i.m(byteBuffer, this.f10331r);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 9L;
    }

    public int t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f10321u, this, this));
        return this.f10328o;
    }

    public String toString() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f10326z, this, this));
        return "AmrSpecificBox[vendor=" + x() + ";decoderVersion=" + t() + ";modeSet=" + w() + ";modeChangePeriod=" + v() + ";framesPerSample=" + u() + "]";
    }

    public int u() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f10324x, this, this));
        return this.f10331r;
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f10323w, this, this));
        return this.f10330q;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f10322v, this, this));
        return this.f10329p;
    }

    public String x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f10320t, this, this));
        return this.f10327n;
    }
}
