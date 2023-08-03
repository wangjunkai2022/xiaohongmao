package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: PerformerBox.java */
/* loaded from: classes.dex */
public class m0 extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f10227t = "perf";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10228u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10229v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10230w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10231x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10232y = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10233r;

    /* renamed from: s  reason: collision with root package name */
    private String f10234s;

    static {
        s();
    }

    public m0() {
        super(f10227t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("PerformerBox.java", m0.class);
        f10228u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.PerformerBox", "", "", "", "java.lang.String"), 41);
        f10229v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getPerformer", "com.coremedia.iso.boxes.PerformerBox", "", "", "", "java.lang.String"), 45);
        f10230w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.PerformerBox", "java.lang.String", "language", "", "void"), 49);
        f10231x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setPerformer", "com.coremedia.iso.boxes.PerformerBox", "java.lang.String", "performer", "", "void"), 53);
        f10232y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.PerformerBox", "", "", "", "java.lang.String"), 76);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10233r = com.coremedia.iso.g.f(byteBuffer);
        this.f10234s = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f10233r);
        byteBuffer.put(com.coremedia.iso.l.b(this.f10234s));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f10234s) + 6 + 1;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10232y, this, this));
        return "PerformerBox[language=" + v() + ";performer=" + w() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10228u, this, this));
        return this.f10233r;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10229v, this, this));
        return this.f10234s;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10230w, this, this, str));
        this.f10233r = str;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10231x, this, this, str));
        this.f10234s = str;
    }
}
