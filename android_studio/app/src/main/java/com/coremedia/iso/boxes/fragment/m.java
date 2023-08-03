package com.coremedia.iso.boxes.fragment;

import com.google.android.exoplayer2.extractor.ts.a0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: TrackFragmentRandomAccessBox.java */
/* loaded from: classes.dex */
public class m extends com.googlecode.mp4parser.c {
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
    public static final String f10089x = "tfra";

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10090y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10091z = null;

    /* renamed from: r  reason: collision with root package name */
    private long f10092r;

    /* renamed from: s  reason: collision with root package name */
    private int f10093s;

    /* renamed from: t  reason: collision with root package name */
    private int f10094t;

    /* renamed from: u  reason: collision with root package name */
    private int f10095u;

    /* renamed from: v  reason: collision with root package name */
    private int f10096v;

    /* renamed from: w  reason: collision with root package name */
    private List<a> f10097w;

    /* compiled from: TrackFragmentRandomAccessBox.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f10098a;

        /* renamed from: b  reason: collision with root package name */
        private long f10099b;

        /* renamed from: c  reason: collision with root package name */
        private long f10100c;

        /* renamed from: d  reason: collision with root package name */
        private long f10101d;

        /* renamed from: e  reason: collision with root package name */
        private long f10102e;

        public a() {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f10099b == aVar.f10099b && this.f10102e == aVar.f10102e && this.f10098a == aVar.f10098a && this.f10100c == aVar.f10100c && this.f10101d == aVar.f10101d;
        }

        public int hashCode() {
            long j4 = this.f10098a;
            long j10 = this.f10099b;
            long j11 = this.f10100c;
            long j12 = this.f10101d;
            long j13 = this.f10102e;
            return (((((((((int) (j4 ^ (j4 >>> 32))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31) + ((int) (j13 ^ (j13 >>> 32)));
        }

        public long k() {
            return this.f10099b;
        }

        public long l() {
            return this.f10102e;
        }

        public long m() {
            return this.f10098a;
        }

        public long n() {
            return this.f10100c;
        }

        public long o() {
            return this.f10101d;
        }

        public void p(long j4) {
            this.f10099b = j4;
        }

        public void q(long j4) {
            this.f10102e = j4;
        }

        public void r(long j4) {
            this.f10098a = j4;
        }

        public void s(long j4) {
            this.f10100c = j4;
        }

        public void t(long j4) {
            this.f10101d = j4;
        }

        public String toString() {
            return "Entry{time=" + this.f10098a + ", moofOffset=" + this.f10099b + ", trafNumber=" + this.f10100c + ", trunNumber=" + this.f10101d + ", sampleNumber=" + this.f10102e + '}';
        }

        public a(long j4, long j10, long j11, long j12, long j13) {
            this.f10099b = j10;
            this.f10102e = j13;
            this.f10098a = j4;
            this.f10100c = j11;
            this.f10101d = j12;
        }
    }

    static {
        s();
    }

    public m() {
        super(f10089x);
        this.f10094t = 2;
        this.f10095u = 2;
        this.f10096v = 2;
        this.f10097w = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackFragmentRandomAccessBox.java", m.class);
        f10090y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "long", "trackId", "", "void"), 145);
        f10091z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLengthSizeOfTrafNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "int", "lengthSizeOfTrafNum", "", "void"), 149);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "java.util.List"), 185);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "java.util.List", "entries", "", "void"), a0.f22979w);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "java.lang.String"), 290);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLengthSizeOfTrunNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "int", "lengthSizeOfTrunNum", "", "void"), 153);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setLengthSizeOfSampleNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "int", "lengthSizeOfSampleNum", "", "void"), 157);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "long"), 161);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getReserved", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 165);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLengthSizeOfTrafNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 169);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLengthSizeOfTrunNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 173);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLengthSizeOfSampleNum", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "int"), 177);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getNumberOfEntries", "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox", "", "", "", "long"), 181);
    }

    public int A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f10093s;
    }

    public long B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f10092r;
    }

    public void C(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, list));
        this.f10097w = list;
    }

    public void D(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10096v = i4;
    }

    public void E(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10091z, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10094t = i4;
    }

    public void F(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f10095u = i4;
    }

    public void G(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10090y, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10092r = j4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10092r = com.coremedia.iso.g.l(byteBuffer);
        long l10 = com.coremedia.iso.g.l(byteBuffer);
        this.f10093s = (int) (l10 >> 6);
        this.f10094t = (((int) (63 & l10)) >> 4) + 1;
        this.f10095u = (((int) (12 & l10)) >> 2) + 1;
        this.f10096v = ((int) (l10 & 3)) + 1;
        long l11 = com.coremedia.iso.g.l(byteBuffer);
        this.f10097w = new ArrayList();
        for (int i4 = 0; i4 < l11; i4++) {
            a aVar = new a();
            if (getVersion() == 1) {
                aVar.f10098a = com.coremedia.iso.g.o(byteBuffer);
                aVar.f10099b = com.coremedia.iso.g.o(byteBuffer);
            } else {
                aVar.f10098a = com.coremedia.iso.g.l(byteBuffer);
                aVar.f10099b = com.coremedia.iso.g.l(byteBuffer);
            }
            aVar.f10100c = com.coremedia.iso.h.a(byteBuffer, this.f10094t);
            aVar.f10101d = com.coremedia.iso.h.a(byteBuffer, this.f10095u);
            aVar.f10102e = com.coremedia.iso.h.a(byteBuffer, this.f10096v);
            this.f10097w.add(aVar);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10092r);
        com.coremedia.iso.i.i(byteBuffer, (this.f10093s << 6) | (((this.f10094t - 1) & 3) << 4) | (((this.f10095u - 1) & 3) << 2) | ((this.f10096v - 1) & 3));
        com.coremedia.iso.i.i(byteBuffer, this.f10097w.size());
        for (a aVar : this.f10097w) {
            if (getVersion() == 1) {
                com.coremedia.iso.i.l(byteBuffer, aVar.f10098a);
                com.coremedia.iso.i.l(byteBuffer, aVar.f10099b);
            } else {
                com.coremedia.iso.i.i(byteBuffer, aVar.f10098a);
                com.coremedia.iso.i.i(byteBuffer, aVar.f10099b);
            }
            com.coremedia.iso.j.a(aVar.f10100c, byteBuffer, this.f10094t);
            com.coremedia.iso.j.a(aVar.f10101d, byteBuffer, this.f10095u);
            com.coremedia.iso.j.a(aVar.f10102e, byteBuffer, this.f10096v);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        int size;
        if (getVersion() == 1) {
            size = this.f10097w.size() * 16;
        } else {
            size = this.f10097w.size() * 8;
        }
        return 16 + size + (this.f10094t * this.f10097w.size()) + (this.f10095u * this.f10097w.size()) + (this.f10096v * this.f10097w.size());
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return "TrackFragmentRandomAccessBox{trackId=" + this.f10092r + ", entries=" + this.f10097w + '}';
    }

    public List<a> v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return Collections.unmodifiableList(this.f10097w);
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f10096v;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f10094t;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f10095u;
    }

    public long z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f10097w.size();
    }
}
