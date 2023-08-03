package com.coremedia.iso.boxes.fragment;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.extractor.ts.h0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: TrackRunBox.java */
/* loaded from: classes.dex */
public class n extends com.googlecode.mp4parser.c {
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
    private static final /* synthetic */ c.b L = null;
    private static final /* synthetic */ c.b M = null;
    private static final /* synthetic */ c.b N = null;
    private static final /* synthetic */ c.b O = null;

    /* renamed from: u  reason: collision with root package name */
    public static final String f10103u = "trun";

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f10104v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f10105w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f10106x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f10107y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f10108z = null;

    /* renamed from: r  reason: collision with root package name */
    private int f10109r;

    /* renamed from: s  reason: collision with root package name */
    private g f10110s;

    /* renamed from: t  reason: collision with root package name */
    private List<a> f10111t;

    /* compiled from: TrackRunBox.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f10112a;

        /* renamed from: b  reason: collision with root package name */
        private long f10113b;

        /* renamed from: c  reason: collision with root package name */
        private g f10114c;

        /* renamed from: d  reason: collision with root package name */
        private long f10115d;

        public a() {
        }

        public long i() {
            return this.f10115d;
        }

        public long j() {
            return this.f10112a;
        }

        public g k() {
            return this.f10114c;
        }

        public long l() {
            return this.f10113b;
        }

        public void m(int i4) {
            this.f10115d = i4;
        }

        public void n(long j4) {
            this.f10112a = j4;
        }

        public void o(g gVar) {
            this.f10114c = gVar;
        }

        public void p(long j4) {
            this.f10113b = j4;
        }

        public String toString() {
            return "Entry{duration=" + this.f10112a + ", size=" + this.f10113b + ", dlags=" + this.f10114c + ", compTimeOffset=" + this.f10115d + '}';
        }

