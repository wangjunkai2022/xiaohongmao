package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: DescriptionBox.java */
/* loaded from: classes.dex */
public class p extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10268t = "dscp";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10269u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10270v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10271w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10272x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10273y = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10274r;

    /* renamed from: s  reason: collision with root package name */
    private String f10275s;

    static {
        s();
    }

    public p() {
        super(f10268t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("DescriptionBox.java", p.class);
        f10269u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.DescriptionBox", "", "", "", "java.lang.String"), 40);
        f10270v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDescription", "com.coremedia.iso.boxes.DescriptionBox", "", "", "", "java.lang.String"), 44);
        f10271w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.DescriptionBox", "", "", "", "java.lang.String"), 67);
        f10272x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.DescriptionBox", "java.lang.String", "language", "", "void"), 71);
        f10273y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDescription", "com.coremedia.iso.boxes.DescriptionBox", "java.lang.String", "description", "", "void"), 75);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10274r = com.coremedia.iso.g.f(byteBuffer);
        this.f10275s = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f10274r);
        byteBuffer.put(com.coremedia.iso.l.b(this.f10275s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f10275s) + 7;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10271w, this, this));
        return "DescriptionBox[language=" + w() + ";description=" + v() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10270v, this, this));
        return this.f10275s;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10269u, this, this));
        return this.f10274r;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10273y, this, this, str));
        this.f10275s = str;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10272x, this, this, str));
        this.f10274r = str;
    }
}
