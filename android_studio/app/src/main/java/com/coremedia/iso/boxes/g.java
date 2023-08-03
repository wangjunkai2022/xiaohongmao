package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: ClassificationBox.java */
/* loaded from: classes.dex */
public class g extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;

    /* renamed from: v  reason: collision with root package name */
    public static final String f10116v = "clsf";

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10117w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10118x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10119y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10120z = null;

    /* renamed from: r  reason: collision with root package name */
    private String f10121r;

    /* renamed from: s  reason: collision with root package name */
    private int f10122s;

    /* renamed from: t  reason: collision with root package name */
    private String f10123t;

    /* renamed from: u  reason: collision with root package name */
    private String f10124u;

    static {
        s();
    }

    public g() {
        super(f10116v);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ClassificationBox.java", g.class);
        f10117w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 44);
        f10118x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getClassificationEntity", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 48);
        f10119y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getClassificationTableIndex", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "int"), 52);
        f10120z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getClassificationInfo", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 56);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setClassificationEntity", "com.coremedia.iso.boxes.ClassificationBox", "java.lang.String", "classificationEntity", "", "void"), 60);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setClassificationTableIndex", "com.coremedia.iso.boxes.ClassificationBox", "int", "classificationTableIndex", "", "void"), 64);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.ClassificationBox", "java.lang.String", "language", "", "void"), 68);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setClassificationInfo", "com.coremedia.iso.boxes.ClassificationBox", "java.lang.String", "classificationInfo", "", "void"), 72);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 101);
    }

    public void A(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, str));
        this.f10124u = str;
    }

    public void B(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10122s = i4;
    }

    public void C(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, str));
        this.f10123t = str;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        this.f10121r = com.coremedia.iso.f.I(bArr);
        this.f10122s = com.coremedia.iso.g.i(byteBuffer);
        this.f10123t = com.coremedia.iso.g.f(byteBuffer);
        this.f10124u = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(com.coremedia.iso.f.J(this.f10121r));
        com.coremedia.iso.i.f(byteBuffer, this.f10122s);
        com.coremedia.iso.i.d(byteBuffer, this.f10123t);
        byteBuffer.put(com.coremedia.iso.l.b(this.f10124u));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return com.coremedia.iso.l.c(this.f10124u) + 8 + 1;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return "ClassificationBox[language=" + y() + "classificationEntity=" + v() + ";classificationTableIndex=" + x() + ";language=" + y() + ";classificationInfo=" + w() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10118x, this, this));
        return this.f10121r;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10120z, this, this));
        return this.f10124u;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10119y, this, this));
        return this.f10122s;
    }

    public String y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10117w, this, this));
        return this.f10123t;
    }

    public void z(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, str));
        this.f10121r = str;
    }
}