        public a(long j4, long j10, g gVar, int i4) {
            this.f10112a = j4;
            this.f10113b = j10;
            this.f10114c = gVar;
            this.f10115d = i4;
        }
    }

    static {
        s();
    }

    public n() {
        super(f10103u);
        this.f10111t = new ArrayList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackRunBox.java", n.class);
        f10104v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "java.util.List"), 57);
        f10105w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDataOffset", "com.coremedia.iso.boxes.fragment.TrackRunBox", "int", "dataOffset", "", "void"), 120);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDataOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", TypedValues.Custom.S_BOOLEAN, "v", "", "void"), 267);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleSizePresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", TypedValues.Custom.S_BOOLEAN, "v", "", "void"), 275);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleDurationPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", TypedValues.Custom.S_BOOLEAN, "v", "", "void"), 283);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", TypedValues.Custom.S_BOOLEAN, "v", "", "void"), 292);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleCompositionTimeOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", TypedValues.Custom.S_BOOLEAN, "v", "", "void"), 300);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataOffset", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "int"), 309);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getFirstSampleFlags", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 313);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setFirstSampleFlags", "com.coremedia.iso.boxes.fragment.TrackRunBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "firstSampleFlags", "", "void"), TypedValues.Attributes.TYPE_EASING);
        N = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "java.lang.String"), 327);
        O = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.fragment.TrackRunBox", "java.util.List", "entries", "", "void"), 342);
        f10106x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleCompositionTimeOffsets", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "[J"), h0.G);
        f10107y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleCount", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", "long"), 238);
        f10108z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isDataOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 242);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isFirstSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 246);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isSampleSizePresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 251);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isSampleDurationPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 255);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isSampleFlagsPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 259);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isSampleCompositionTimeOffsetPresent", "com.coremedia.iso.boxes.fragment.TrackRunBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 263);
    }

    public boolean A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10108z, this, this));
        return (getFlags() & 1) == 1;
    }

    public boolean B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return (getFlags() & 4) == 4;
    }

    public boolean C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return (getFlags() & 2048) == 2048;
    }

    public boolean D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return (getFlags() & 256) == 256;
    }

    public boolean E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return (getFlags() & 1024) == 1024;
    }

    public boolean F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return (getFlags() & 512) == 512;
    }

    public void G(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f10105w, this, this, org.aspectj.runtime.internal.e.k(i4)));
        if (i4 == -1) {
            setFlags(getFlags() & 16777214);
        } else {
            setFlags(getFlags() | 1);
        }
        this.f10109r = i4;
    }

    public void H(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.a(z9)));
        if (z9) {
            setFlags(getFlags() | 1);
        } else {
            setFlags(getFlags() & 16777214);
        }
    }

    public void I(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(O, this, this, list));
        this.f10111t = list;
    }

    public void J(g gVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(M, this, this, gVar));
        if (gVar == null) {
            setFlags(getFlags() & 16777211);
        } else {
            setFlags(getFlags() | 4);
        }
        this.f10110s = gVar;
    }

    public void K(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, org.aspectj.runtime.internal.e.a(z9)));
        if (z9) {
            setFlags(getFlags() | 2048);
        } else {
            setFlags(getFlags() & 16775167);
        }
    }

    public void L(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.a(z9)));
        if (z9) {
            setFlags(getFlags() | 256);
        } else {
            setFlags(getFlags() & 16776959);
        }
    }

    public void M(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, org.aspectj.runtime.internal.e.a(z9)));
        if (z9) {
            setFlags(getFlags() | 1024);
        } else {
            setFlags(getFlags() & 16776191);
        }
    }

    public void N(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.a(z9)));
        if (z9) {
            setFlags(getFlags() | 512);
        } else {
            setFlags(getFlags() & 16776703);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        long l10 = com.coremedia.iso.g.l(byteBuffer);
        if ((getFlags() & 1) == 1) {
            this.f10109r = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        } else {
            this.f10109r = -1;
        }
        if ((getFlags() & 4) == 4) {
            this.f10110s = new g(byteBuffer);
        }
        for (int i4 = 0; i4 < l10; i4++) {
            a aVar = new a();
            if ((getFlags() & 256) == 256) {
                aVar.f10112a = com.coremedia.iso.g.l(byteBuffer);
            }
            if ((getFlags() & 512) == 512) {
                aVar.f10113b = com.coremedia.iso.g.l(byteBuffer);
            }
            if ((getFlags() & 1024) == 1024) {
                aVar.f10114c = new g(byteBuffer);
            }
            if ((getFlags() & 2048) == 2048) {
                aVar.f10115d = byteBuffer.getInt();
            }
            this.f10111t.add(aVar);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10111t.size());
        int flags = getFlags();
        if ((flags & 1) == 1) {
            com.coremedia.iso.i.i(byteBuffer, this.f10109r);
        }
        if ((flags & 4) == 4) {
            this.f10110s.a(byteBuffer);
        }
        for (a aVar : this.f10111t) {
            if ((flags & 256) == 256) {
                com.coremedia.iso.i.i(byteBuffer, aVar.f10112a);
            }
            if ((flags & 512) == 512) {
                com.coremedia.iso.i.i(byteBuffer, aVar.f10113b);
            }
            if ((flags & 1024) == 1024) {
                aVar.f10114c.a(byteBuffer);
            }
            if ((flags & 2048) == 2048) {
                if (getVersion() == 0) {
                    com.coremedia.iso.i.i(byteBuffer, aVar.f10115d);
                } else {
                    byteBuffer.putInt((int) aVar.f10115d);
                }
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        int flags = getFlags();
        long j4 = (flags & 1) == 1 ? 12L : 8L;
        if ((flags & 4) == 4) {
            j4 += 4;
        }
        long j10 = (flags & 256) == 256 ? 4L : 0L;
        if ((flags & 512) == 512) {
            j10 += 4;
        }
        if ((flags & 1024) == 1024) {
            j10 += 4;
        }
        if ((flags & 2048) == 2048) {
            j10 += 4;
        }
        return j4 + (j10 * this.f10111t.size());
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(N, this, this));
        return "TrackRunBox{sampleCount=" + this.f10111t.size() + ", dataOffset=" + this.f10109r + ", dataOffsetPresent=" + A() + ", sampleSizePresent=" + F() + ", sampleDurationPresent=" + D() + ", sampleFlagsPresentPresent=" + E() + ", sampleCompositionTimeOffsetPresent=" + C() + ", firstSampleFlags=" + this.f10110s + '}';
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f10109r;
    }

    public List<a> w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10104v, this, this));
        return this.f10111t;
    }

    public g x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f10110s;
    }

    public long[] y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10106x, this, this));
        if (C()) {
            int size = this.f10111t.size();
            long[] jArr = new long[size];
            for (int i4 = 0; i4 < size; i4++) {
                jArr[i4] = this.f10111t.get(i4).i();
            }
            return jArr;
        }
        return null;
    }

    public long z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10107y, this, this));
        return this.f10111t.size();
    }
}
