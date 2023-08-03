package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioManager;
import androidx.annotation.RequiresApi;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.UUID;

/* compiled from: C.java */
/* loaded from: classes2.dex */
public final class i {
    public static final int A = 268435456;
    public static final int A0 = 1;
    public static final int A1 = 3;
    public static final int A2 = 2;
    public static final int B = 536870912;
    public static final int B0 = 2;
    public static final int B1 = 4;
    public static final int B2 = 1;
    public static final int C = 805306368;
    public static final int C0 = 3;
    public static final int C1 = 10000;
    public static final int C2 = 2;
    public static final int D = 4;
    public static final int D0 = 4;
    public static final int D1 = 65536;
    public static final int D2 = 4;
    public static final int E = 9;
    public static final int E0 = 1;
    public static final String E1 = "cenc";
    public static final int E2 = 8;
    public static final int F = 10;
    public static final int F0 = 4;
    public static final String F1 = "cbc1";
    public static final int F2 = 16;
    public static final int G = 11;
    public static final int G0 = 268435456;
    public static final String G1 = "cens";
    public static final int G2 = 32;
    public static final int H = 12;
    public static final int H0 = 536870912;
    public static final String H1 = "cbcs";
    public static final int H2 = 64;
    public static final int I = 16;
    public static final int I0 = 1073741824;
    public static final int I2 = 128;
    public static final int J = 15;
    public static final int J0 = Integer.MIN_VALUE;
    public static final int J2 = 256;
    public static final int K = 1073741824;
    public static final int K0 = -1;
    public static final int K2 = 512;
    public static final int L = 5;
    public static final int L0 = 0;
    public static final int L2 = 1024;
    public static final int M = 6;
    public static final int M0 = 1;
    public static final int M2 = 2048;
    public static final int N = 18;
    public static final int N0 = 1;
    @Deprecated
    public static final int N1 = 1;
    public static final int N2 = 4096;
    public static final int O = 17;
    public static final int O0 = 2;
    @Deprecated
    public static final int O1 = 2;
    public static final int O2 = 8192;
    public static final int P = 7;
    public static final int P0 = 1;
    @Deprecated
    public static final int P1 = 3;
    public static final int P2 = 16384;
    public static final int Q = 8;
    public static final int Q0 = 1;
    @Deprecated
    public static final int Q1 = 4;
    public static final int Q2 = 4;
    public static final int R = 14;
    public static final int R0 = 2;
    @Deprecated
    public static final int R1 = 5;
    public static final int R2 = 3;
    public static final int S = 4;
    public static final int S0 = 4;
    @Deprecated
    public static final int S1 = 6;
    public static final int S2 = 2;
    public static final int T = 8;
    public static final String T0 = "und";
    @Deprecated
    public static final int T1 = 7;
    public static final int T2 = 1;
    public static final int U = 3;
    public static final int U0 = 0;
    @Deprecated
    public static final int U1 = 10000;
    public static final int U2 = 0;
    public static final int V = 5;
    public static final int V0 = 1;
    public static final int V1 = 0;
    public static final int W = 2;
    public static final int W0 = 2;
    public static final int W1 = 1;
    public static final int X = 1;
    public static final int X0 = 3;
    public static final int X1 = 2;
    public static final int Y = 0;
    public static final int Y0 = 4;
    public static final int Y1 = 3;
    public static final int Z = 3;
    public static final int Z0 = -1;
    public static final int Z1 = 1;

    /* renamed from: a  reason: collision with root package name */
    public static final long f23645a = Long.MIN_VALUE;

    /* renamed from: a0  reason: collision with root package name */
    public static final int f23646a0 = 3;

    /* renamed from: a1  reason: collision with root package name */
    public static final int f23647a1 = -2;

    /* renamed from: a2  reason: collision with root package name */
    public static final int f23648a2 = 2;

    /* renamed from: b  reason: collision with root package name */
    public static final long f23649b = -9223372036854775807L;

    /* renamed from: b0  reason: collision with root package name */
    public static final int f23650b0 = 2;

    /* renamed from: b1  reason: collision with root package name */
    public static final int f23651b1 = -3;

    /* renamed from: b2  reason: collision with root package name */
    public static final int f23652b2 = 6;

    /* renamed from: c  reason: collision with root package name */
    public static final int f23653c = -1;

    /* renamed from: c0  reason: collision with root package name */
    public static final int f23654c0 = 4;

    /* renamed from: c1  reason: collision with root package name */
    public static final int f23655c1 = -4;

    /* renamed from: c2  reason: collision with root package name */
    public static final int f23656c2 = 3;

    /* renamed from: d  reason: collision with root package name */
    public static final int f23657d = -1;

    /* renamed from: d0  reason: collision with root package name */
    public static final int f23658d0 = 1;

    /* renamed from: d1  reason: collision with root package name */
    public static final int f23659d1 = -5;

