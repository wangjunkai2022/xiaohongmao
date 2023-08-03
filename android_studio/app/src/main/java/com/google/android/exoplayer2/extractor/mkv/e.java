package com.google.android.exoplayer2.extractor.mkv;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.x;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: MatroskaExtractor.java */
/* loaded from: classes2.dex */
public class e implements k {
    private static final String A0 = "A_AAC";
    private static final int A1 = 21930;
    private static final int A2 = 21968;
    private static final String B0 = "A_MPEG/L2";
    private static final int B1 = 2352003;
    private static final int B2 = 21969;
    private static final String C0 = "A_MPEG/L3";
    private static final int C1 = 21998;
    private static final int C2 = 21970;
    private static final String D0 = "A_AC3";
    private static final int D1 = 16868;
    private static final int D2 = 21971;
    private static final String E0 = "A_EAC3";
    private static final int E1 = 16871;
    private static final int E2 = 21972;
    private static final String F0 = "A_TRUEHD";
    private static final int F1 = 16877;
    private static final int F2 = 21973;
    private static final String G0 = "A_DTS";
    private static final int G1 = 21358;
    private static final int G2 = 21974;
    private static final String H0 = "A_DTS/EXPRESS";
    private static final int H1 = 134;
    private static final int H2 = 21975;
    private static final String I0 = "A_DTS/LOSSLESS";
    private static final int I1 = 25506;
    private static final int I2 = 21976;
    private static final String J0 = "A_FLAC";
    private static final int J1 = 22186;
    private static final int J2 = 21977;
    private static final String K0 = "A_MS/ACM";
    private static final int K1 = 22203;
    private static final int K2 = 21978;
    private static final String L0 = "A_PCM/INT/LIT";
    private static final int L1 = 224;
    private static final int L2 = 4;
    private static final String M0 = "A_PCM/INT/BIG";
    private static final int M1 = 176;
    private static final int M2 = 1685480259;
    private static final String N0 = "A_PCM/FLOAT/IEEE";
    private static final int N1 = 186;
    private static final int N2 = 1685485123;
    private static final String O0 = "S_TEXT/UTF8";
    private static final int O1 = 21680;
    private static final int O2 = 0;
    private static final String P0 = "S_TEXT/ASS";
    private static final int P1 = 21690;
    private static final int P2 = 1;
    private static final String Q0 = "S_VOBSUB";
    private static final int Q1 = 21682;
    private static final int Q2 = 2;
    private static final String R0 = "S_HDMV/PGS";
    private static final int R1 = 225;
    private static final int R2 = 3;
    private static final String S0 = "S_DVBSUB";
    private static final int S1 = 159;
    private static final int S2 = 1482049860;
    private static final int T0 = 8192;
    private static final int T1 = 25188;
    private static final int T2 = 859189832;
    private static final int U0 = 5760;
    private static final int U1 = 181;
    private static final int U2 = 826496599;
    private static final int V0 = 8;
    private static final int V1 = 28032;
    private static final int W0 = 2;
    private static final int W1 = 25152;
    private static final int W2 = 19;
    private static final int X0 = 440786851;
    private static final int X1 = 20529;
    private static final long X2 = 1000;
    private static final int Y0 = 17143;
    private static final int Y1 = 20530;
    private static final String Y2 = "%02d:%02d:%02d,%03d";
    private static final int Z0 = 17026;
    private static final int Z1 = 20532;

    /* renamed from: a1  reason: collision with root package name */
    private static final int f22358a1 = 17029;

    /* renamed from: a2  reason: collision with root package name */
    private static final int f22359a2 = 16980;

    /* renamed from: b1  reason: collision with root package name */
    private static final int f22361b1 = 408125543;

    /* renamed from: b2  reason: collision with root package name */
    private static final int f22362b2 = 16981;

    /* renamed from: b3  reason: collision with root package name */
    private static final int f22363b3 = 21;

    /* renamed from: c1  reason: collision with root package name */
    private static final int f22364c1 = 357149030;

    /* renamed from: c2  reason: collision with root package name */
    private static final int f22365c2 = 20533;

    /* renamed from: c3  reason: collision with root package name */
    private static final long f22366c3 = 10000;

    /* renamed from: d1  reason: collision with root package name */
    private static final int f22367d1 = 290298740;

    /* renamed from: d2  reason: collision with root package name */
    private static final int f22368d2 = 18401;

    /* renamed from: d3  reason: collision with root package name */
    private static final String f22369d3 = "%01d:%02d:%02d:%02d";

    /* renamed from: e1  reason: collision with root package name */
    private static final int f22371e1 = 19899;

    /* renamed from: e2  reason: collision with root package name */
    private static final int f22372e2 = 18402;

    /* renamed from: e3  reason: collision with root package name */
    private static final int f22373e3 = 18;

    /* renamed from: f0  reason: collision with root package name */
    public static final int f22374f0 = 1;

    /* renamed from: f1  reason: collision with root package name */
    private static final int f22375f1 = 21419;

    /* renamed from: f2  reason: collision with root package name */
    private static final int f22376f2 = 18407;

    /* renamed from: f3  reason: collision with root package name */
    private static final int f22377f3 = 65534;

    /* renamed from: g0  reason: collision with root package name */
    private static final String f22378g0 = "MatroskaExtractor";

    /* renamed from: g1  reason: collision with root package name */
    private static final int f22379g1 = 21420;

    /* renamed from: g2  reason: collision with root package name */
    private static final int f22380g2 = 18408;

    /* renamed from: g3  reason: collision with root package name */
    private static final int f22381g3 = 1;

    /* renamed from: h0  reason: collision with root package name */
    private static final int f22382h0 = -1;

    /* renamed from: h1  reason: collision with root package name */
    private static final int f22383h1 = 357149030;

    /* renamed from: h2  reason: collision with root package name */
    private static final int f22384h2 = 475249515;

    /* renamed from: i0  reason: collision with root package name */
    private static final int f22386i0 = 0;

    /* renamed from: i1  reason: collision with root package name */
    private static final int f22387i1 = 2807729;

    /* renamed from: i2  reason: collision with root package name */
    private static final int f22388i2 = 187;

    /* renamed from: i3  reason: collision with root package name */
    private static final Map<String, Integer> f22389i3;

    /* renamed from: j0  reason: collision with root package name */
    private static final int f22390j0 = 1;

    /* renamed from: j1  reason: collision with root package name */
    private static final int f22391j1 = 17545;

    /* renamed from: j2  reason: collision with root package name */
    private static final int f22392j2 = 179;

    /* renamed from: k0  reason: collision with root package name */
    private static final int f22393k0 = 2;

    /* renamed from: k1  reason: collision with root package name */
    private static final int f22394k1 = 524531317;

    /* renamed from: k2  reason: collision with root package name */
    private static final int f22395k2 = 183;

    /* renamed from: l0  reason: collision with root package name */
    private static final String f22396l0 = "matroska";

    /* renamed from: l1  reason: collision with root package name */
    private static final int f22397l1 = 231;

    /* renamed from: l2  reason: collision with root package name */
    private static final int f22398l2 = 241;

    /* renamed from: m0  reason: collision with root package name */
    private static final String f22399m0 = "webm";

    /* renamed from: m1  reason: collision with root package name */
    private static final int f22400m1 = 163;

    /* renamed from: m2  reason: collision with root package name */
    private static final int f22401m2 = 2274716;

    /* renamed from: n0  reason: collision with root package name */
    private static final String f22402n0 = "V_VP8";

    /* renamed from: n1  reason: collision with root package name */
    private static final int f22403n1 = 160;

    /* renamed from: n2  reason: collision with root package name */
    private static final int f22404n2 = 30320;

    /* renamed from: o0  reason: collision with root package name */
    private static final String f22405o0 = "V_VP9";

    /* renamed from: o1  reason: collision with root package name */
    private static final int f22406o1 = 161;

