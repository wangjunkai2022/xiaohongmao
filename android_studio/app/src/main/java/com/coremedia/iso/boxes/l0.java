package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: OriginalFormatBox.java */
/* loaded from: classes.dex */
public class l0 extends com.googlecode.mp4parser.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f10214o = "frma";

    /* renamed from: p  reason: collision with root package name */
    static final /* synthetic */ boolean f10215p = false;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f10216q = null;

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f10217r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f10218s = null;

    /* renamed from: n  reason: collision with root package name */
    private String f10219n;

    static {
        s();
    }

    public l0() {
        super(f10214o);
        this.f10219n = "    ";
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("OriginalFormatBox.java", l0.class);
        f10216q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataFormat", "com.coremedia.iso.boxes.OriginalFormatBox", "", "", "", "java.lang.String"), 42);
        f10217r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDataFormat", "com.coremedia.iso.boxes.OriginalFormatBox", "java.lang.String", "dataFormat", "", "void"), 47);
        f10218s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.OriginalFormatBox", "", "", "", "java.lang.String"), 67);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f10219n = com.coremedia.iso.g.b(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(com.coremedia.iso.f.J(this.f10219n));
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 4L;
    }

    public String t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10216q, this, this));
        return this.f10219n;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10218s, this, this));
        return "OriginalFormatBox[dataFormat=" + t() + "]";
    }

    public void u(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10217r, this, this, str));
        this.f10219n = str;
    }
}