    /* renamed from: d2  reason: collision with root package name */
    public static final int f23660d2 = 6;

    /* renamed from: e  reason: collision with root package name */
    public static final float f23661e = -3.4028235E38f;

    /* renamed from: e0  reason: collision with root package name */
    public static final int f23662e0 = 0;

    /* renamed from: e1  reason: collision with root package name */
    public static final int f23663e1 = 0;

    /* renamed from: e2  reason: collision with root package name */
    public static final int f23664e2 = 7;

    /* renamed from: f  reason: collision with root package name */
    public static final int f23665f = -1;

    /* renamed from: f0  reason: collision with root package name */
    public static final int f23666f0 = 1;

    /* renamed from: f1  reason: collision with root package name */
    public static final int f23667f1 = 1;

    /* renamed from: f2  reason: collision with root package name */
    public static final int f23668f2 = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f23669g = -1;

    /* renamed from: g0  reason: collision with root package name */
    public static final int f23670g0 = 4;

    /* renamed from: g1  reason: collision with root package name */
    public static final int f23671g1 = 2;

    /* renamed from: g2  reason: collision with root package name */
    public static final int f23672g2 = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final long f23673h = 1000;

    /* renamed from: h0  reason: collision with root package name */
    public static final int f23674h0 = 11;

    /* renamed from: h1  reason: collision with root package name */
    public static final int f23675h1 = 3;

    /* renamed from: h2  reason: collision with root package name */
    public static final int f23676h2 = 0;

    /* renamed from: i  reason: collision with root package name */
    public static final long f23677i = 1000000;

    /* renamed from: i0  reason: collision with root package name */
    public static final int f23678i0 = 12;

    /* renamed from: i1  reason: collision with root package name */
    public static final int f23679i1 = 4;

    /* renamed from: i2  reason: collision with root package name */
    public static final int f23680i2 = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final long f23681j = 1000000000;

    /* renamed from: j0  reason: collision with root package name */
    public static final int f23682j0 = 13;

    /* renamed from: j1  reason: collision with root package name */
    public static final int f23683j1 = 5;

    /* renamed from: j2  reason: collision with root package name */
    public static final int f23684j2 = 2;

    /* renamed from: k  reason: collision with root package name */
    public static final int f23685k = 8;

    /* renamed from: k0  reason: collision with root package name */
    public static final int f23686k0 = 16;

    /* renamed from: k1  reason: collision with root package name */
    public static final int f23687k1 = 6;

    /* renamed from: k2  reason: collision with root package name */
    public static final int f23688k2 = 3;

    /* renamed from: l  reason: collision with root package name */
    public static final int f23689l = 4;

    /* renamed from: l0  reason: collision with root package name */
    public static final int f23690l0 = 14;

    /* renamed from: l1  reason: collision with root package name */
    public static final int f23691l1 = 7;

    /* renamed from: l2  reason: collision with root package name */
    public static final int f23692l2 = 0;
    @Deprecated

    /* renamed from: m  reason: collision with root package name */
    public static final String f23693m = "US-ASCII";

    /* renamed from: m0  reason: collision with root package name */
    public static final int f23694m0 = 1;

    /* renamed from: m1  reason: collision with root package name */
    public static final int f23695m1 = 10000;

    /* renamed from: m2  reason: collision with root package name */
    public static final int f23696m2 = -1000;
    @Deprecated

    /* renamed from: n  reason: collision with root package name */
    public static final String f23697n = "UTF-8";

    /* renamed from: n0  reason: collision with root package name */
    public static final int f23698n0 = 5;

    /* renamed from: n1  reason: collision with root package name */
    public static final int f23699n1 = -1;

    /* renamed from: n2  reason: collision with root package name */
    public static final int f23700n2 = 0;
    @Deprecated

    /* renamed from: o  reason: collision with root package name */
    public static final String f23701o = "ISO-8859-1";

    /* renamed from: o0  reason: collision with root package name */
    public static final int f23702o0 = 9;

    /* renamed from: o1  reason: collision with root package name */
    public static final int f23703o1 = 0;

    /* renamed from: o2  reason: collision with root package name */
    public static final int f23704o2 = 1;
    @Deprecated

    /* renamed from: p  reason: collision with root package name */
    public static final String f23705p = "UTF-16";

    /* renamed from: p0  reason: collision with root package name */
    public static final int f23706p0 = 8;

    /* renamed from: p1  reason: collision with root package name */
    public static final int f23707p1 = 1;

    /* renamed from: p2  reason: collision with root package name */
    public static final int f23708p2 = 2;
    @Deprecated

    /* renamed from: q  reason: collision with root package name */
    public static final String f23709q = "UTF-16LE";

    /* renamed from: q0  reason: collision with root package name */
    public static final int f23710q0 = 7;

    /* renamed from: q1  reason: collision with root package name */
    public static final int f23711q1 = 2;

