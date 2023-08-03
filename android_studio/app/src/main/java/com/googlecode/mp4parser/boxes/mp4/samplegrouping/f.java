package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: SampleToGroupBox.java */
/* loaded from: classes2.dex */
public class f extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;

    /* renamed from: u  reason: collision with root package name */
    public static final String f36868u = "sbgp";

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36869v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36870w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36871x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36872y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36873z = null;

    /* renamed from: r  reason: collision with root package name */
    private String f36874r;

    /* renamed from: s  reason: collision with root package name */
    private String f36875s;

    /* renamed from: t  reason: collision with root package name */
    List<a> f36876t;

    /* compiled from: SampleToGroupBox.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f36877a;

        /* renamed from: b  reason: collision with root package name */
        private int f36878b;

        public a(long j4, int i4) {
            this.f36877a = j4;
            this.f36878b = i4;
        }

        public int a() {
            return this.f36878b;
        }

        public long b() {
            return this.f36877a;
        }

        public void c(int i4) {
            this.f36878b = i4;
        }

        public void d(long j4) {
            this.f36877a = j4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f36878b == aVar.f36878b && this.f36877a == aVar.f36877a;
        }

        public int hashCode() {
            long j4 = this.f36877a;
            return (((int) (j4 ^ (j4 >>> 32))) * 31) + this.f36878b;
        }

        public String toString() {
            return "Entry{sampleCount=" + this.f36877a + ", groupDescriptionIndex=" + this.f36878b + '}';
        }
    }

    static {
        s();
    }

    public f() {
        super(f36868u);
        this.f36876t = new LinkedList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SampleToGroupBox.java", f.class);
        f36869v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.lang.String"), 150);
        f36870w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.lang.String", "groupingType", "", "void"), 154);
        f36871x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGroupingTypeParameter", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.lang.String"), 158);
        f36872y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setGroupingTypeParameter", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.lang.String", "groupingTypeParameter", "", "void"), 162);
        f36873z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.util.List"), 166);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.util.List", "entries", "", "void"), 170);
    }

    public void A(String str) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36872y, this, this, str));
        this.f36875s = str;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f36874r = com.coremedia.iso.g.b(byteBuffer);
        if (getVersion() == 1) {
            this.f36875s = com.coremedia.iso.g.b(byteBuffer);
        }
        long l10 = com.coremedia.iso.g.l(byteBuffer);
        while (true) {
            long j4 = l10 - 1;
            if (l10 <= 0) {
                return;
            }
            this.f36876t.add(new a(com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer)), com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer))));
            l10 = j4;
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(this.f36874r.getBytes());
        if (getVersion() == 1) {
            byteBuffer.put(this.f36875s.getBytes());
        }
        com.coremedia.iso.i.i(byteBuffer, this.f36876t.size());
        for (a aVar : this.f36876t) {
            com.coremedia.iso.i.i(byteBuffer, aVar.b());
            com.coremedia.iso.i.i(byteBuffer, aVar.a());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return getVersion() == 1 ? (this.f36876t.size() * 8) + 16 : (this.f36876t.size() * 8) + 12;
    }

    public List<a> v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36873z, this, this));
        return this.f36876t;
    }

    public String w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36869v, this, this));
        return this.f36874r;
    }

    public String x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36871x, this, this));
        return this.f36875s;
    }

    public void y(List<a> list) {
        j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, list));
        this.f36876t = list;
    }

    public void z(String str) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36870w, this, this, str));
        this.f36874r = str;
    }
}
