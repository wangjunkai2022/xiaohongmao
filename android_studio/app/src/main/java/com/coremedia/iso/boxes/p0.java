package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: RatingBox.java */
/* loaded from: classes.dex */
public class p0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;

    /* renamed from: v  reason: collision with root package name */
    public static final String f10276v = "rtng";

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10277w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10278x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10279y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10280z = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10281r;

    /* renamed from: s  reason: collision with root package name */
    private String f10282s;

    /* renamed from: t  reason: collision with root package name */
    private String f10283t;

    /* renamed from: u  reason: collision with root package name */
    private String f10284u;

    static {
        s();
    }

    public p0() {
        super(f10276v);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("RatingBox.java", p0.class);
        f10277w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setRatingEntity", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "ratingEntity", "", "void"), 46);
        f10278x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setRatingCriteria", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "ratingCriteria", "", "void"), 50);
        f10279y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "language", "", "void"), 54);
        f10280z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setRatingInfo", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "ratingInfo", "", "void"), 58);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 62);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getRatingEntity", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 73);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getRatingCriteria", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 83);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getRatingInfo", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 87);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 115);
    }

    public void A(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10278x, this, this, str));
        this.f10282s = str;
    }

    public void B(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10277w, this, this, str));
        this.f10281r = str;
    }

    public void C(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10280z, this, this, str));
        this.f10284u = str;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10281r = com.coremedia.iso.g.b(byteBuffer);
        this.f10282s = com.coremedia.iso.g.b(byteBuffer);
        this.f10283t = com.coremedia.iso.g.f(byteBuffer);
        this.f10284u = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(com.coremedia.iso.f.J(this.f10281r));
        byteBuffer.put(com.coremedia.iso.f.J(this.f10282s));
        com.coremedia.iso.i.d(byteBuffer, this.f10283t);
        byteBuffer.put(com.coremedia.iso.l.b(this.f10284u));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f10284u) + 15;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return "RatingBox[language=" + v() + "ratingEntity=" + x() + ";ratingCriteria=" + w() + ";language=" + v() + ";ratingInfo=" + y() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f10283t;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f10282s;
    }

    public String x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f10281r;
    }

    public String y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f10284u;
    }

    public void z(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10279y, this, this, str));
        this.f10283t = str;
    }
}
