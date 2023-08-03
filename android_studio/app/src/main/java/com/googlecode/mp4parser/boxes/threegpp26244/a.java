package com.googlecode.mp4parser.boxes.threegpp26244;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.j;
import com.qennnsad.aknkaksd.util.a1;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: SegmentIndexBox.java */
/* loaded from: classes2.dex */
public class a extends c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;
    private static final /* synthetic */ c.b G = null;
    private static final /* synthetic */ c.b H = null;
    private static final /* synthetic */ c.b I = null;
    private static final /* synthetic */ c.b J = null;
    private static final /* synthetic */ c.b K = null;

    /* renamed from: x  reason: collision with root package name */
    public static final String f36908x = "sidx";

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36909y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36910z = null;

    /* renamed from: r  reason: collision with root package name */
    List<C0290a> f36911r;

    /* renamed from: s  reason: collision with root package name */
    long f36912s;

    /* renamed from: t  reason: collision with root package name */
    long f36913t;

    /* renamed from: u  reason: collision with root package name */
    long f36914u;

    /* renamed from: v  reason: collision with root package name */
    long f36915v;

    /* renamed from: w  reason: collision with root package name */
    int f36916w;

    /* compiled from: SegmentIndexBox.java */
    /* renamed from: com.googlecode.mp4parser.boxes.threegpp26244.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0290a {

        /* renamed from: a  reason: collision with root package name */
        byte f36917a;

        /* renamed from: b  reason: collision with root package name */
        int f36918b;

        /* renamed from: c  reason: collision with root package name */
        long f36919c;

        /* renamed from: d  reason: collision with root package name */
        byte f36920d;

        /* renamed from: e  reason: collision with root package name */
        byte f36921e;

        /* renamed from: f  reason: collision with root package name */
        int f36922f;

        public C0290a() {
        }

        public byte a() {
            return this.f36917a;
        }

        public int b() {
            return this.f36918b;
        }

        public int c() {
            return this.f36922f;
        }

        public byte d() {
            return this.f36921e;
        }

        public byte e() {
            return this.f36920d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0290a c0290a = (C0290a) obj;
            return this.f36917a == c0290a.f36917a && this.f36918b == c0290a.f36918b && this.f36922f == c0290a.f36922f && this.f36921e == c0290a.f36921e && this.f36920d == c0290a.f36920d && this.f36919c == c0290a.f36919c;
        }

        public long f() {
            return this.f36919c;
        }

        public void g(byte b10) {
            this.f36917a = b10;
        }

        public void h(int i4) {
            this.f36918b = i4;
        }

        public int hashCode() {
            long j4 = this.f36919c;
            return (((((((((this.f36917a * com.google.common.base.c.I) + this.f36918b) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + this.f36920d) * 31) + this.f36921e) * 31) + this.f36922f;
        }

        public void i(int i4) {
            this.f36922f = i4;
        }

        public void j(byte b10) {
            this.f36921e = b10;
        }

        public void k(byte b10) {
            this.f36920d = b10;
        }

        public void l(long j4) {
            this.f36919c = j4;
        }

        public String toString() {
            return "Entry{referenceType=" + ((int) this.f36917a) + ", referencedSize=" + this.f36918b + ", subsegmentDuration=" + this.f36919c + ", startsWithSap=" + ((int) this.f36920d) + ", sapType=" + ((int) this.f36921e) + ", sapDeltaTime=" + this.f36922f + '}';
        }

        public C0290a(int i4, int i10, long j4, boolean z9, int i11, int i12) {
            this.f36917a = (byte) i4;
            this.f36918b = i10;
            this.f36919c = j4;
            this.f36920d = z9 ? (byte) 1 : (byte) 0;
            this.f36921e = (byte) i11;
            this.f36922f = i12;
        }
    }

    static {
        s();
    }

    public a() {
        super(f36908x);
        this.f36911r = new ArrayList();
    }

    private static /* synthetic */ void s() {
        e eVar = new e("SegmentIndexBox.java", a.class);
        f36909y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "java.util.List"), 128);
        f36910z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "java.util.List", "entries", "", "void"), 132);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "int"), 168);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReserved", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "int", "reserved", "", "void"), h0.K);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "java.lang.String"), 298);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReferenceId", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "long"), 136);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setReferenceId", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "long", "referenceId", "", "void"), 140);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTimeScale", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "long"), 144);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTimeScale", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "long", "timeScale", "", "void"), 148);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEarliestPresentationTime", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "long"), 152);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEarliestPresentationTime", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "long", "earliestPresentationTime", "", "void"), 156);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFirstOffset", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "", "", "", "long"), a1.f54532a);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setFirstOffset", "com.googlecode.mp4parser.boxes.threegpp26244.SegmentIndexBox", "long", "firstOffset", "", "void"), 164);
    }

    public long A() {
        j.b().c(e.v(C, this, this));
        return this.f36913t;
    }

    public void B(long j4) {
        j.b().c(e.w(F, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f36914u = j4;
    }

    public void C(List<C0290a> list) {
        j.b().c(e.w(f36910z, this, this, list));
        this.f36911r = list;
    }

    public void D(long j4) {
        j.b().c(e.w(H, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f36915v = j4;
    }

    public void E(long j4) {
        j.b().c(e.w(B, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f36912s = j4;
    }

    public void F(int i4) {
        j.b().c(e.w(J, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36916w = i4;
    }

    public void G(long j4) {
        j.b().c(e.w(D, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f36913t = j4;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f36912s = g.l(byteBuffer);
        this.f36913t = g.l(byteBuffer);
        if (getVersion() == 0) {
            this.f36914u = g.l(byteBuffer);
            this.f36915v = g.l(byteBuffer);
        } else {
            this.f36914u = g.o(byteBuffer);
            this.f36915v = g.o(byteBuffer);
        }
        this.f36916w = g.i(byteBuffer);
        int i4 = g.i(byteBuffer);
        for (int i10 = 0; i10 < i4; i10++) {
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
            C0290a c0290a = new C0290a();
            c0290a.g((byte) cVar.c(1));
            c0290a.h(cVar.c(31));
            c0290a.l(g.l(byteBuffer));
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
            c0290a.k((byte) cVar2.c(1));
            c0290a.j((byte) cVar2.c(3));
            c0290a.i(cVar2.c(28));
            this.f36911r.add(c0290a);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.i(byteBuffer, this.f36912s);
        i.i(byteBuffer, this.f36913t);
        if (getVersion() == 0) {
            i.i(byteBuffer, this.f36914u);
            i.i(byteBuffer, this.f36915v);
        } else {
            i.l(byteBuffer, this.f36914u);
            i.l(byteBuffer, this.f36915v);
        }
        i.f(byteBuffer, this.f36916w);
        i.f(byteBuffer, this.f36911r.size());
        for (C0290a c0290a : this.f36911r) {
            d dVar = new d(byteBuffer);
            dVar.a(c0290a.a(), 1);
            dVar.a(c0290a.b(), 31);
            i.i(byteBuffer, c0290a.f());
            d dVar2 = new d(byteBuffer);
            dVar2.a(c0290a.e(), 1);
            dVar2.a(c0290a.d(), 3);
            dVar2.a(c0290a.c(), 28);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 12 + (getVersion() == 0 ? 8 : 16) + 2 + 2 + (this.f36911r.size() * 12);
    }

    public String toString() {
        j.b().c(e.v(K, this, this));
        return "SegmentIndexBox{entries=" + this.f36911r + ", referenceId=" + this.f36912s + ", timeScale=" + this.f36913t + ", earliestPresentationTime=" + this.f36914u + ", firstOffset=" + this.f36915v + ", reserved=" + this.f36916w + '}';
    }

    public long v() {
        j.b().c(e.v(E, this, this));
        return this.f36914u;
    }

    public List<C0290a> w() {
        j.b().c(e.v(f36909y, this, this));
        return this.f36911r;
    }

    public long x() {
        j.b().c(e.v(G, this, this));
        return this.f36915v;
    }

    public long y() {
        j.b().c(e.v(A, this, this));
        return this.f36912s;
    }

    public int z() {
        j.b().c(e.v(I, this, this));
        return this.f36916w;
    }
}
