package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: GenreBox.java */
/* loaded from: classes.dex */
public class w extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10446t = "gnre";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10447u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10448v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10449w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10450x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10451y = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10452r;

    /* renamed from: s  reason: collision with root package name */
    private String f10453s;

    static {
        s();
    }

    public w() {
        super(f10446t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("GenreBox.java", w.class);
        f10447u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.GenreBox", "", "", "", "java.lang.String"), 42);
        f10448v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGenre", "com.coremedia.iso.boxes.GenreBox", "", "", "", "java.lang.String"), 46);
        f10449w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.GenreBox", "java.lang.String", "language", "", "void"), 50);
        f10450x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setGenre", "com.coremedia.iso.boxes.GenreBox", "java.lang.String", "genre", "", "void"), 54);
        f10451y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.GenreBox", "", "", "", "java.lang.String"), 77);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10452r = com.coremedia.iso.g.f(byteBuffer);
        this.f10453s = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f10452r);
        byteBuffer.put(com.coremedia.iso.l.b(this.f10453s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f10453s) + 7;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10451y, this, this));
        return "GenreBox[language=" + w() + ";genre=" + v() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10448v, this, this));
        return this.f10453s;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10447u, this, this));
        return this.f10452r;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10450x, this, this, str));
        this.f10453s = str;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10449w, this, this, str));
        this.f10452r = str;
    }
}
