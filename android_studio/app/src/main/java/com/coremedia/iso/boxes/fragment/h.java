package com.coremedia.iso.boxes.fragment;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: SegmentTypeBox.java */
/* loaded from: classes.dex */
public class h extends com.googlecode.mp4parser.a {

    /* renamed from: q  reason: collision with root package name */
    public static final String f10055q = "styp";

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f10056r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f10057s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10058t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10059u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10060v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10061w = null;

    /* renamed from: n  reason: collision with root package name */
    private String f10062n;

    /* renamed from: o  reason: collision with root package name */
    private long f10063o;

    /* renamed from: p  reason: collision with root package name */
    private List<String> f10064p;

    static {
        s();
    }

    public h() {
        super(f10055q);
        this.f10064p = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SegmentTypeBox.java", h.class);
        f10056r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMajorBrand", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "", "", "", "java.lang.String"), 85);
        f10057s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMajorBrand", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "java.lang.String", "majorBrand", "", "void"), 94);
        f10058t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setMinorVersion", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "long", "minorVersion", "", "void"), 103);
        f10059u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getMinorVersion", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "", "", "", "long"), 113);
        f10060v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCompatibleBrands", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "", "", "", "java.util.List"), 122);
        f10061w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCompatibleBrands", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "java.util.List", "compatibleBrands", "", "void"), 126);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f10062n = com.coremedia.iso.g.b(byteBuffer);
        this.f10063o = com.coremedia.iso.g.l(byteBuffer);
        int remaining = byteBuffer.remaining() / 4;
        this.f10064p = new LinkedList();
        for (int i4 = 0; i4 < remaining; i4++) {
            this.f10064p.add(com.coremedia.iso.g.b(byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(com.coremedia.iso.f.J(this.f10062n));
        com.coremedia.iso.i.i(byteBuffer, this.f10063o);
        for (String str : this.f10064p) {
            byteBuffer.put(com.coremedia.iso.f.J(str));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (this.f10064p.size() * 4) + 8;
    }

    public List<String> t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10060v, this, this));
        return this.f10064p;
    }

    @s3.a
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SegmentTypeBox[");
        sb.append("majorBrand=");
        sb.append(u());
        sb.append(com.alipay.sdk.util.i.f6965b);
        sb.append("minorVersion=");
        sb.append(v());
        for (String str : this.f10064p) {
            sb.append(com.alipay.sdk.util.i.f6965b);
            sb.append("compatibleBrand=");
            sb.append(str);
        }
        sb.append("]");
        return sb.toString();
    }

    public String u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10056r, this, this));
        return this.f10062n;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10059u, this, this));
        return this.f10063o;
    }

    public void w(List<String> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10061w, this, this, list));
        this.f10064p = list;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10057s, this, this, str));
        this.f10062n = str;
    }

    public void y(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10058t, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10063o = j4;
    }

    public h(String str, long j4, List<String> list) {
        super(f10055q);
        Collections.emptyList();
        this.f10062n = str;
        this.f10063o = j4;
        this.f10064p = list;
    }
}
