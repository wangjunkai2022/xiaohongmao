package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.Date;
import org.aspectj.lang.c;

/* compiled from: MediaHeaderBox.java */
/* loaded from: classes.dex */
public class e0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;
    private static final /* synthetic */ c.b G = null;
    private static final /* synthetic */ c.b H = null;

    /* renamed from: w  reason: collision with root package name */
    public static final String f10010w = "mdhd";

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10011x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10012y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10013z = null;

    /* renamed from: r  reason: collision with root package name */
    private Date f10014r;

    /* renamed from: s  reason: collision with root package name */
    private Date f10015s;

    /* renamed from: t  reason: collision with root package name */
    private long f10016t;

    /* renamed from: u  reason: collision with root package name */
    private long f10017u;

    /* renamed from: v  reason: collision with root package name */
    private String f10018v;

    static {
        s();
    }

    public e0() {
        super(f10010w);
        this.f10014r = new Date();
        this.f10015s = new Date();
        this.f10018v = "eng";
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MediaHeaderBox.java", e0.class);
        f10011x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.util.Date"), 46);
        f10012y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.util.Date"), 50);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.lang.String"), 118);
        f10013z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "long"), 54);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "long"), 58);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.lang.String"), 62);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "creationTime", "", "void"), 79);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "modificationTime", "", "void"), 83);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "long", "timescale", "", "void"), 87);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "long", "duration", "", "void"), 91);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "java.lang.String", "language", "", "void"), 95);
    }

    public void A(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, date));
        this.f10014r = date;
    }

    public void B(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10017u = j4;
    }

    public void C(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, str));
        this.f10018v = str;
    }

    public void D(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, date));
        this.f10015s = date;
    }

    public void E(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10016t = j4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            this.f10014r = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f10015s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f10016t = com.coremedia.iso.g.l(byteBuffer);
            this.f10017u = com.coremedia.iso.g.o(byteBuffer);
        } else {
            this.f10014r = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f10015s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f10016t = com.coremedia.iso.g.l(byteBuffer);
            this.f10017u = com.coremedia.iso.g.l(byteBuffer);
        }
        this.f10018v = com.coremedia.iso.g.f(byteBuffer);
        com.coremedia.iso.g.i(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 1) {
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10014r));
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10015s));
            com.coremedia.iso.i.i(byteBuffer, this.f10016t);
            com.coremedia.iso.i.l(byteBuffer, this.f10017u);
        } else {
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10014r));
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f10015s));
            com.coremedia.iso.i.i(byteBuffer, this.f10016t);
            com.coremedia.iso.i.i(byteBuffer, this.f10017u);
        }
        com.coremedia.iso.i.d(byteBuffer, this.f10018v);
        com.coremedia.iso.i.f(byteBuffer, 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return (getVersion() == 1 ? 32L : 20L) + 2 + 2;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return "MediaHeaderBox[creationTime=" + v() + com.alipay.sdk.util.i.f6965b + "modificationTime=" + y() + com.alipay.sdk.util.i.f6965b + "timescale=" + z() + com.alipay.sdk.util.i.f6965b + "duration=" + w() + com.alipay.sdk.util.i.f6965b + "language=" + x() + "]";
    }

    public Date v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10011x, this, this));
        return this.f10014r;
    }

    public long w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f10017u;
    }

    public String x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f10018v;
    }

    public Date y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10012y, this, this));
        return this.f10015s;
    }

    public long z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10013z, this, this));
        return this.f10016t;
    }
}
