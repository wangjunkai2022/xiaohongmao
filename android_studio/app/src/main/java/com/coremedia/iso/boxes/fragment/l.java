package com.coremedia.iso.boxes.fragment;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.mlkit.common.MlKitException;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: TrackFragmentHeaderBox.java */
/* loaded from: classes.dex */
public class l extends com.googlecode.mp4parser.c {
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
    private static final /* synthetic */ c.b P = null;
    private static final /* synthetic */ c.b Q = null;
    private static final /* synthetic */ c.b R = null;
    private static final /* synthetic */ c.b S = null;
    private static final /* synthetic */ c.b T = null;
    private static final /* synthetic */ c.b U = null;
    private static final /* synthetic */ c.b V = null;

    /* renamed from: z  reason: collision with root package name */
    public static final String f10080z = "tfhd";

    /* renamed from: r  reason: collision with root package name */
    private long f10081r;

    /* renamed from: s  reason: collision with root package name */
    private long f10082s;

    /* renamed from: t  reason: collision with root package name */
    private long f10083t;

    /* renamed from: u  reason: collision with root package name */
    private long f10084u;

    /* renamed from: v  reason: collision with root package name */
    private long f10085v;

    /* renamed from: w  reason: collision with root package name */
    private g f10086w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f10087x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f10088y;

    static {
        s();
    }

    public l() {
        super(f10080z);
        this.f10082s = -1L;
        this.f10084u = -1L;
        this.f10085v = -1L;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackFragmentHeaderBox.java", l.class);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hasBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 126);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hasSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), h0.I);
        K = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "com.coremedia.iso.boxes.fragment.SampleFlags"), 166);
        L = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isDurationIsEmpty", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 170);
        M = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "isDefaultBaseIsMoof", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 174);
        N = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "trackId", "", "void"), 178);
        O = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "baseDataOffset", "", "void"), 182);
        P = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "sampleDescriptionIndex", "", "void"), 191);
        Q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "defaultSampleDuration", "", "void"), 200);
        R = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "long", "defaultSampleSize", "", "void"), MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR);
        S = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "com.coremedia.iso.boxes.fragment.SampleFlags", "defaultSampleFlags", "", "void"), 210);
        T = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDurationIsEmpty", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", TypedValues.Custom.S_BOOLEAN, "durationIsEmpty", "", "void"), com.facebook.imageutils.c.f13395j);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hasDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), h0.Q);
        U = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultBaseIsMoof", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", TypedValues.Custom.S_BOOLEAN, "defaultBaseIsMoof", "", "void"), 220);
        V = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "java.lang.String"), 226);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hasDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), h0.H);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hasDefaultSampleFlags", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", TypedValues.Custom.S_BOOLEAN), 142);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getTrackId", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 146);
        G = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getBaseDataOffset", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 150);
        H = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getSampleDescriptionIndex", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 154);
        I = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultSampleDuration", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 158);
        J = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultSampleSize", "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox", "", "", "", "long"), 162);
    }

    public long A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f10081r;
    }

    public boolean B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return (getFlags() & 1) != 0;
    }

    public boolean C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return (getFlags() & 8) != 0;
    }

    public boolean D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return (getFlags() & 32) != 0;
    }

    public boolean E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return (getFlags() & 16) != 0;
    }

    public boolean F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return (getFlags() & 2) != 0;
    }

    public boolean G() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.f10088y;
    }

    public boolean H() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f10087x;
    }

    public void I(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(O, this, this, org.aspectj.runtime.internal.e.m(j4)));
        if (j4 == -1) {
            setFlags(getFlags() & 2147483646);
        } else {
            setFlags(getFlags() | 1);
        }
        this.f10082s = j4;
    }

    public void J(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(U, this, this, org.aspectj.runtime.internal.e.a(z9)));
        setFlags(getFlags() | 131072);
        this.f10088y = z9;
    }

    public void K(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(Q, this, this, org.aspectj.runtime.internal.e.m(j4)));
        setFlags(getFlags() | 8);
        this.f10084u = j4;
    }

    public void L(g gVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(S, this, this, gVar));
        setFlags(getFlags() | 32);
        this.f10086w = gVar;
    }

    public void M(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(R, this, this, org.aspectj.runtime.internal.e.m(j4)));
        setFlags(getFlags() | 16);
        this.f10085v = j4;
    }

    public void N(boolean z9) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(T, this, this, org.aspectj.runtime.internal.e.a(z9)));
        setFlags(getFlags() | 65536);
        this.f10087x = z9;
    }

    public void O(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(P, this, this, org.aspectj.runtime.internal.e.m(j4)));
        if (j4 == -1) {
            setFlags(getFlags() & 2147483645);
        } else {
            setFlags(getFlags() | 2);
        }
        this.f10083t = j4;
    }

    public void P(long j4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(N, this, this, org.aspectj.runtime.internal.e.m(j4)));
        this.f10081r = j4;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10081r = com.coremedia.iso.g.l(byteBuffer);
        if ((getFlags() & 1) == 1) {
            this.f10082s = com.coremedia.iso.g.o(byteBuffer);
        }
        if ((getFlags() & 2) == 2) {
            this.f10083t = com.coremedia.iso.g.l(byteBuffer);
        }
        if ((getFlags() & 8) == 8) {
            this.f10084u = com.coremedia.iso.g.l(byteBuffer);
        }
        if ((getFlags() & 16) == 16) {
            this.f10085v = com.coremedia.iso.g.l(byteBuffer);
        }
        if ((getFlags() & 32) == 32) {
            this.f10086w = new g(byteBuffer);
        }
        if ((getFlags() & 65536) == 65536) {
            this.f10087x = true;
        }
        if ((getFlags() & 131072) == 131072) {
            this.f10088y = true;
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10081r);
        if ((getFlags() & 1) == 1) {
            com.coremedia.iso.i.l(byteBuffer, v());
        }
        if ((getFlags() & 2) == 2) {
            com.coremedia.iso.i.i(byteBuffer, z());
        }
        if ((getFlags() & 8) == 8) {
            com.coremedia.iso.i.i(byteBuffer, w());
        }
        if ((getFlags() & 16) == 16) {
            com.coremedia.iso.i.i(byteBuffer, y());
        }
        if ((getFlags() & 32) == 32) {
            this.f10086w.a(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        int flags = getFlags();
        long j4 = (flags & 1) == 1 ? 16L : 8L;
        if ((flags & 2) == 2) {
            j4 += 4;
        }
        if ((flags & 8) == 8) {
            j4 += 4;
        }
        if ((flags & 16) == 16) {
            j4 += 4;
        }
        return (flags & 32) == 32 ? j4 + 4 : j4;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(V, this, this));
        return "TrackFragmentHeaderBox{trackId=" + this.f10081r + ", baseDataOffset=" + this.f10082s + ", sampleDescriptionIndex=" + this.f10083t + ", defaultSampleDuration=" + this.f10084u + ", defaultSampleSize=" + this.f10085v + ", defaultSampleFlags=" + this.f10086w + ", durationIsEmpty=" + this.f10087x + ", defaultBaseIsMoof=" + this.f10088y + '}';
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f10082s;
    }

    public long w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f10084u;
    }

    public g x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f10086w;
    }

    public long y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f10085v;
    }

    public long z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f10083t;
    }
}
