package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: CopyrightBox.java */
/* loaded from: classes.dex */
public class k extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10190t = "cprt";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10191u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10192v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10193w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10194x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10195y = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10196r;

    /* renamed from: s  reason: collision with root package name */
    private String f10197s;

    static {
        s();
    }

    public k() {
        super(f10190t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("CopyrightBox.java", k.class);
        f10191u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.CopyrightBox", "", "", "", "java.lang.String"), 46);
        f10192v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCopyright", "com.coremedia.iso.boxes.CopyrightBox", "", "", "", "java.lang.String"), 50);
        f10193w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.CopyrightBox", "java.lang.String", "language", "", "void"), 54);
        f10194x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCopyright", "com.coremedia.iso.boxes.CopyrightBox", "java.lang.String", "copyright", "", "void"), 58);
        f10195y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.CopyrightBox", "", "", "", "java.lang.String"), 81);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10196r = com.coremedia.iso.g.f(byteBuffer);
        this.f10197s = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f10196r);
        byteBuffer.put(com.coremedia.iso.l.b(this.f10197s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f10197s) + 7;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10195y, this, this));
        return "CopyrightBox[language=" + w() + ";copyright=" + v() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10192v, this, this));
        return this.f10197s;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10191u, this, this));
        return this.f10196r;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10194x, this, this, str));
        this.f10197s = str;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10193w, this, this, str));
        this.f10196r = str;
    }
}