    /* renamed from: o2  reason: collision with root package name */
    private static final int f22407o2 = 30321;

    /* renamed from: p0  reason: collision with root package name */
    private static final String f22408p0 = "V_AV1";

    /* renamed from: p1  reason: collision with root package name */
    private static final int f22409p1 = 155;

    /* renamed from: p2  reason: collision with root package name */
    private static final int f22410p2 = 30322;

    /* renamed from: q0  reason: collision with root package name */
    private static final String f22411q0 = "V_MPEG2";

    /* renamed from: q1  reason: collision with root package name */
    private static final int f22412q1 = 30113;

    /* renamed from: q2  reason: collision with root package name */
    private static final int f22413q2 = 30323;

    /* renamed from: r0  reason: collision with root package name */
    private static final String f22414r0 = "V_MPEG4/ISO/SP";

    /* renamed from: r1  reason: collision with root package name */
    private static final int f22415r1 = 166;

    /* renamed from: r2  reason: collision with root package name */
    private static final int f22416r2 = 30324;

    /* renamed from: s0  reason: collision with root package name */
    private static final String f22417s0 = "V_MPEG4/ISO/ASP";

    /* renamed from: s1  reason: collision with root package name */
    private static final int f22418s1 = 238;

    /* renamed from: s2  reason: collision with root package name */
    private static final int f22419s2 = 30325;

    /* renamed from: t0  reason: collision with root package name */
    private static final String f22420t0 = "V_MPEG4/ISO/AP";

    /* renamed from: t1  reason: collision with root package name */
    private static final int f22421t1 = 165;

    /* renamed from: t2  reason: collision with root package name */
    private static final int f22422t2 = 21432;

    /* renamed from: u0  reason: collision with root package name */
    private static final String f22423u0 = "V_MPEG4/ISO/AVC";

    /* renamed from: u1  reason: collision with root package name */
    private static final int f22424u1 = 251;

    /* renamed from: u2  reason: collision with root package name */
    private static final int f22425u2 = 21936;

    /* renamed from: v0  reason: collision with root package name */
    private static final String f22426v0 = "V_MPEGH/ISO/HEVC";

    /* renamed from: v1  reason: collision with root package name */
    private static final int f22427v1 = 374648427;

    /* renamed from: v2  reason: collision with root package name */
    private static final int f22428v2 = 21945;

    /* renamed from: w0  reason: collision with root package name */
    private static final String f22429w0 = "V_MS/VFW/FOURCC";

    /* renamed from: w1  reason: collision with root package name */
    private static final int f22430w1 = 174;

    /* renamed from: w2  reason: collision with root package name */
    private static final int f22431w2 = 21946;

    /* renamed from: x0  reason: collision with root package name */
    private static final String f22432x0 = "V_THEORA";

    /* renamed from: x1  reason: collision with root package name */
    private static final int f22433x1 = 215;

    /* renamed from: x2  reason: collision with root package name */
    private static final int f22434x2 = 21947;

    /* renamed from: y0  reason: collision with root package name */
    private static final String f22435y0 = "A_VORBIS";

    /* renamed from: y1  reason: collision with root package name */
    private static final int f22436y1 = 131;

    /* renamed from: y2  reason: collision with root package name */
    private static final int f22437y2 = 21948;

    /* renamed from: z0  reason: collision with root package name */
    private static final String f22438z0 = "A_OPUS";

    /* renamed from: z1  reason: collision with root package name */
    private static final int f22439z1 = 136;

    /* renamed from: z2  reason: collision with root package name */
    private static final int f22440z2 = 21949;
    private long A;
    private boolean B;
    private long C;
    private long D;
    private long E;
    @Nullable
    private x F;
    @Nullable
    private x G;
    private boolean H;
    private boolean I;
    private int J;
    private long K;
    private long L;
    private int M;
    private int N;
    private int[] O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private boolean T;
    private int U;
    private int V;
    private int W;
    private boolean X;
    private boolean Y;
    private boolean Z;

    /* renamed from: a0  reason: collision with root package name */
    private int f22441a0;

    /* renamed from: b0  reason: collision with root package name */
    private byte f22442b0;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f22443c0;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.extractor.mkv.c f22444d;

    /* renamed from: d0  reason: collision with root package name */
    private m f22445d0;

    /* renamed from: e  reason: collision with root package name */
    private final g f22446e;

    /* renamed from: f  reason: collision with root package name */
    private final SparseArray<d> f22447f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f22448g;

    /* renamed from: h  reason: collision with root package name */
    private final h0 f22449h;

    /* renamed from: i  reason: collision with root package name */
    private final h0 f22450i;

    /* renamed from: j  reason: collision with root package name */
    private final h0 f22451j;

    /* renamed from: k  reason: collision with root package name */
    private final h0 f22452k;

    /* renamed from: l  reason: collision with root package name */
    private final h0 f22453l;

    /* renamed from: m  reason: collision with root package name */
    private final h0 f22454m;

    /* renamed from: n  reason: collision with root package name */
    private final h0 f22455n;

    /* renamed from: o  reason: collision with root package name */
    private final h0 f22456o;

    /* renamed from: p  reason: collision with root package name */
    private final h0 f22457p;

    /* renamed from: q  reason: collision with root package name */
    private final h0 f22458q;

    /* renamed from: r  reason: collision with root package name */
    private ByteBuffer f22459r;

    /* renamed from: s  reason: collision with root package name */
    private long f22460s;

    /* renamed from: t  reason: collision with root package name */
    private long f22461t;

    /* renamed from: u  reason: collision with root package name */
    private long f22462u;

    /* renamed from: v  reason: collision with root package name */
    private long f22463v;

    /* renamed from: w  reason: collision with root package name */
    private long f22464w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private d f22465x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f22466y;

    /* renamed from: z  reason: collision with root package name */
    private int f22467z;

