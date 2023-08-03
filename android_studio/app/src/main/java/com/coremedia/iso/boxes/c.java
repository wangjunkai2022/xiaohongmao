package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AuthorBox.java */
/* loaded from: classes.dex */
public class c extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f9969t = "auth";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f9970u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f9971v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f9972w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f9973x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f9974y = null;

    /* renamed from: r  reason: collision with root package name */
    private String f9975r;

    /* renamed from: s  reason: collision with root package name */
    private String f9976s;

    static {
        s();
    }

    public c() {
        super("auth");
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AuthorBox.java", c.class);
        f9970u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.AuthorBox", "", "", "", "java.lang.String"), 51);
        f9971v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getAuthor", "com.coremedia.iso.boxes.AuthorBox", "", "", "", "java.lang.String"), 60);
        f9972w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.AuthorBox", "java.lang.String", "language", "", "void"), 64);
        f9973x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setAuthor", "com.coremedia.iso.boxes.AuthorBox", "java.lang.String", "author", "", "void"), 68);
        f9974y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.AuthorBox", "", "", "", "java.lang.String"), 92);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f9975r = com.coremedia.iso.g.f(byteBuffer);
        this.f9976s = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f9975r);
        byteBuffer.put(com.coremedia.iso.l.b(this.f9976s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f9976s) + 7;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9974y, this, this));
        return "AuthorBox[language=" + w() + ";author=" + v() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9971v, this, this));
        return this.f9976s;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9970u, this, this));
        return this.f9975r;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f9973x, this, this, str));
        this.f9976s = str;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f9972w, this, this, str));
        this.f9975r = str;
    }
}
