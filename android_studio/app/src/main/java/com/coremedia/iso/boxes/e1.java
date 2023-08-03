package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: TitleBox.java */
/* loaded from: classes.dex */
public class e1 extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10019t = "titl";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10020u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10021v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10022w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10023x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10024y = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10025r;

    /* renamed from: s  reason: collision with root package name */
    private String f10026s;

    static {
        s();
    }

    public e1() {
        super(f10019t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TitleBox.java", e1.class);
        f10020u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.TitleBox", "", "", "", "java.lang.String"), 46);
        f10021v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTitle", "com.coremedia.iso.boxes.TitleBox", "", "", "", "java.lang.String"), 50);
        f10022w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.TitleBox", "java.lang.String", "language", "", "void"), 59);
        f10023x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTitle", "com.coremedia.iso.boxes.TitleBox", "java.lang.String", MessageBundle.TITLE_ENTRY, "", "void"), 63);
        f10024y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.TitleBox", "", "", "", "java.lang.String"), 86);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10025r = com.coremedia.iso.g.f(byteBuffer);
        this.f10026s = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f10025r);
        byteBuffer.put(com.coremedia.iso.l.b(this.f10026s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f10026s) + 7;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10024y, this, this));
        return "TitleBox[language=" + v() + ";title=" + w() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10020u, this, this));
        return this.f10025r;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10021v, this, this));
        return this.f10026s;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10022w, this, this, str));
        this.f10025r = str;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10023x, this, this, str));
        this.f10026s = str;
    }
}
