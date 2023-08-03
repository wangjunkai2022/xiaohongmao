package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: EditListBox.java */
/* loaded from: classes.dex */
public class r extends com.googlecode.mp4parser.c {

    /* renamed from: s  reason: collision with root package name */
    public static final String f10290s = "elst";

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f10291t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f10292u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10293v = null;

    /* renamed from: r  reason: collision with root package name */
    private List<a> f10294r;

    static {
        s();
    }

    public r() {
        super(f10290s);
        this.f10294r = new LinkedList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("EditListBox.java", r.class);
        f10291t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.util.List"), 68);
        f10292u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.EditListBox", "java.util.List", "entries", "", "void"), 72);
        f10293v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.lang.String"), 108);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int a10 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f10294r = new LinkedList();
        for (int i4 = 0; i4 < a10; i4++) {
            this.f10294r.add(new a(this, byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10294r.size());
        for (a aVar : this.f10294r) {
            aVar.a(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        int size;
        if (getVersion() == 1) {
            size = this.f10294r.size() * 20;
        } else {
            size = this.f10294r.size() * 12;
        }
        return size + 8;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10293v, this, this));
        return "EditListBox{entries=" + this.f10294r + '}';
    }

    public List<a> v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10291t, this, this));
        return this.f10294r;
    }

    public void w(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10292u, this, this, list));
        this.f10294r = list;
    }

    /* compiled from: EditListBox.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        r f10295a;

        /* renamed from: b  reason: collision with root package name */
        private long f10296b;

        /* renamed from: c  reason: collision with root package name */
        private long f10297c;

        /* renamed from: d  reason: collision with root package name */
        private double f10298d;

        public a(r rVar, long j4, long j10, double d4) {
            this.f10296b = j4;
            this.f10297c = j10;
            this.f10298d = d4;
            this.f10295a = rVar;
        }

        public void a(ByteBuffer byteBuffer) {
            if (this.f10295a.getVersion() == 1) {
                com.coremedia.iso.i.l(byteBuffer, this.f10296b);
                byteBuffer.putLong(this.f10297c);
            } else {
                com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.c.a(this.f10296b));
                byteBuffer.putInt(com.googlecode.mp4parser.util.c.a(this.f10297c));
            }
            com.coremedia.iso.i.b(byteBuffer, this.f10298d);
        }

        public double b() {
            return this.f10298d;
        }

        public long c() {
            return this.f10297c;
        }

        public long d() {
            return this.f10296b;
        }

        public void e(double d4) {
            this.f10298d = d4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f10297c == aVar.f10297c && this.f10296b == aVar.f10296b;
        }

        public void f(long j4) {
            this.f10297c = j4;
        }

        public void g(long j4) {
            this.f10296b = j4;
        }

        public int hashCode() {
            long j4 = this.f10296b;
            long j10 = this.f10297c;
            return (((int) (j4 ^ (j4 >>> 32))) * 31) + ((int) (j10 ^ (j10 >>> 32)));
        }

        public String toString() {
            return "Entry{segmentDuration=" + this.f10296b + ", mediaTime=" + this.f10297c + ", mediaRate=" + this.f10298d + '}';
        }

        public a(r rVar, ByteBuffer byteBuffer) {
            if (rVar.getVersion() == 1) {
                this.f10296b = com.coremedia.iso.g.o(byteBuffer);
                this.f10297c = byteBuffer.getLong();
                this.f10298d = com.coremedia.iso.g.d(byteBuffer);
            } else {
                this.f10296b = com.coremedia.iso.g.l(byteBuffer);
                this.f10297c = byteBuffer.getInt();
                this.f10298d = com.coremedia.iso.g.d(byteBuffer);
            }
            this.f10295a = rVar;
        }
    }
}
