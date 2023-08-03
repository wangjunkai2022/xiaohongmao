package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: SchemeTypeBox.java */
/* loaded from: classes.dex */
public class x0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;

    /* renamed from: u  reason: collision with root package name */
    public static final String f10464u = "schm";

    /* renamed from: v  reason: collision with root package name */
    static final /* synthetic */ boolean f10465v = false;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10466w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10467x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10468y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10469z = null;

    /* renamed from: r  reason: collision with root package name */
    String f10470r;

    /* renamed from: s  reason: collision with root package name */
    long f10471s;

    /* renamed from: t  reason: collision with root package name */
    String f10472t;

    static {
        s();
    }

    public x0() {
        super(f10464u);
        this.f10470r = "    ";
        this.f10472t = null;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SchemeTypeBox.java", x0.class);
        f10466w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSchemeType", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 44);
        f10467x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSchemeVersion", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "long"), 48);
        f10468y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSchemeUri", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 52);
        f10469z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSchemeType", "com.coremedia.iso.boxes.SchemeTypeBox", "java.lang.String", "schemeType", "", "void"), 56);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSchemeVersion", "com.coremedia.iso.boxes.SchemeTypeBox", "int", "schemeVersion", "", "void"), 61);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSchemeUri", "com.coremedia.iso.boxes.SchemeTypeBox", "java.lang.String", "schemeUri", "", "void"), 65);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 93);
    }

    public void A(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10471s = i4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10470r = com.coremedia.iso.g.b(byteBuffer);
        this.f10471s = com.coremedia.iso.g.l(byteBuffer);
        if ((getFlags() & 1) == 1) {
            this.f10472t = com.coremedia.iso.g.g(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(com.coremedia.iso.f.J(this.f10470r));
        com.coremedia.iso.i.i(byteBuffer, this.f10471s);
        if ((getFlags() & 1) == 1) {
            byteBuffer.put(com.coremedia.iso.l.b(this.f10472t));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return ((getFlags() & 1) == 1 ? com.coremedia.iso.l.c(this.f10472t) + 1 : 0) + 12;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return "Schema Type Box[schemeUri=" + this.f10472t + "; schemeType=" + this.f10470r + "; schemeVersion=" + this.f10471s + "; ]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10466w, this, this));
        return this.f10470r;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10468y, this, this));
        return this.f10472t;
    }

    public long x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10467x, this, this));
        return this.f10471s;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10469z, this, this, str));
        this.f10470r = str;
    }

    public void z(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, str));
        this.f10472t = str;
    }
}
