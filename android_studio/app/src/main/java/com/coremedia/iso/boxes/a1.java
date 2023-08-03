package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: SubSampleInformationBox.java */
/* loaded from: classes.dex */
public class a1 extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f9919s = "subs";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f9920t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f9921u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f9922v = null;

    /* renamed from: r  reason: collision with root package name */
    private List<a> f9923r;

    /* compiled from: SubSampleInformationBox.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f9924a;

        /* renamed from: b  reason: collision with root package name */
        private List<C0074a> f9925b = new ArrayList();

        /* compiled from: SubSampleInformationBox.java */
        /* renamed from: com.coremedia.iso.boxes.a1$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0074a {

            /* renamed from: a  reason: collision with root package name */
            private long f9926a;

            /* renamed from: b  reason: collision with root package name */
            private int f9927b;

            /* renamed from: c  reason: collision with root package name */
            private int f9928c;

            /* renamed from: d  reason: collision with root package name */
            private long f9929d;

            public int a() {
                return this.f9928c;
            }

            public long b() {
                return this.f9929d;
            }

            public int c() {
                return this.f9927b;
            }

            public long d() {
                return this.f9926a;
            }

            public void e(int i4) {
                this.f9928c = i4;
            }

            public void f(long j4) {
                this.f9929d = j4;
            }

            public void g(int i4) {
                this.f9927b = i4;
            }

            public void h(long j4) {
                this.f9926a = j4;
            }

            public String toString() {
                return "SubsampleEntry{subsampleSize=" + this.f9926a + ", subsamplePriority=" + this.f9927b + ", discardable=" + this.f9928c + ", reserved=" + this.f9929d + '}';
            }
        }

        public long a() {
            return this.f9924a;
        }

        public int b() {
            return this.f9925b.size();
        }

        public List<C0074a> c() {
            return this.f9925b;
        }

        public void d(long j4) {
            this.f9924a = j4;
        }

        public String toString() {
            return "SampleEntry{sampleDelta=" + this.f9924a + ", subsampleCount=" + this.f9925b.size() + ", subsampleEntries=" + this.f9925b + '}';
        }
    }

    static {
        s();
    }

    public a1() {
        super(f9919s);
        this.f9923r = new ArrayList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SubSampleInformationBox.java", a1.class);
        f9920t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.SubSampleInformationBox", "", "", "", "java.util.List"), 50);
        f9921u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.SubSampleInformationBox", "java.util.List", "entries", "", "void"), 54);
        f9922v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SubSampleInformationBox", "", "", "", "java.lang.String"), 124);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        long l10 = com.coremedia.iso.g.l(byteBuffer);
        for (int i4 = 0; i4 < l10; i4++) {
            a aVar = new a();
            aVar.d(com.coremedia.iso.g.l(byteBuffer));
            int i10 = com.coremedia.iso.g.i(byteBuffer);
            for (int i11 = 0; i11 < i10; i11++) {
                a.C0074a c0074a = new a.C0074a();
                c0074a.h(getVersion() == 1 ? com.coremedia.iso.g.l(byteBuffer) : com.coremedia.iso.g.i(byteBuffer));
                c0074a.g(com.coremedia.iso.g.p(byteBuffer));
                c0074a.e(com.coremedia.iso.g.p(byteBuffer));
                c0074a.f(com.coremedia.iso.g.l(byteBuffer));
                aVar.c().add(c0074a);
            }
            this.f9923r.add(aVar);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f9923r.size());
        for (a aVar : this.f9923r) {
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
            com.coremedia.iso.i.f(byteBuffer, aVar.b());
            for (a.C0074a c0074a : aVar.c()) {
                if (getVersion() == 1) {
                    com.coremedia.iso.i.i(byteBuffer, c0074a.d());
                } else {
                    com.coremedia.iso.i.f(byteBuffer, com.googlecode.mp4parser.util.c.a(c0074a.d()));
                }
                com.coremedia.iso.i.m(byteBuffer, c0074a.c());
                com.coremedia.iso.i.m(byteBuffer, c0074a.a());
                com.coremedia.iso.i.i(byteBuffer, c0074a.b());
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        long j4 = 8;
        for (a aVar : this.f9923r) {
            j4 = j4 + 4 + 2;
            for (int i4 = 0; i4 < aVar.c().size(); i4++) {
                j4 = (getVersion() == 1 ? j4 + 4 : j4 + 2) + 2 + 4;
            }
        }
        return j4;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9922v, this, this));
        return "SubSampleInformationBox{entryCount=" + this.f9923r.size() + ", entries=" + this.f9923r + '}';
    }

    public List<a> v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f9920t, this, this));
        return this.f9923r;
    }

    public void w(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f9921u, this, this, list));
        this.f9923r = list;
    }
}