    /* renamed from: q2  reason: collision with root package name */
    public static final int f23712q2 = 3;

    /* renamed from: r  reason: collision with root package name */
    public static final String f23713r = "serif";

    /* renamed from: r0  reason: collision with root package name */
    public static final int f23714r0 = 10;

    /* renamed from: r1  reason: collision with root package name */
    public static final int f23715r1 = 3;

    /* renamed from: r2  reason: collision with root package name */
    public static final int f23716r2 = 4;

    /* renamed from: s  reason: collision with root package name */
    public static final String f23717s = "sans-serif";

    /* renamed from: s0  reason: collision with root package name */
    public static final int f23718s0 = 6;

    /* renamed from: s1  reason: collision with root package name */
    public static final int f23719s1 = 4;

    /* renamed from: s2  reason: collision with root package name */
    public static final int f23720s2 = 5;

    /* renamed from: t  reason: collision with root package name */
    public static final int f23721t = 0;

    /* renamed from: t0  reason: collision with root package name */
    public static final int f23722t0 = 0;

    /* renamed from: t1  reason: collision with root package name */
    public static final int f23723t1 = 5;

    /* renamed from: t2  reason: collision with root package name */
    public static final int f23724t2 = 9;

    /* renamed from: u  reason: collision with root package name */
    public static final int f23725u = 1;

    /* renamed from: u0  reason: collision with root package name */
    public static final int f23726u0 = 2;

    /* renamed from: u1  reason: collision with root package name */
    public static final int f23727u1 = 6;

    /* renamed from: u2  reason: collision with root package name */
    public static final int f23728u2 = 10;

    /* renamed from: v  reason: collision with root package name */
    public static final int f23729v = 2;

    /* renamed from: v0  reason: collision with root package name */
    public static final int f23730v0 = 3;

    /* renamed from: v1  reason: collision with root package name */
    public static final int f23731v1 = 7;

    /* renamed from: v2  reason: collision with root package name */
    public static final int f23732v2 = 6;

    /* renamed from: w  reason: collision with root package name */
    public static final int f23733w = 0;

    /* renamed from: w0  reason: collision with root package name */
    public static final int f23734w0 = 1;

    /* renamed from: w1  reason: collision with root package name */
    public static final int f23735w1 = 10000;

    /* renamed from: w2  reason: collision with root package name */
    public static final int f23736w2 = 7;

    /* renamed from: x  reason: collision with root package name */
    public static final int f23737x = 0;

    /* renamed from: x0  reason: collision with root package name */
    public static final int f23738x0 = 3;

    /* renamed from: x1  reason: collision with root package name */
    public static final int f23739x1 = 0;

    /* renamed from: x2  reason: collision with root package name */
    public static final int f23740x2 = 8;

    /* renamed from: y  reason: collision with root package name */
    public static final int f23741y = 3;

    /* renamed from: y0  reason: collision with root package name */
    public static final int f23742y0 = 2;

    /* renamed from: y1  reason: collision with root package name */
    public static final int f23743y1 = 1;

    /* renamed from: y2  reason: collision with root package name */
    public static final int f23744y2 = 0;

    /* renamed from: z  reason: collision with root package name */
    public static final int f23745z = 2;

    /* renamed from: z0  reason: collision with root package name */
    public static final int f23746z0 = 0;

    /* renamed from: z1  reason: collision with root package name */
    public static final int f23747z1 = 2;

    /* renamed from: z2  reason: collision with root package name */
    public static final int f23748z2 = 1;
    public static final UUID I1 = new UUID(0, 0);
    public static final UUID J1 = new UUID(1186680826959645954L, -5988876978535335093L);
    public static final UUID K1 = new UUID(-2129748144642739255L, 8654423357094679310L);
    public static final UUID L1 = new UUID(-1301668207276963122L, -6645017420763422227L);
    public static final UUID M1 = new UUID(-7348484286925749626L, -6083546864340672619L);

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface c {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface d {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface e {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface f {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface g {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface h {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.exoplayer2.i$i  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public @interface InterfaceC0169i {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface j {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface k {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface l {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface m {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface n {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface o {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface p {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface q {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface r {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface s {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface t {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface u {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface v {
    }

    /* compiled from: C.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface w {
    }

    private i() {
    }

    @RequiresApi(21)
    public static int a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    public static String b(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 4) {
                            return "YES";
                        }
                        throw new IllegalStateException();
                    }
                    return "NO_EXCEEDS_CAPABILITIES";
                }
                return "NO_UNSUPPORTED_DRM";
            }
            return "NO_UNSUPPORTED_TYPE";
        }
        return "NO";
    }

    public static long c(long j4) {
        return (j4 == f23649b || j4 == Long.MIN_VALUE) ? j4 : j4 * 1000;
    }

    public static long d(long j4) {
        return (j4 == f23649b || j4 == Long.MIN_VALUE) ? j4 : j4 / 1000;
    }
}
