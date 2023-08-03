package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: XmlBox.java */
/* loaded from: classes.dex */
public class n1 extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10259s = "xml ";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10260t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10261u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10262v = null;

    /* renamed from: r  reason: collision with root package name */
    String f10263r;

    static {
        s();
    }

    public n1() {
        super(f10259s);
        this.f10263r = "";
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("XmlBox.java", n1.class);
        f10260t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getXml", "com.coremedia.iso.boxes.XmlBox", "", "", "", "java.lang.String"), 20);
        f10261u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setXml", "com.coremedia.iso.boxes.XmlBox", "java.lang.String", "xml", "", "void"), 24);
        f10262v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.XmlBox", "", "", "", "java.lang.String"), 46);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10263r = com.coremedia.iso.g.h(byteBuffer, byteBuffer.remaining());
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(com.coremedia.iso.l.b(this.f10263r));
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f10263r) + 4;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10262v, this, this));
        return "XmlBox{xml='" + this.f10263r + "'}";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10260t, this, this));
        return this.f10263r;
    }

    public void w(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10261u, this, this, str));
        this.f10263r = str;
    }
}
