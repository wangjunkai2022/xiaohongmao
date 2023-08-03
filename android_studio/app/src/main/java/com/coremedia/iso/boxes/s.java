package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: FileTypeBox.java */
/* loaded from: classes.dex */
public class s extends com.googlecode.mp4parser.a {

    /* renamed from: q  reason: collision with root package name */
    public static final String f10305q = "ftyp";

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f10306r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f10307s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10308t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10309u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10310v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10311w = null;

    /* renamed from: n  reason: collision with root package name */
    private String f10312n;

    /* renamed from: o  reason: collision with root package name */
    private long f10313o;

    /* renamed from: p  reason: collision with root package name */
    private List<String> f10314p;

    static {
        s();
    }

    public s() {
        super(f10305q);
        this.f10314p = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("FileTypeBox.java", s.class);
        f10306r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "java.lang.String"), 85);
        f10307s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "java.lang.String", "majorBrand", "", "void"), 94);
        f10308t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", "long", "minorVersion", "", "void"), 103);
        f10309u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "long"), 113);
        f10310v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "java.util.List"), 122);
        f10311w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "java.util.List", "compatibleBrands", "", "void"), 126);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f10312n = com.coremedia.iso.g.b(byteBuffer);
        this.f10313o = com.coremedia.iso.g.l(byteBuffer);
        int remaining = byteBuffer.remaining() / 4;
        this.f10314p = new LinkedList();
        for (int i4 = 0; i4 < remaining; i4++) {
            this.f10314p.add(com.coremedia.iso.g.b(byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(com.coremedia.iso.f.J(this.f10312n));
        com.coremedia.iso.i.i(byteBuffer, this.f10313o);
        for (String str : this.f10314p) {
            byteBuffer.put(com.coremedia.iso.f.J(str));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f10314p.size() * 4) + 8;
    }

    public List<String> t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10310v, this, this));
        return this.f10314p;
    }

    @s3.a
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FileTypeBox[");
        sb.append("majorBrand=");
        sb.append(u());
        sb.append(com.alipay.sdk.util.i.f6965b);
        sb.append("minorVersion=");
        sb.append(v());
        for (String str : this.f10314p) {
            sb.append(com.alipay.sdk.util.i.f6965b);
            sb.append("compatibleBrand=");
            sb.append(str);
        }
        sb.append("]");
        return sb.toString();
    }

    public String u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10306r, this, this));
        return this.f10312n;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10309u, this, this));
        return this.f10313o;
    }

    public void w(List<String> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10311w, this, this, list));
        this.f10314p = list;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10307s, this, this, str));
        this.f10312n = str;
    }

    public void y(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10308t, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10313o = j4;
    }

    public s(String str, long j4, List<String> list) {
        super(f10305q);
        Collections.emptyList();
        this.f10312n = str;
        this.f10313o = j4;
        this.f10314p = list;
    }
}