    /* renamed from: e0  reason: collision with root package name */
    public static final q f22370e0 = com.google.android.exoplayer2.extractor.mkv.d.f22357b;
    private static final byte[] V2 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] Z2 = z0.u0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: a3  reason: collision with root package name */
    private static final byte[] f22360a3 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: h3  reason: collision with root package name */
    private static final UUID f22385h3 = new UUID(72057594037932032L, -9223371306706625679L);

    /* compiled from: MatroskaExtractor.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes2.dex */
    private final class c implements com.google.android.exoplayer2.extractor.mkv.b {
        private c() {
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void a(int i4) throws ParserException {
            e.this.o(i4);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void b(int i4, double d4) throws ParserException {
            e.this.r(i4, d4);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void c(int i4, long j4) throws ParserException {
            e.this.x(i4, j4);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public int d(int i4) {
            return e.this.u(i4);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public boolean e(int i4) {
            return e.this.z(i4);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void f(int i4, int i10, l lVar) throws IOException {
            e.this.l(i4, i10, lVar);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void g(int i4, String str) throws ParserException {
            e.this.H(i4, str);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.b
        public void h(int i4, long j4, long j10) throws ParserException {
            e.this.G(i4, j4, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes2.dex */
    public static final class d {
        private static final int Z = 0;

        /* renamed from: a0  reason: collision with root package name */
        private static final int f22469a0 = 50000;

        /* renamed from: b0  reason: collision with root package name */
        private static final int f22470b0 = 1000;

        /* renamed from: c0  reason: collision with root package name */
        private static final int f22471c0 = 200;
        public int A;
        public int B;
        public int C;
        public float D;
        public float E;
        public float F;
        public float G;
        public float H;
        public float I;
        public float J;
        public float K;
        public float L;
        public float M;
        public byte[] N;
        public int O;
        public int P;
        public int Q;
        public long R;
        public long S;
        public C0164e T;
        public boolean U;
        public boolean V;
        private String W;
        public e0 X;
        public int Y;

        /* renamed from: a  reason: collision with root package name */
        public String f22472a;

        /* renamed from: b  reason: collision with root package name */
        public String f22473b;

        /* renamed from: c  reason: collision with root package name */
        public int f22474c;

        /* renamed from: d  reason: collision with root package name */
        public int f22475d;

        /* renamed from: e  reason: collision with root package name */
        public int f22476e;

        /* renamed from: f  reason: collision with root package name */
        public int f22477f;

        /* renamed from: g  reason: collision with root package name */
        private int f22478g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f22479h;

        /* renamed from: i  reason: collision with root package name */
        public byte[] f22480i;

        /* renamed from: j  reason: collision with root package name */
        public e0.a f22481j;

        /* renamed from: k  reason: collision with root package name */
        public byte[] f22482k;

        /* renamed from: l  reason: collision with root package name */
        public DrmInitData f22483l;

        /* renamed from: m  reason: collision with root package name */
        public int f22484m;

        /* renamed from: n  reason: collision with root package name */
        public int f22485n;

        /* renamed from: o  reason: collision with root package name */
        public int f22486o;

        /* renamed from: p  reason: collision with root package name */
        public int f22487p;

        /* renamed from: q  reason: collision with root package name */
        public int f22488q;

        /* renamed from: r  reason: collision with root package name */
        public int f22489r;

        /* renamed from: s  reason: collision with root package name */
        public float f22490s;

        /* renamed from: t  reason: collision with root package name */
        public float f22491t;

        /* renamed from: u  reason: collision with root package name */
        public float f22492u;

        /* renamed from: v  reason: collision with root package name */
        public byte[] f22493v;

        /* renamed from: w  reason: collision with root package name */
        public int f22494w;

        /* renamed from: x  reason: collision with root package name */
        public boolean f22495x;

        /* renamed from: y  reason: collision with root package name */
        public int f22496y;

        /* renamed from: z  reason: collision with root package name */
        public int f22497z;

        private d() {
            this.f22484m = -1;
            this.f22485n = -1;
            this.f22486o = -1;
            this.f22487p = -1;
            this.f22488q = 0;
            this.f22489r = -1;
            this.f22490s = 0.0f;
            this.f22491t = 0.0f;
            this.f22492u = 0.0f;
            this.f22493v = null;
            this.f22494w = -1;
            this.f22495x = false;
            this.f22496y = -1;
            this.f22497z = -1;
            this.A = -1;
            this.B = 1000;
            this.C = 200;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = -1.0f;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = -1.0f;
            this.K = -1.0f;
            this.L = -1.0f;
            this.M = -1.0f;
            this.O = 1;
            this.P = -1;
            this.Q = 8000;
            this.R = 0L;
            this.S = 0L;
            this.V = true;
            this.W = "eng";
        }

        /* JADX INFO: Access modifiers changed from: private */
        @EnsuresNonNull({"output"})
        public void e() {
            com.google.android.exoplayer2.util.a.g(this.X);
        }

        @EnsuresNonNull({"codecPrivate"})
        private byte[] f(String str) throws ParserException {
            byte[] bArr = this.f22482k;
            if (bArr == null) {
                String valueOf = String.valueOf(str);
                throw new ParserException(valueOf.length() != 0 ? "Missing CodecPrivate for codec ".concat(valueOf) : new String("Missing CodecPrivate for codec "));
            }
            return bArr;
        }

        @Nullable
        private byte[] g() {
            if (this.D == -1.0f || this.E == -1.0f || this.F == -1.0f || this.G == -1.0f || this.H == -1.0f || this.I == -1.0f || this.J == -1.0f || this.K == -1.0f || this.L == -1.0f || this.M == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            order.put((byte) 0);
            order.putShort((short) ((this.D * 50000.0f) + 0.5f));
            order.putShort((short) ((this.E * 50000.0f) + 0.5f));
            order.putShort((short) ((this.F * 50000.0f) + 0.5f));
            order.putShort((short) ((this.G * 50000.0f) + 0.5f));
            order.putShort((short) ((this.H * 50000.0f) + 0.5f));
            order.putShort((short) ((this.I * 50000.0f) + 0.5f));
            order.putShort((short) ((this.J * 50000.0f) + 0.5f));
            order.putShort((short) ((this.K * 50000.0f) + 0.5f));
            order.putShort((short) (this.L + 0.5f));
            order.putShort((short) (this.M + 0.5f));
            order.putShort((short) this.B);
            order.putShort((short) this.C);
            return bArr;
        }

        private static Pair<String, List<byte[]>> j(h0 h0Var) throws ParserException {
            try {
                h0Var.T(16);
                long v9 = h0Var.v();
                if (v9 == 1482049860) {
                    return new Pair<>(a0.f27471u, null);
                }
                if (v9 == 859189832) {
                    return new Pair<>(a0.f27447i, null);
                }
                if (v9 == 826496599) {
                    byte[] d4 = h0Var.d();
                    for (int e4 = h0Var.e() + 20; e4 < d4.length - 4; e4++) {
                        if (d4[e4] == 0 && d4[e4 + 1] == 0 && d4[e4 + 2] == 1 && d4[e4 + 3] == 15) {
                            return new Pair<>(a0.f27469t, Collections.singletonList(Arrays.copyOfRange(d4, e4, d4.length)));
                        }
                    }
                    throw new ParserException("Failed to find FourCC VC1 initialization data");
                }
                w.n(e.f22378g0, "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>(a0.f27479y, null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing FourCC private data");
            }
        }

        private static boolean k(h0 h0Var) throws ParserException {
            try {
                int y9 = h0Var.y();
                if (y9 == 1) {
                    return true;
                }
                if (y9 == 65534) {
                    h0Var.S(24);
                    if (h0Var.z() == e.f22385h3.getMostSignificantBits()) {
                        if (h0Var.z() == e.f22385h3.getLeastSignificantBits()) {
                            return true;
                        }
                    }
                    return false;
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing MS/ACM codec private");
            }
        }

        private static List<byte[]> l(byte[] bArr) throws ParserException {
            try {
                if (bArr[0] == 2) {
                    int i4 = 1;
                    int i10 = 0;
                    while ((bArr[i4] & 255) == 255) {
                        i10 += 255;
                        i4++;
                    }
                    int i11 = i4 + 1;
                    int i12 = i10 + (bArr[i4] & 255);
                    int i13 = 0;
                    while ((bArr[i11] & 255) == 255) {
                        i13 += 255;
                        i11++;
                    }
                    int i14 = i11 + 1;
                    int i15 = i13 + (bArr[i11] & 255);
                    if (bArr[i14] == 1) {
                        byte[] bArr2 = new byte[i12];
                        System.arraycopy(bArr, i14, bArr2, 0, i12);
                        int i16 = i14 + i12;
                        if (bArr[i16] == 3) {
                            int i17 = i16 + i15;
                            if (bArr[i17] == 5) {
                                byte[] bArr3 = new byte[bArr.length - i17];
                                System.arraycopy(bArr, i17, bArr3, 0, bArr.length - i17);
                                ArrayList arrayList = new ArrayList(2);
                                arrayList.add(bArr2);
                                arrayList.add(bArr3);
                                return arrayList;
                            }
                            throw new ParserException("Error parsing vorbis codec private");
                        }
                        throw new ParserException("Error parsing vorbis codec private");
                    }
                    throw new ParserException("Error parsing vorbis codec private");
                }
                throw new ParserException("Error parsing vorbis codec private");
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing vorbis codec private");
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:200:0x0458  */
        /* JADX WARN: Removed duplicated region for block: B:205:0x0470  */
        /* JADX WARN: Removed duplicated region for block: B:206:0x0472  */
        /* JADX WARN: Removed duplicated region for block: B:209:0x047f  */
        /* JADX WARN: Removed duplicated region for block: B:210:0x0491  */
        /* JADX WARN: Removed duplicated region for block: B:274:0x059c  */
        @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"this.output"})
        @org.checkerframework.checker.nullness.qual.RequiresNonNull({"codecId"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void h(com.google.android.exoplayer2.extractor.m r21, int r22) throws com.google.android.exoplayer2.ParserException {
            /*
                Method dump skipped, instructions count: 1708
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.e.d.h(com.google.android.exoplayer2.extractor.m, int):void");
        }

        @RequiresNonNull({"output"})
        public void i() {
            C0164e c0164e = this.T;
            if (c0164e != null) {
                c0164e.a(this);
            }
        }

        public void m() {
            C0164e c0164e = this.T;
            if (c0164e != null) {
                c0164e.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MatroskaExtractor.java */
    /* renamed from: com.google.android.exoplayer2.extractor.mkv.e$e  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0164e {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f22498a = new byte[10];

        /* renamed from: b  reason: collision with root package name */
        private boolean f22499b;

        /* renamed from: c  reason: collision with root package name */
        private int f22500c;

        /* renamed from: d  reason: collision with root package name */
        private long f22501d;

        /* renamed from: e  reason: collision with root package name */
        private int f22502e;

        /* renamed from: f  reason: collision with root package name */
        private int f22503f;

        /* renamed from: g  reason: collision with root package name */
        private int f22504g;

        @RequiresNonNull({"#1.output"})
        public void a(d dVar) {
            if (this.f22500c > 0) {
                dVar.X.e(this.f22501d, this.f22502e, this.f22503f, this.f22504g, dVar.f22481j);
                this.f22500c = 0;
            }
        }

        public void b() {
            this.f22499b = false;
            this.f22500c = 0;
        }

        @RequiresNonNull({"#1.output"})
        public void c(d dVar, long j4, int i4, int i10, int i11) {
            if (this.f22499b) {
                int i12 = this.f22500c;
                int i13 = i12 + 1;
                this.f22500c = i13;
                if (i12 == 0) {
                    this.f22501d = j4;
                    this.f22502e = i4;
                    this.f22503f = 0;
                }
                this.f22503f += i10;
                this.f22504g = i11;
                if (i13 >= 16) {
                    a(dVar);
                }
            }
        }

        public void d(l lVar) throws IOException {
            if (this.f22499b) {
                return;
            }
            lVar.s(this.f22498a, 0, 10);
            lVar.h();
            if (com.google.android.exoplayer2.audio.b.i(this.f22498a) == 0) {
                return;
            }
            this.f22499b = true;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", Integer.valueOf((int) com.facebook.imagepipeline.common.e.f12205e));
        hashMap.put("htc_video_rotA-270", Integer.valueOf((int) com.facebook.imagepipeline.common.e.f12206f));
        f22389i3 = Collections.unmodifiableMap(hashMap);
    }

    public e() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] A() {
        return new k[]{new e()};
    }

    private boolean B(z zVar, long j4) {
        if (this.B) {
            this.D = j4;
            zVar.f23544a = this.C;
            this.B = false;
            return true;
        }
        if (this.f22466y) {
            long j10 = this.D;
            if (j10 != -1) {
                zVar.f23544a = j10;
                this.D = -1L;
                return true;
            }
        }
        return false;
    }

    private void C(l lVar, int i4) throws IOException {
        if (this.f22451j.f() >= i4) {
            return;
        }
        if (this.f22451j.b() < i4) {
            h0 h0Var = this.f22451j;
            h0Var.c(Math.max(h0Var.b() * 2, i4));
        }
        lVar.readFully(this.f22451j.d(), this.f22451j.f(), i4 - this.f22451j.f());
        this.f22451j.R(i4);
    }

    private void D() {
        this.U = 0;
        this.V = 0;
        this.W = 0;
        this.X = false;
        this.Y = false;
        this.Z = false;
        this.f22441a0 = 0;
        this.f22442b0 = (byte) 0;
        this.f22443c0 = false;
        this.f22454m.O(0);
    }

    private long E(long j4) throws ParserException {
        long j10 = this.f22462u;
        if (j10 != i.f23649b) {
            return z0.f1(j4, j10, 1000L);
        }
        throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
    }

    private static void F(String str, long j4, byte[] bArr) {
        byte[] s9;
        int i4;
        str.hashCode();
        if (str.equals(P0)) {
            s9 = s(j4, f22369d3, f22366c3);
            i4 = 21;
        } else if (str.equals(O0)) {
            s9 = s(j4, Y2, 1000L);
            i4 = 19;
        } else {
            throw new IllegalArgumentException();
        }
        System.arraycopy(s9, 0, bArr, i4, s9.length);
    }

    @RequiresNonNull({"#2.output"})
    private int I(l lVar, d dVar, int i4) throws IOException {
        int i10;
        if (O0.equals(dVar.f22473b)) {
            J(lVar, V2, i4);
            return q();
        } else if (P0.equals(dVar.f22473b)) {
            J(lVar, f22360a3, i4);
            return q();
        } else {
            e0 e0Var = dVar.X;
            if (!this.X) {
                if (dVar.f22479h) {
                    this.R &= -1073741825;
                    if (!this.Y) {
                        lVar.readFully(this.f22451j.d(), 0, 1);
                        this.U++;
                        if ((this.f22451j.d()[0] & 128) != 128) {
                            this.f22442b0 = this.f22451j.d()[0];
                            this.Y = true;
                        } else {
                            throw new ParserException("Extension bit is set in signal byte");
                        }
                    }
                    byte b10 = this.f22442b0;
                    if ((b10 & 1) == 1) {
                        boolean z9 = (b10 & 2) == 2;
                        this.R |= 1073741824;
                        if (!this.f22443c0) {
                            lVar.readFully(this.f22456o.d(), 0, 8);
                            this.U += 8;
                            this.f22443c0 = true;
                            this.f22451j.d()[0] = (byte) ((z9 ? 128 : 0) | 8);
                            this.f22451j.S(0);
                            e0Var.f(this.f22451j, 1, 1);
                            this.V++;
                            this.f22456o.S(0);
                            e0Var.f(this.f22456o, 8, 1);
                            this.V += 8;
                        }
                        if (z9) {
                            if (!this.Z) {
                                lVar.readFully(this.f22451j.d(), 0, 1);
                                this.U++;
                                this.f22451j.S(0);
                                this.f22441a0 = this.f22451j.G();
                                this.Z = true;
                            }
                            int i11 = this.f22441a0 * 4;
                            this.f22451j.O(i11);
                            lVar.readFully(this.f22451j.d(), 0, i11);
                            this.U += i11;
                            short s9 = (short) ((this.f22441a0 / 2) + 1);
                            int i12 = (s9 * 6) + 2;
                            ByteBuffer byteBuffer = this.f22459r;
                            if (byteBuffer == null || byteBuffer.capacity() < i12) {
                                this.f22459r = ByteBuffer.allocate(i12);
                            }
                            this.f22459r.position(0);
                            this.f22459r.putShort(s9);
                            int i13 = 0;
                            int i14 = 0;
                            while (true) {
                                i10 = this.f22441a0;
                                if (i13 >= i10) {
                                    break;
                                }
                                int K = this.f22451j.K();
                                if (i13 % 2 == 0) {
                                    this.f22459r.putShort((short) (K - i14));
                                } else {
                                    this.f22459r.putInt(K - i14);
                                }
                                i13++;
                                i14 = K;
                            }
                            int i15 = (i4 - this.U) - i14;
                            if (i10 % 2 == 1) {
                                this.f22459r.putInt(i15);
                            } else {
                                this.f22459r.putShort((short) i15);
                                this.f22459r.putInt(0);
                            }
                            this.f22457p.Q(this.f22459r.array(), i12);
                            e0Var.f(this.f22457p, i12, 1);
                            this.V += i12;
                        }
                    }
                } else {
                    byte[] bArr = dVar.f22480i;
                    if (bArr != null) {
                        this.f22454m.Q(bArr, bArr.length);
                    }
                }
                if (dVar.f22477f > 0) {
                    this.R |= 268435456;
                    this.f22458q.O(0);
                    this.f22451j.O(4);
                    this.f22451j.d()[0] = (byte) ((i4 >> 24) & 255);
                    this.f22451j.d()[1] = (byte) ((i4 >> 16) & 255);
                    this.f22451j.d()[2] = (byte) ((i4 >> 8) & 255);
                    this.f22451j.d()[3] = (byte) (i4 & 255);
                    e0Var.f(this.f22451j, 4, 2);
                    this.V += 4;
                }
                this.X = true;
            }
            int f10 = i4 + this.f22454m.f();
            if (!f22423u0.equals(dVar.f22473b) && !f22426v0.equals(dVar.f22473b)) {
                if (dVar.T != null) {
                    com.google.android.exoplayer2.util.a.i(this.f22454m.f() == 0);
                    dVar.T.d(lVar);
                }
                while (true) {
                    int i16 = this.U;
                    if (i16 >= f10) {
                        break;
                    }
                    int K3 = K(lVar, e0Var, f10 - i16);
                    this.U += K3;
                    this.V += K3;
                }
            } else {
                byte[] d4 = this.f22450i.d();
                d4[0] = 0;
                d4[1] = 0;
                d4[2] = 0;
                int i17 = dVar.Y;
                int i18 = 4 - i17;
                while (this.U < f10) {
                    int i19 = this.W;
                    if (i19 == 0) {
                        L(lVar, d4, i18, i17);
                        this.U += i17;
                        this.f22450i.S(0);
                        this.W = this.f22450i.K();
                        this.f22449h.S(0);
                        e0Var.c(this.f22449h, 4);
                        this.V += 4;
                    } else {
                        int K4 = K(lVar, e0Var, i19);
                        this.U += K4;
                        this.V += K4;
                        this.W -= K4;
                    }
                }
            }
            if (f22435y0.equals(dVar.f22473b)) {
                this.f22452k.S(0);
                e0Var.c(this.f22452k, 4);
                this.V += 4;
            }
            return q();
        }
    }

    private void J(l lVar, byte[] bArr, int i4) throws IOException {
        int length = bArr.length + i4;
        if (this.f22455n.b() < length) {
            this.f22455n.P(Arrays.copyOf(bArr, length + i4));
        } else {
            System.arraycopy(bArr, 0, this.f22455n.d(), 0, bArr.length);
        }
        lVar.readFully(this.f22455n.d(), bArr.length, i4);
        this.f22455n.S(0);
        this.f22455n.R(length);
    }

    private int K(l lVar, e0 e0Var, int i4) throws IOException {
        int a10 = this.f22454m.a();
        if (a10 > 0) {
            int min = Math.min(i4, a10);
            e0Var.c(this.f22454m, min);
            return min;
        }
        return e0Var.b(lVar, i4, false);
    }

    private void L(l lVar, byte[] bArr, int i4, int i10) throws IOException {
        int min = Math.min(i10, this.f22454m.a());
        lVar.readFully(bArr, i4 + min, i10 - min);
        if (min > 0) {
            this.f22454m.k(bArr, i4, min);
        }
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    private void i(int i4) throws ParserException {
        if (this.F == null || this.G == null) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Element ");
            sb.append(i4);
            sb.append(" must be in a Cues");
            throw new ParserException(sb.toString());
        }
    }

    @EnsuresNonNull({"currentTrack"})
    private void j(int i4) throws ParserException {
        if (this.f22465x != null) {
            return;
        }
        StringBuilder sb = new StringBuilder(43);
        sb.append("Element ");
        sb.append(i4);
        sb.append(" must be in a TrackEntry");
        throw new ParserException(sb.toString());
    }

    @EnsuresNonNull({"extractorOutput"})
    private void k() {
        com.google.android.exoplayer2.util.a.k(this.f22445d0);
    }

    private b0 m(@Nullable x xVar, @Nullable x xVar2) {
        int i4;
        if (this.f22461t != -1 && this.f22464w != i.f23649b && xVar != null && xVar.c() != 0 && xVar2 != null && xVar2.c() == xVar.c()) {
            int c10 = xVar.c();
            int[] iArr = new int[c10];
            long[] jArr = new long[c10];
            long[] jArr2 = new long[c10];
            long[] jArr3 = new long[c10];
            int i10 = 0;
            for (int i11 = 0; i11 < c10; i11++) {
                jArr3[i11] = xVar.b(i11);
                jArr[i11] = this.f22461t + xVar2.b(i11);
            }
            while (true) {
                i4 = c10 - 1;
                if (i10 >= i4) {
                    break;
                }
                int i12 = i10 + 1;
                iArr[i10] = (int) (jArr[i12] - jArr[i10]);
                jArr2[i10] = jArr3[i12] - jArr3[i10];
                i10 = i12;
            }
            iArr[i4] = (int) ((this.f22461t + this.f22460s) - jArr[i4]);
            jArr2[i4] = this.f22464w - jArr3[i4];
            long j4 = jArr2[i4];
            if (j4 <= 0) {
                StringBuilder sb = new StringBuilder(72);
                sb.append("Discarding last cue point with unexpected duration: ");
                sb.append(j4);
                w.n(f22378g0, sb.toString());
                iArr = Arrays.copyOf(iArr, i4);
                jArr = Arrays.copyOf(jArr, i4);
                jArr2 = Arrays.copyOf(jArr2, i4);
                jArr3 = Arrays.copyOf(jArr3, i4);
            }
            return new com.google.android.exoplayer2.extractor.e(iArr, jArr, jArr2, jArr3);
        }
        return new b0.b(this.f22464w);
    }

    @RequiresNonNull({"#1.output"})
    private void n(d dVar, long j4, int i4, int i10, int i11) {
        C0164e c0164e = dVar.T;
        if (c0164e != null) {
            c0164e.c(dVar, j4, i4, i10, i11);
        } else {
            if (O0.equals(dVar.f22473b) || P0.equals(dVar.f22473b)) {
                if (this.N > 1) {
                    w.n(f22378g0, "Skipping subtitle sample in laced block.");
                } else {
                    long j10 = this.L;
                    if (j10 == i.f23649b) {
                        w.n(f22378g0, "Skipping subtitle sample with no duration.");
                    } else {
                        F(dVar.f22473b, j10, this.f22455n.d());
                        int e4 = this.f22455n.e();
                        while (true) {
                            if (e4 >= this.f22455n.f()) {
                                break;
                            } else if (this.f22455n.d()[e4] == 0) {
                                this.f22455n.R(e4);
                                break;
                            } else {
                                e4++;
                            }
                        }
                        e0 e0Var = dVar.X;
                        h0 h0Var = this.f22455n;
                        e0Var.c(h0Var, h0Var.f());
                        i10 += this.f22455n.f();
                    }
                }
            }
            if ((268435456 & i4) != 0) {
                if (this.N > 1) {
                    i4 &= -268435457;
                } else {
                    int f10 = this.f22458q.f();
                    dVar.X.f(this.f22458q, f10, 2);
                    i10 += f10;
                }
            }
            dVar.X.e(j4, i4, i10, i11, dVar.f22481j);
        }
        this.I = true;
    }

    private static int[] p(@Nullable int[] iArr, int i4) {
        if (iArr == null) {
            return new int[i4];
        }
        return iArr.length >= i4 ? iArr : new int[Math.max(iArr.length * 2, i4)];
    }

    private int q() {
        int i4 = this.V;
        D();
        return i4;
    }

    private static byte[] s(long j4, String str, long j10) {
        com.google.android.exoplayer2.util.a.a(j4 != i.f23649b);
        int i4 = (int) (j4 / 3600000000L);
        long j11 = j4 - ((i4 * 3600) * 1000000);
        int i10 = (int) (j11 / 60000000);
        long j12 = j11 - ((i10 * 60) * 1000000);
        int i11 = (int) (j12 / 1000000);
        return z0.u0(String.format(Locale.US, str, Integer.valueOf(i4), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf((int) ((j12 - (i11 * 1000000)) / j10))));
    }

    private d t(int i4) throws ParserException {
        j(i4);
        return this.f22465x;
    }

    private static boolean y(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals(f22420t0)) {
                    c10 = 0;
                    break;
                }
                break;
            case -2095575984:
                if (str.equals(f22414r0)) {
                    c10 = 1;
                    break;
                }
                break;
            case -1985379776:
                if (str.equals(K0)) {
                    c10 = 2;
                    break;
                }
                break;
            case -1784763192:
                if (str.equals(F0)) {
                    c10 = 3;
                    break;
                }
                break;
            case -1730367663:
                if (str.equals(f22435y0)) {
                    c10 = 4;
                    break;
                }
                break;
            case -1482641358:
                if (str.equals(B0)) {
                    c10 = 5;
                    break;
                }
                break;
            case -1482641357:
                if (str.equals(C0)) {
                    c10 = 6;
                    break;
                }
                break;
            case -1373388978:
                if (str.equals(f22429w0)) {
                    c10 = 7;
                    break;
                }
                break;
            case -933872740:
                if (str.equals(S0)) {
                    c10 = '\b';
                    break;
                }
                break;
            case -538363189:
                if (str.equals(f22417s0)) {
                    c10 = '\t';
                    break;
                }
                break;
            case -538363109:
                if (str.equals(f22423u0)) {
                    c10 = '\n';
                    break;
                }
                break;
            case -425012669:
                if (str.equals(Q0)) {
                    c10 = 11;
                    break;
                }
                break;
            case -356037306:
                if (str.equals(I0)) {
                    c10 = '\f';
                    break;
                }
                break;
            case 62923557:
                if (str.equals(A0)) {
                    c10 = '\r';
                    break;
                }
                break;
            case 62923603:
                if (str.equals(D0)) {
                    c10 = 14;
                    break;
                }
                break;
            case 62927045:
                if (str.equals(G0)) {
                    c10 = 15;
                    break;
                }
                break;
            case 82318131:
                if (str.equals(f22408p0)) {
                    c10 = 16;
                    break;
                }
                break;
            case 82338133:
                if (str.equals(f22402n0)) {
                    c10 = 17;
                    break;
                }
                break;
            case 82338134:
                if (str.equals(f22405o0)) {
                    c10 = 18;
                    break;
                }
                break;
            case 99146302:
                if (str.equals(R0)) {
                    c10 = 19;
                    break;
                }
                break;
            case 444813526:
                if (str.equals(f22432x0)) {
                    c10 = 20;
                    break;
                }
                break;
            case 542569478:
                if (str.equals(H0)) {
                    c10 = 21;
                    break;
                }
                break;
            case 635596514:
                if (str.equals(N0)) {
                    c10 = 22;
                    break;
                }
                break;
            case 725948237:
                if (str.equals(M0)) {
                    c10 = 23;
                    break;
                }
                break;
            case 725957860:
                if (str.equals(L0)) {
                    c10 = 24;
                    break;
                }
                break;
            case 738597099:
                if (str.equals(P0)) {
                    c10 = 25;
                    break;
                }
                break;
            case 855502857:
                if (str.equals(f22426v0)) {
                    c10 = 26;
                    break;
                }
                break;
            case 1422270023:
                if (str.equals(O0)) {
                    c10 = 27;
                    break;
                }
                break;
            case 1809237540:
                if (str.equals(f22411q0)) {
                    c10 = 28;
                    break;
                }
                break;
            case 1950749482:
                if (str.equals(E0)) {
                    c10 = 29;
                    break;
                }
                break;
            case 1950789798:
                if (str.equals(J0)) {
                    c10 = 30;
                    break;
                }
                break;
            case 1951062397:
                if (str.equals(f22438z0)) {
                    c10 = 31;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
                return true;
            default:
                return false;
        }
    }

    @CallSuper
    protected void G(int i4, long j4, long j10) throws ParserException {
        k();
        if (i4 == 160) {
            this.T = false;
        } else if (i4 == f22430w1) {
            this.f22465x = new d();
        } else if (i4 == f22388i2) {
            this.H = false;
        } else if (i4 == f22371e1) {
            this.f22467z = -1;
            this.A = -1L;
        } else if (i4 == f22365c2) {
            t(i4).f22479h = true;
        } else if (i4 == A2) {
            t(i4).f22495x = true;
        } else if (i4 == f22361b1) {
            long j11 = this.f22461t;
            if (j11 != -1 && j11 != j4) {
                throw new ParserException("Multiple Segment elements not supported");
            }
            this.f22461t = j4;
            this.f22460s = j10;
        } else if (i4 != f22384h2) {
            if (i4 == f22394k1 && !this.f22466y) {
                if (this.f22448g && this.C != -1) {
                    this.B = true;
                    return;
                }
                this.f22445d0.q(new b0.b(this.f22464w));
                this.f22466y = true;
            }
        } else {
            this.F = new x();
            this.G = new x();
        }
    }

    @CallSuper
    protected void H(int i4, String str) throws ParserException {
        if (i4 == 134) {
            t(i4).f22473b = str;
        } else if (i4 != Z0) {
            if (i4 == G1) {
                t(i4).f22472a = str;
            } else if (i4 != f22401m2) {
            } else {
                t(i4).W = str;
            }
        } else if (f22399m0.equals(str) || f22396l0.equals(str)) {
        } else {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new ParserException(sb.toString());
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    @CallSuper
    public void a(long j4, long j10) {
        this.E = i.f23649b;
        this.J = 0;
        this.f22444d.reset();
        this.f22446e.e();
        D();
        for (int i4 = 0; i4 < this.f22447f.size(); i4++) {
            this.f22447f.valueAt(i4).m();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public final boolean b(l lVar) throws IOException {
        return new f().b(lVar);
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public final int c(l lVar, z zVar) throws IOException {
        this.I = false;
        boolean z9 = true;
        while (z9 && !this.I) {
            z9 = this.f22444d.a(lVar);
            if (z9 && B(zVar, lVar.getPosition())) {
                return 1;
            }
        }
        if (z9) {
            return 0;
        }
        for (int i4 = 0; i4 < this.f22447f.size(); i4++) {
            d valueAt = this.f22447f.valueAt(i4);
            valueAt.e();
            valueAt.i();
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public final void d(m mVar) {
        this.f22445d0 = mVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0231, code lost:
        throw new com.google.android.exoplayer2.ParserException("EBML lacing sample size out of range.");
     */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void l(int r22, int r23, com.google.android.exoplayer2.extractor.l r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 739
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.e.l(int, int, com.google.android.exoplayer2.extractor.l):void");
    }

    @CallSuper
    protected void o(int i4) throws ParserException {
        k();
        if (i4 == 160) {
            if (this.J != 2) {
                return;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.N; i11++) {
                i10 += this.O[i11];
            }
            d dVar = this.f22447f.get(this.P);
            dVar.e();
            for (int i12 = 0; i12 < this.N; i12++) {
                long j4 = ((dVar.f22476e * i12) / 1000) + this.K;
                int i13 = this.R;
                if (i12 == 0 && !this.T) {
                    i13 |= 1;
                }
                int i14 = this.O[i12];
                i10 -= i14;
                n(dVar, j4, i13, i14, i10);
            }
            this.J = 0;
        } else if (i4 == f22430w1) {
            d dVar2 = (d) com.google.android.exoplayer2.util.a.k(this.f22465x);
            String str = dVar2.f22473b;
            if (str != null) {
                if (y(str)) {
                    dVar2.h(this.f22445d0, dVar2.f22474c);
                    this.f22447f.put(dVar2.f22474c, dVar2);
                }
                this.f22465x = null;
                return;
            }
            throw new ParserException("CodecId is missing in TrackEntry element");
        } else if (i4 == f22371e1) {
            int i15 = this.f22467z;
            if (i15 != -1) {
                long j10 = this.A;
                if (j10 != -1) {
                    if (i15 == f22384h2) {
                        this.C = j10;
                        return;
                    }
                    return;
                }
            }
            throw new ParserException("Mandatory element SeekID or SeekPosition not found");
        } else if (i4 == W1) {
            j(i4);
            d dVar3 = this.f22465x;
            if (dVar3.f22479h) {
                if (dVar3.f22481j != null) {
                    dVar3.f22483l = new DrmInitData(new DrmInitData.SchemeData(i.I1, a0.f27445h, this.f22465x.f22481j.f22143b));
                    return;
                }
                throw new ParserException("Encrypted Track found but ContentEncKeyID was not found");
            }
        } else if (i4 == V1) {
            j(i4);
            d dVar4 = this.f22465x;
            if (dVar4.f22479h && dVar4.f22480i != null) {
                throw new ParserException("Combining encryption and compression is not supported");
            }
        } else if (i4 == 357149030) {
            if (this.f22462u == i.f23649b) {
                this.f22462u = 1000000L;
            }
            long j11 = this.f22463v;
            if (j11 != i.f23649b) {
                this.f22464w = E(j11);
            }
        } else if (i4 == f22427v1) {
            if (this.f22447f.size() != 0) {
                this.f22445d0.t();
                return;
            }
            throw new ParserException("No valid tracks were found");
        } else if (i4 == f22384h2) {
            if (!this.f22466y) {
                this.f22445d0.q(m(this.F, this.G));
                this.f22466y = true;
            }
            this.F = null;
            this.G = null;
        }
    }

    @CallSuper
    protected void r(int i4, double d4) throws ParserException {
        if (i4 == U1) {
            t(i4).Q = (int) d4;
        } else if (i4 != f22391j1) {
            switch (i4) {
                case B2 /* 21969 */:
                    t(i4).D = (float) d4;
                    return;
                case C2 /* 21970 */:
                    t(i4).E = (float) d4;
                    return;
                case D2 /* 21971 */:
                    t(i4).F = (float) d4;
                    return;
                case E2 /* 21972 */:
                    t(i4).G = (float) d4;
                    return;
                case F2 /* 21973 */:
                    t(i4).H = (float) d4;
                    return;
                case G2 /* 21974 */:
                    t(i4).I = (float) d4;
                    return;
                case H2 /* 21975 */:
                    t(i4).J = (float) d4;
                    return;
                case I2 /* 21976 */:
                    t(i4).K = (float) d4;
                    return;
                case J2 /* 21977 */:
                    t(i4).L = (float) d4;
                    return;
                case K2 /* 21978 */:
                    t(i4).M = (float) d4;
                    return;
                default:
                    switch (i4) {
                        case f22413q2 /* 30323 */:
                            t(i4).f22490s = (float) d4;
                            return;
                        case f22416r2 /* 30324 */:
                            t(i4).f22491t = (float) d4;
                            return;
                        case f22419s2 /* 30325 */:
                            t(i4).f22492u = (float) d4;
                            return;
                        default:
                            return;
                    }
            }
        } else {
            this.f22463v = (long) d4;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public final void release() {
    }

    @CallSuper
    protected int u(int i4) {
        switch (i4) {
            case f22436y1 /* 131 */:
            case f22439z1 /* 136 */:
            case f22409p1 /* 155 */:
            case S1 /* 159 */:
            case M1 /* 176 */:
            case f22392j2 /* 179 */:
            case N1 /* 186 */:
            case 215:
            case f22397l1 /* 231 */:
            case f22418s1 /* 238 */:
            case f22398l2 /* 241 */:
            case f22424u1 /* 251 */:
            case E1 /* 16871 */:
            case f22359a2 /* 16980 */:
            case f22358a1 /* 17029 */:
            case Y0 /* 17143 */:
            case f22368d2 /* 18401 */:
            case f22380g2 /* 18408 */:
            case X1 /* 20529 */:
            case Y1 /* 20530 */:
            case f22379g1 /* 21420 */:
            case f22422t2 /* 21432 */:
            case O1 /* 21680 */:
            case Q1 /* 21682 */:
            case P1 /* 21690 */:
            case A1 /* 21930 */:
            case f22428v2 /* 21945 */:
            case f22431w2 /* 21946 */:
            case f22434x2 /* 21947 */:
            case f22437y2 /* 21948 */:
            case f22440z2 /* 21949 */:
            case C1 /* 21998 */:
            case J1 /* 22186 */:
            case K1 /* 22203 */:
            case T1 /* 25188 */:
            case f22407o2 /* 30321 */:
            case B1 /* 2352003 */:
            case f22387i1 /* 2807729 */:
                return 2;
            case 134:
            case Z0 /* 17026 */:
            case G1 /* 21358 */:
            case f22401m2 /* 2274716 */:
                return 3;
            case 160:
            case f22415r1 /* 166 */:
            case f22430w1 /* 174 */:
            case f22395k2 /* 183 */:
            case f22388i2 /* 187 */:
            case 224:
            case 225:
            case D1 /* 16868 */:
            case f22376f2 /* 18407 */:
            case f22371e1 /* 19899 */:
            case Z1 /* 20532 */:
            case f22365c2 /* 20533 */:
            case f22425u2 /* 21936 */:
            case A2 /* 21968 */:
            case W1 /* 25152 */:
            case V1 /* 28032 */:
            case f22412q1 /* 30113 */:
            case f22404n2 /* 30320 */:
            case f22367d1 /* 290298740 */:
            case 357149030:
            case f22427v1 /* 374648427 */:
            case f22361b1 /* 408125543 */:
            case X0 /* 440786851 */:
            case f22384h2 /* 475249515 */:
            case f22394k1 /* 524531317 */:
                return 1;
            case f22406o1 /* 161 */:
            case f22400m1 /* 163 */:
            case f22421t1 /* 165 */:
            case F1 /* 16877 */:
            case f22362b2 /* 16981 */:
            case f22372e2 /* 18402 */:
            case f22375f1 /* 21419 */:
            case I1 /* 25506 */:
            case f22410p2 /* 30322 */:
                return 4;
            case U1 /* 181 */:
            case f22391j1 /* 17545 */:
            case B2 /* 21969 */:
            case C2 /* 21970 */:
            case D2 /* 21971 */:
            case E2 /* 21972 */:
            case F2 /* 21973 */:
            case G2 /* 21974 */:
            case H2 /* 21975 */:
            case I2 /* 21976 */:
            case J2 /* 21977 */:
            case K2 /* 21978 */:
            case f22413q2 /* 30323 */:
            case f22416r2 /* 30324 */:
            case f22419s2 /* 30325 */:
                return 5;
            default:
                return 0;
        }
    }

    protected void v(d dVar, l lVar, int i4) throws IOException {
        if (dVar.f22478g != 1685485123 && dVar.f22478g != 1685480259) {
            lVar.o(i4);
            return;
        }
        byte[] bArr = new byte[i4];
        dVar.N = bArr;
        lVar.readFully(bArr, 0, i4);
    }

    protected void w(d dVar, int i4, l lVar, int i10) throws IOException {
        if (i4 == 4 && f22405o0.equals(dVar.f22473b)) {
            this.f22458q.O(i10);
            lVar.readFully(this.f22458q.d(), 0, i10);
            return;
        }
        lVar.o(i10);
    }

    @CallSuper
    protected void x(int i4, long j4) throws ParserException {
        if (i4 == X1) {
            if (j4 == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j4);
            sb.append(" not supported");
            throw new ParserException(sb.toString());
        } else if (i4 == Y1) {
            if (j4 == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j4);
            sb2.append(" not supported");
            throw new ParserException(sb2.toString());
        } else {
            switch (i4) {
                case f22436y1 /* 131 */:
                    t(i4).f22475d = (int) j4;
                    return;
                case f22439z1 /* 136 */:
                    t(i4).V = j4 == 1;
                    return;
                case f22409p1 /* 155 */:
                    this.L = E(j4);
                    return;
                case S1 /* 159 */:
                    t(i4).O = (int) j4;
                    return;
                case M1 /* 176 */:
                    t(i4).f22484m = (int) j4;
                    return;
                case f22392j2 /* 179 */:
                    i(i4);
                    this.F.a(E(j4));
                    return;
                case N1 /* 186 */:
                    t(i4).f22485n = (int) j4;
                    return;
                case 215:
                    t(i4).f22474c = (int) j4;
                    return;
                case f22397l1 /* 231 */:
                    this.E = E(j4);
                    return;
                case f22418s1 /* 238 */:
                    this.S = (int) j4;
                    return;
                case f22398l2 /* 241 */:
                    if (this.H) {
                        return;
                    }
                    i(i4);
                    this.G.a(j4);
                    this.H = true;
                    return;
                case f22424u1 /* 251 */:
                    this.T = true;
                    return;
                case E1 /* 16871 */:
                    t(i4).f22478g = (int) j4;
                    return;
                case f22359a2 /* 16980 */:
                    if (j4 == 3) {
                        return;
                    }
                    StringBuilder sb3 = new StringBuilder(50);
                    sb3.append("ContentCompAlgo ");
                    sb3.append(j4);
                    sb3.append(" not supported");
                    throw new ParserException(sb3.toString());
                case f22358a1 /* 17029 */:
                    if (j4 < 1 || j4 > 2) {
                        StringBuilder sb4 = new StringBuilder(53);
                        sb4.append("DocTypeReadVersion ");
                        sb4.append(j4);
                        sb4.append(" not supported");
                        throw new ParserException(sb4.toString());
                    }
                    return;
                case Y0 /* 17143 */:
                    if (j4 == 1) {
                        return;
                    }
                    StringBuilder sb5 = new StringBuilder(50);
                    sb5.append("EBMLReadVersion ");
                    sb5.append(j4);
                    sb5.append(" not supported");
                    throw new ParserException(sb5.toString());
                case f22368d2 /* 18401 */:
                    if (j4 == 5) {
                        return;
                    }
                    StringBuilder sb6 = new StringBuilder(49);
                    sb6.append("ContentEncAlgo ");
                    sb6.append(j4);
                    sb6.append(" not supported");
                    throw new ParserException(sb6.toString());
                case f22380g2 /* 18408 */:
                    if (j4 == 1) {
                        return;
                    }
                    StringBuilder sb7 = new StringBuilder(56);
                    sb7.append("AESSettingsCipherMode ");
                    sb7.append(j4);
                    sb7.append(" not supported");
                    throw new ParserException(sb7.toString());
                case f22379g1 /* 21420 */:
                    this.A = j4 + this.f22461t;
                    return;
                case f22422t2 /* 21432 */:
                    int i10 = (int) j4;
                    j(i4);
                    if (i10 == 0) {
                        this.f22465x.f22494w = 0;
                        return;
                    } else if (i10 == 1) {
                        this.f22465x.f22494w = 2;
                        return;
                    } else if (i10 == 3) {
                        this.f22465x.f22494w = 1;
                        return;
                    } else if (i10 != 15) {
                        return;
                    } else {
                        this.f22465x.f22494w = 3;
                        return;
                    }
                case O1 /* 21680 */:
                    t(i4).f22486o = (int) j4;
                    return;
                case Q1 /* 21682 */:
                    t(i4).f22488q = (int) j4;
                    return;
                case P1 /* 21690 */:
                    t(i4).f22487p = (int) j4;
                    return;
                case A1 /* 21930 */:
                    t(i4).U = j4 == 1;
                    return;
                case C1 /* 21998 */:
                    t(i4).f22477f = (int) j4;
                    return;
                case J1 /* 22186 */:
                    t(i4).R = j4;
                    return;
                case K1 /* 22203 */:
                    t(i4).S = j4;
                    return;
                case T1 /* 25188 */:
                    t(i4).P = (int) j4;
                    return;
                case f22407o2 /* 30321 */:
                    j(i4);
                    int i11 = (int) j4;
                    if (i11 == 0) {
                        this.f22465x.f22489r = 0;
                        return;
                    } else if (i11 == 1) {
                        this.f22465x.f22489r = 1;
                        return;
                    } else if (i11 == 2) {
                        this.f22465x.f22489r = 2;
                        return;
                    } else if (i11 != 3) {
                        return;
                    } else {
                        this.f22465x.f22489r = 3;
                        return;
                    }
                case B1 /* 2352003 */:
                    t(i4).f22476e = (int) j4;
                    return;
                case f22387i1 /* 2807729 */:
                    this.f22462u = j4;
                    return;
                default:
                    switch (i4) {
                        case f22428v2 /* 21945 */:
                            j(i4);
                            int i12 = (int) j4;
                            if (i12 == 1) {
                                this.f22465x.A = 2;
                                return;
                            } else if (i12 != 2) {
                                return;
                            } else {
                                this.f22465x.A = 1;
                                return;
                            }
                        case f22431w2 /* 21946 */:
                            j(i4);
                            int i13 = (int) j4;
                            if (i13 != 1) {
                                if (i13 == 16) {
                                    this.f22465x.f22497z = 6;
                                    return;
                                } else if (i13 == 18) {
                                    this.f22465x.f22497z = 7;
                                    return;
                                } else if (i13 != 6 && i13 != 7) {
                                    return;
                                }
                            }
                            this.f22465x.f22497z = 3;
                            return;
                        case f22434x2 /* 21947 */:
                            j(i4);
                            d dVar = this.f22465x;
                            dVar.f22495x = true;
                            int i14 = (int) j4;
                            if (i14 == 1) {
                                dVar.f22496y = 1;
                                return;
                            } else if (i14 == 9) {
                                dVar.f22496y = 6;
                                return;
                            } else if (i14 == 4 || i14 == 5 || i14 == 6 || i14 == 7) {
                                dVar.f22496y = 2;
                                return;
                            } else {
                                return;
                            }
                        case f22437y2 /* 21948 */:
                            t(i4).B = (int) j4;
                            return;
                        case f22440z2 /* 21949 */:
                            t(i4).C = (int) j4;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    @CallSuper
    protected boolean z(int i4) {
        return i4 == 357149030 || i4 == f22394k1 || i4 == f22384h2 || i4 == f22427v1;
    }

    public e(int i4) {
        this(new com.google.android.exoplayer2.extractor.mkv.a(), i4);
    }

    e(com.google.android.exoplayer2.extractor.mkv.c cVar, int i4) {
        this.f22461t = -1L;
        this.f22462u = i.f23649b;
        this.f22463v = i.f23649b;
        this.f22464w = i.f23649b;
        this.C = -1L;
        this.D = -1L;
        this.E = i.f23649b;
        this.f22444d = cVar;
        cVar.b(new c());
        this.f22448g = (i4 & 1) == 0;
        this.f22446e = new g();
        this.f22447f = new SparseArray<>();
        this.f22451j = new h0(4);
        this.f22452k = new h0(ByteBuffer.allocate(4).putInt(-1).array());
        this.f22453l = new h0(4);
        this.f22449h = new h0(com.google.android.exoplayer2.util.b0.f27494b);
        this.f22450i = new h0(4);
        this.f22454m = new h0();
        this.f22455n = new h0();
        this.f22456o = new h0(8);
        this.f22457p = new h0();
        this.f22458q = new h0();
        this.O = new int[1];
    }
}
