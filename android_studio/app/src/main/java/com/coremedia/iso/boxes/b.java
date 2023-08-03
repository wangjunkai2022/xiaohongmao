package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AlbumBox.java */
/* loaded from: classes.dex */
public class b extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;

    /* renamed from: u  reason: collision with root package name */
    public static final String f9955u = "albm";

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f9956v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f9957w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f9958x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f9959y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f9960z = null;

    /* renamed from: r  reason: collision with root package name */
    private String f9961r;

    /* renamed from: s  reason: collision with root package name */
    private String f9962s;

    /* renamed from: t  reason: collision with root package name */
    private int f9963t;

    static {
        s();
    }

    public b() {
        super(f9955u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AlbumBox.java", b.class);
        f9956v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "java.lang.String"), 51);
        f9957w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAlbumTitle", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "java.lang.String"), 55);
        f9958x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTrackNumber", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "int"), 59);
        f9959y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.AlbumBox", "java.lang.String", "language", "", "void"), 63);
        f9960z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAlbumTitle", "com.coremedia.iso.boxes.AlbumBox", "java.lang.String", "albumTitle", "", "void"), 67);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTrackNumber", "com.coremedia.iso.boxes.AlbumBox", "int", "trackNumber", "", "void"), 71);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "java.lang.String"), 103);
    }

    public void A(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f9963t = i4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f9961r = com.coremedia.iso.g.f(byteBuffer);
        this.f9962s = com.coremedia.iso.g.g(byteBuffer);
        if (byteBuffer.remaining() > 0) {
            this.f9963t = com.coremedia.iso.g.p(byteBuffer);
        } else {
            this.f9963t = -1;
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f9961r);
        byteBuffer.put(com.coremedia.iso.l.b(this.f9962s));
        byteBuffer.put((byte) 0);
        int i4 = this.f9963t;
        if (i4 != -1) {
            com.coremedia.iso.i.m(byteBuffer, i4);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f9962s) + 6 + 1 + (this.f9963t == -1 ? 0 : 1);
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        StringBuilder sb = new StringBuilder();
        sb.append("AlbumBox[language=");
        sb.append(w());
        sb.append(com.alipay.sdk.util.i.f6965b);
        sb.append("albumTitle=");
        sb.append(v());
        if (this.f9963t >= 0) {
            sb.append(";trackNumber=");
            sb.append(x());
        }
        sb.append("]");
        return sb.toString();
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9957w, this, this));
        return this.f9962s;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9956v, this, this));
        return this.f9961r;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9958x, this, this));
        return this.f9963t;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f9960z, this, this, str));
        this.f9962s = str;
    }

    public void z(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f9959y, this, this, str));
        this.f9961r = str;
    }
}
