package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: KeywordsBox.java */
/* loaded from: classes.dex */
public class c0 extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    public static final String f9977t = "kywd";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f9978u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f9979v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f9980w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f9981x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f9982y = null;

    /* renamed from: r  reason: collision with root package name */
    private String f9983r;

    /* renamed from: s  reason: collision with root package name */
    private String[] f9984s;

    static {
        s();
    }

    public c0() {
        super(f9977t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("KeywordsBox.java", c0.class);
        f9978u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.KeywordsBox", "", "", "", "java.lang.String"), 40);
        f9979v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getKeywords", "com.coremedia.iso.boxes.KeywordsBox", "", "", "", "[Ljava.lang.String;"), 44);
        f9980w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.KeywordsBox", "java.lang.String", "language", "", "void"), 48);
        f9981x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setKeywords", "com.coremedia.iso.boxes.KeywordsBox", "[Ljava.lang.String;", "keywords", "", "void"), 52);
        f9982y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.KeywordsBox", "", "", "", "java.lang.String"), 87);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f9983r = com.coremedia.iso.g.f(byteBuffer);
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        this.f9984s = new String[p9];
        for (int i4 = 0; i4 < p9; i4++) {
            com.coremedia.iso.g.p(byteBuffer);
            this.f9984s[i4] = com.coremedia.iso.g.g(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        String[] strArr;
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f9983r);
        com.coremedia.iso.i.m(byteBuffer, this.f9984s.length);
        for (String str : this.f9984s) {
            com.coremedia.iso.i.m(byteBuffer, com.coremedia.iso.l.c(str) + 1);
            byteBuffer.put(com.coremedia.iso.l.b(str));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        long j4 = 7;
        for (String str : this.f9984s) {
            j4 += com.coremedia.iso.l.c(str) + 1 + 1;
        }
        return j4;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9982y, this, this));
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("KeywordsBox[language=");
        stringBuffer.append(w());
        for (int i4 = 0; i4 < this.f9984s.length; i4++) {
            stringBuffer.append(";keyword");
            stringBuffer.append(i4);
            stringBuffer.append("=");
            stringBuffer.append(this.f9984s[i4]);
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public String[] v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9979v, this, this));
        return this.f9984s;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9978u, this, this));
        return this.f9983r;
    }

    public void x(String[] strArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f9981x, this, this, strArr));
        this.f9984s = strArr;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f9980w, this, this, str));
        this.f9983r = str;
    }
}
