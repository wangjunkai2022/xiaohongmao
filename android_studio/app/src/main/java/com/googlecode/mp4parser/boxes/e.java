package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: EC3SpecificBox.java */
/* loaded from: classes2.dex */
public class e extends com.googlecode.mp4parser.a {

    /* renamed from: q  reason: collision with root package name */
    public static final String f36673q = "dec3";

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f36674r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f36675s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f36676t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36677u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36678v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36679w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36680x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36681y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36682z = null;

    /* renamed from: n  reason: collision with root package name */
    List<a> f36683n;

    /* renamed from: o  reason: collision with root package name */
    int f36684o;

    /* renamed from: p  reason: collision with root package name */
    int f36685p;

    /* compiled from: EC3SpecificBox.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f36686a;

        /* renamed from: b  reason: collision with root package name */
        public int f36687b;

        /* renamed from: c  reason: collision with root package name */
        public int f36688c;

        /* renamed from: d  reason: collision with root package name */
        public int f36689d;

        /* renamed from: e  reason: collision with root package name */
        public int f36690e;

        /* renamed from: f  reason: collision with root package name */
        public int f36691f;

        /* renamed from: g  reason: collision with root package name */
        public int f36692g;

        /* renamed from: h  reason: collision with root package name */
        public int f36693h;

        /* renamed from: i  reason: collision with root package name */
        public int f36694i;

        public String toString() {
            return "Entry{fscod=" + this.f36686a + ", bsid=" + this.f36687b + ", bsmod=" + this.f36688c + ", acmod=" + this.f36689d + ", lfeon=" + this.f36690e + ", reserved=" + this.f36691f + ", num_dep_sub=" + this.f36692g + ", chan_loc=" + this.f36693h + ", reserved2=" + this.f36694i + '}';
        }
    }

    static {
        t();
    }

    public e() {
        super(f36673q);
        this.f36683n = new LinkedList();
    }

    private static /* synthetic */ void t() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("EC3SpecificBox.java", e.class);
        f36674r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getContentSize", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "long"), 25);
        f36675s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getContent", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 65);
        f36676t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "java.util.List"), 86);
        f36677u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "java.util.List", "entries", "", "void"), 90);
        f36678v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "addEntry", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "com.googlecode.mp4parser.boxes.EC3SpecificBox$Entry", "entry", "", "void"), 94);
        f36679w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataRate", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "int"), 98);
        f36680x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDataRate", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "int", "dataRate", "", "void"), 102);
        f36681y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getNumIndSub", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "", "", "", "int"), 106);
        f36682z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setNumIndSub", "com.googlecode.mp4parser.boxes.EC3SpecificBox", "int", "numIndSub", "", "void"), 110);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
        this.f36684o = cVar.c(13);
        this.f36685p = cVar.c(3) + 1;
        for (int i4 = 0; i4 < this.f36685p; i4++) {
            a aVar = new a();
            aVar.f36686a = cVar.c(2);
            aVar.f36687b = cVar.c(5);
            aVar.f36688c = cVar.c(5);
            aVar.f36689d = cVar.c(3);
            aVar.f36690e = cVar.c(1);
            aVar.f36691f = cVar.c(3);
            int c10 = cVar.c(4);
            aVar.f36692g = c10;
            if (c10 > 0) {
                aVar.f36693h = cVar.c(9);
            } else {
                aVar.f36694i = cVar.c(1);
            }
            this.f36683n.add(aVar);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void c(ByteBuffer byteBuffer) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36675s, this, this, byteBuffer));
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
        dVar.a(this.f36684o, 13);
        dVar.a(this.f36683n.size() - 1, 3);
        for (a aVar : this.f36683n) {
            dVar.a(aVar.f36686a, 2);
            dVar.a(aVar.f36687b, 5);
            dVar.a(aVar.f36688c, 5);
            dVar.a(aVar.f36689d, 3);
            dVar.a(aVar.f36690e, 1);
            dVar.a(aVar.f36691f, 3);
            dVar.a(aVar.f36692g, 4);
            if (aVar.f36692g > 0) {
                dVar.a(aVar.f36693h, 9);
            } else {
                dVar.a(aVar.f36694i, 1);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long e() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36674r, this, this));
        long j4 = 2;
        for (a aVar : this.f36683n) {
            j4 += aVar.f36692g > 0 ? 4L : 3L;
        }
        return j4;
    }

    public void s(a aVar) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36678v, this, this, aVar));
        this.f36683n.add(aVar);
    }

    public int u() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36679w, this, this));
        return this.f36684o;
    }

    public List<a> v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36676t, this, this));
        return this.f36683n;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36681y, this, this));
        return this.f36685p;
    }

    public void x(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36680x, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36684o = i4;
    }

    public void y(List<a> list) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36677u, this, this, list));
        this.f36683n = list;
    }

    public void z(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36682z, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36685p = i4;
    }
}
