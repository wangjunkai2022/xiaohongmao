package com.google.android.exoplayer2.analytics;

import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.j1;
import com.google.android.exoplayer2.analytics.m1;
import com.google.android.exoplayer2.analytics.n1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.v1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: PlaybackStatsListener.java */
/* loaded from: classes2.dex */
public final class o1 implements j1, m1.a {

    /* renamed from: c0  reason: collision with root package name */
    private final m1 f20913c0;

    /* renamed from: d0  reason: collision with root package name */
    private final Map<String, b> f20914d0;

    /* renamed from: e0  reason: collision with root package name */
    private final Map<String, j1.b> f20915e0;
    @Nullable

    /* renamed from: f0  reason: collision with root package name */
    private final a f20916f0;

    /* renamed from: g0  reason: collision with root package name */
    private final boolean f20917g0;

    /* renamed from: h0  reason: collision with root package name */
    private final s2.b f20918h0;

    /* renamed from: i0  reason: collision with root package name */
    private n1 f20919i0;
    @Nullable

    /* renamed from: j0  reason: collision with root package name */
    private String f20920j0;

    /* renamed from: k0  reason: collision with root package name */
    private long f20921k0;

    /* renamed from: l0  reason: collision with root package name */
    private int f20922l0;

    /* renamed from: m0  reason: collision with root package name */
    private int f20923m0;
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private Exception f20924n0;

    /* renamed from: o0  reason: collision with root package name */
    private long f20925o0;

    /* renamed from: p0  reason: collision with root package name */
    private long f20926p0;
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private Format f20927q0;
    @Nullable

    /* renamed from: r0  reason: collision with root package name */
    private Format f20928r0;

    /* renamed from: s0  reason: collision with root package name */
    private com.google.android.exoplayer2.video.b0 f20929s0;

    /* compiled from: PlaybackStatsListener.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(j1.b bVar, n1 n1Var);
    }

    /* compiled from: PlaybackStatsListener.java */
    /* loaded from: classes2.dex */
    private static final class b {
        private long A;
        private long B;
        private long C;
        private long D;
        private long E;
        private int F;
        private int G;
        private int H;
        private long I;
        private boolean J;
        private boolean K;
        private boolean L;
        private boolean M;
        private boolean N;
        private long O;
        @Nullable
        private Format P;
        @Nullable
        private Format Q;
        private long R;
        private long S;
        private float T;

        /* renamed from: a  reason: collision with root package name */
        private final boolean f20930a;

        /* renamed from: b  reason: collision with root package name */
        private final long[] f20931b = new long[16];

        /* renamed from: c  reason: collision with root package name */
        private final List<n1.c> f20932c;

        /* renamed from: d  reason: collision with root package name */
        private final List<long[]> f20933d;

        /* renamed from: e  reason: collision with root package name */
        private final List<n1.b> f20934e;

        /* renamed from: f  reason: collision with root package name */
        private final List<n1.b> f20935f;

        /* renamed from: g  reason: collision with root package name */
        private final List<n1.a> f20936g;

        /* renamed from: h  reason: collision with root package name */
        private final List<n1.a> f20937h;

        /* renamed from: i  reason: collision with root package name */
        private final boolean f20938i;

        /* renamed from: j  reason: collision with root package name */
        private long f20939j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f20940k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f20941l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f20942m;

        /* renamed from: n  reason: collision with root package name */
        private int f20943n;

        /* renamed from: o  reason: collision with root package name */
        private int f20944o;

        /* renamed from: p  reason: collision with root package name */
        private int f20945p;

        /* renamed from: q  reason: collision with root package name */
        private int f20946q;

        /* renamed from: r  reason: collision with root package name */
        private long f20947r;

        /* renamed from: s  reason: collision with root package name */
        private int f20948s;

        /* renamed from: t  reason: collision with root package name */
        private long f20949t;

        /* renamed from: u  reason: collision with root package name */
        private long f20950u;

        /* renamed from: v  reason: collision with root package name */
        private long f20951v;

        /* renamed from: w  reason: collision with root package name */
        private long f20952w;

        /* renamed from: x  reason: collision with root package name */
        private long f20953x;

        /* renamed from: y  reason: collision with root package name */
        private long f20954y;

        /* renamed from: z  reason: collision with root package name */
        private long f20955z;

        public b(boolean z9, j1.b bVar) {
            this.f20930a = z9;
            this.f20932c = z9 ? new ArrayList<>() : Collections.emptyList();
            this.f20933d = z9 ? new ArrayList<>() : Collections.emptyList();
            this.f20934e = z9 ? new ArrayList<>() : Collections.emptyList();
            this.f20935f = z9 ? new ArrayList<>() : Collections.emptyList();
            this.f20936g = z9 ? new ArrayList<>() : Collections.emptyList();
            this.f20937h = z9 ? new ArrayList<>() : Collections.emptyList();
            boolean z10 = false;
            this.H = 0;
            this.I = bVar.f20824a;
            this.f20939j = com.google.android.exoplayer2.i.f23649b;
            this.f20947r = com.google.android.exoplayer2.i.f23649b;
            z.a aVar = bVar.f20827d;
            if (aVar != null && aVar.c()) {
                z10 = true;
            }
            this.f20938i = z10;
            this.f20950u = -1L;
            this.f20949t = -1L;
            this.f20948s = -1;
            this.T = 1.0f;
        }

        private long[] b(long j4) {
            List<long[]> list = this.f20933d;
            long[] jArr = list.get(list.size() - 1);
            return new long[]{j4, jArr[1] + (((float) (j4 - jArr[0])) * this.T)};
        }

        private static boolean c(int i4, int i10) {
            return ((i4 != 1 && i4 != 2 && i4 != 14) || i10 == 1 || i10 == 2 || i10 == 14 || i10 == 3 || i10 == 4 || i10 == 9 || i10 == 11) ? false : true;
        }

        private static boolean d(int i4) {
            return i4 == 4 || i4 == 7;
        }

        private static boolean e(int i4) {
            return i4 == 3 || i4 == 4 || i4 == 9;
        }

        private static boolean f(int i4) {
            return i4 == 6 || i4 == 7 || i4 == 10;
        }

        private void g(long j4) {
            Format format;
            int i4;
            if (this.H == 3 && (format = this.Q) != null && (i4 = format.bitrate) != -1) {
                long j10 = ((float) (j4 - this.S)) * this.T;
                this.f20955z += j10;
                this.A += j10 * i4;
            }
            this.S = j4;
        }

        private void h(long j4) {
            Format format;
            if (this.H == 3 && (format = this.P) != null) {
                long j10 = ((float) (j4 - this.R)) * this.T;
                int i4 = format.height;
                if (i4 != -1) {
                    this.f20951v += j10;
                    this.f20952w += i4 * j10;
                }
                int i10 = format.bitrate;
                if (i10 != -1) {
                    this.f20953x += j10;
                    this.f20954y += j10 * i10;
                }
            }
            this.R = j4;
        }

        private void i(j1.b bVar, @Nullable Format format) {
            int i4;
            if (com.google.android.exoplayer2.util.z0.c(this.Q, format)) {
                return;
            }
            g(bVar.f20824a);
            if (format != null && this.f20950u == -1 && (i4 = format.bitrate) != -1) {
                this.f20950u = i4;
            }
            this.Q = format;
            if (this.f20930a) {
                this.f20935f.add(new n1.b(bVar, format));
            }
        }

        private void j(long j4) {
            if (f(this.H)) {
                long j10 = j4 - this.O;
                long j11 = this.f20947r;
                if (j11 == com.google.android.exoplayer2.i.f23649b || j10 > j11) {
                    this.f20947r = j10;
                }
            }
        }

        private void k(long j4, long j10) {
            if (this.f20930a) {
                if (this.H != 3) {
                    if (j10 == com.google.android.exoplayer2.i.f23649b) {
                        return;
                    }
                    if (!this.f20933d.isEmpty()) {
                        List<long[]> list = this.f20933d;
                        long j11 = list.get(list.size() - 1)[1];
                        if (j11 != j10) {
                            this.f20933d.add(new long[]{j4, j11});
                        }
                    }
                }
                this.f20933d.add(j10 == com.google.android.exoplayer2.i.f23649b ? b(j4) : new long[]{j4, j10});
            }
        }

        private void l(j1.b bVar, @Nullable Format format) {
            int i4;
            int i10;
            if (com.google.android.exoplayer2.util.z0.c(this.P, format)) {
                return;
            }
            h(bVar.f20824a);
            if (format != null) {
                if (this.f20948s == -1 && (i10 = format.height) != -1) {
                    this.f20948s = i10;
                }
                if (this.f20949t == -1 && (i4 = format.bitrate) != -1) {
                    this.f20949t = i4;
                }
            }
            this.P = format;
            if (this.f20930a) {
                this.f20934e.add(new n1.b(bVar, format));
            }
        }

        private int q(v1 v1Var) {
            int c10 = v1Var.c();
            if (this.J && this.K) {
                return 5;
            }
            if (this.M) {
                return 13;
            }
            if (this.K) {
                if (this.L) {
                    return 14;
                }
                if (c10 == 4) {
                    return 11;
                }
                if (c10 != 2) {
                    if (c10 == 3) {
                        if (v1Var.Q0()) {
                            return v1Var.y0() != 0 ? 9 : 3;
                        }
                        return 4;
                    } else if (c10 != 1 || this.H == 0) {
                        return this.H;
                    } else {
                        return 12;
                    }
                }
                int i4 = this.H;
                if (i4 == 0 || i4 == 1 || i4 == 2 || i4 == 14) {
                    return 2;
                }
                if (v1Var.Q0()) {
                    return v1Var.y0() != 0 ? 10 : 6;
                }
                return 7;
            }
            return this.N ? 1 : 0;
        }

        private void r(int i4, j1.b bVar) {
            com.google.android.exoplayer2.util.a.a(bVar.f20824a >= this.I);
            long j4 = bVar.f20824a;
            long[] jArr = this.f20931b;
            int i10 = this.H;
            jArr[i10] = jArr[i10] + (j4 - this.I);
            if (this.f20939j == com.google.android.exoplayer2.i.f23649b) {
                this.f20939j = j4;
            }
            this.f20942m |= c(i10, i4);
            this.f20940k |= e(i4);
            this.f20941l |= i4 == 11;
            if (!d(this.H) && d(i4)) {
                this.f20943n++;
            }
            if (i4 == 5) {
                this.f20945p++;
            }
            if (!f(this.H) && f(i4)) {
                this.f20946q++;
                this.O = bVar.f20824a;
            }
            if (f(this.H) && this.H != 7 && i4 == 7) {
                this.f20944o++;
            }
            j(bVar.f20824a);
            this.H = i4;
            this.I = bVar.f20824a;
            if (this.f20930a) {
                this.f20932c.add(new n1.c(bVar, i4));
            }
        }

        public n1 a(boolean z9) {
            long[] jArr;
            ArrayList arrayList;
            long[] jArr2 = this.f20931b;
            List<long[]> list = this.f20933d;
            if (z9) {
                jArr = jArr2;
                arrayList = list;
            } else {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long[] copyOf = Arrays.copyOf(this.f20931b, 16);
                long max = Math.max(0L, elapsedRealtime - this.I);
                int i4 = this.H;
                copyOf[i4] = copyOf[i4] + max;
                j(elapsedRealtime);
                h(elapsedRealtime);
                g(elapsedRealtime);
                ArrayList arrayList2 = new ArrayList(this.f20933d);
                if (this.f20930a && this.H == 3) {
                    arrayList2.add(b(elapsedRealtime));
                }
                jArr = copyOf;
                arrayList = arrayList2;
            }
            int i10 = (this.f20942m || !this.f20940k) ? 1 : 0;
            long j4 = i10 != 0 ? com.google.android.exoplayer2.i.f23649b : jArr[2];
            int i11 = jArr[1] > 0 ? 1 : 0;
            List arrayList3 = z9 ? this.f20934e : new ArrayList(this.f20934e);
            List arrayList4 = z9 ? this.f20935f : new ArrayList(this.f20935f);
            List arrayList5 = z9 ? this.f20932c : new ArrayList(this.f20932c);
            long j10 = this.f20939j;
            boolean z10 = this.K;
            int i12 = !this.f20940k ? 1 : 0;
            boolean z11 = this.f20941l;
            int i13 = i10 ^ 1;
            int i14 = this.f20943n;
            int i15 = this.f20944o;
            int i16 = this.f20945p;
            int i17 = this.f20946q;
            long j11 = this.f20947r;
            boolean z12 = this.f20938i;
            long[] jArr3 = jArr;
            long j12 = this.f20951v;
            long j13 = this.f20952w;
            long j14 = this.f20953x;
            long j15 = this.f20954y;
            long j16 = this.f20955z;
            long j17 = this.A;
            int i18 = this.f20948s;
            int i19 = i18 == -1 ? 0 : 1;
            long j18 = this.f20949t;
            int i20 = j18 == -1 ? 0 : 1;
            long j19 = this.f20950u;
            int i21 = j19 == -1 ? 0 : 1;
            long j20 = this.B;
            long j21 = this.C;
            long j22 = this.D;
            long j23 = this.E;
            int i22 = this.F;
            return new n1(1, jArr3, arrayList5, arrayList, j10, z10 ? 1 : 0, i12, z11 ? 1 : 0, i11, j4, i13, i14, i15, i16, i17, j11, z12 ? 1 : 0, arrayList3, arrayList4, j12, j13, j14, j15, j16, j17, i19, i20, i18, j18, i21, j19, j20, j21, j22, j23, i22 > 0 ? 1 : 0, i22, this.G, this.f20936g, this.f20937h);
        }

        public void m(v1 v1Var, j1.b bVar, boolean z9, long j4, boolean z10, int i4, boolean z11, boolean z12, @Nullable ExoPlaybackException exoPlaybackException, @Nullable Exception exc, long j10, long j11, @Nullable Format format, @Nullable Format format2, @Nullable com.google.android.exoplayer2.video.b0 b0Var) {
            com.google.android.exoplayer2.trackselection.l[] b10;
            if (j4 != com.google.android.exoplayer2.i.f23649b) {
                k(bVar.f20824a, j4);
                this.J = true;
            }
            if (v1Var.c() != 2) {
                this.J = false;
            }
            int c10 = v1Var.c();
            if (c10 == 1 || c10 == 4 || z10) {
                this.L = false;
            }
            if (exoPlaybackException != null) {
                this.M = true;
                this.F++;
                if (this.f20930a) {
                    this.f20936g.add(new n1.a(bVar, exoPlaybackException));
                }
            } else if (v1Var.k0() == null) {
                this.M = false;
            }
            if (this.K && !this.L) {
                boolean z13 = false;
                boolean z14 = false;
                for (com.google.android.exoplayer2.trackselection.l lVar : v1Var.C0().b()) {
                    if (lVar != null && lVar.length() > 0) {
                        int l10 = com.google.android.exoplayer2.util.a0.l(lVar.f(0).sampleMimeType);
                        if (l10 == 2) {
                            z13 = true;
                        } else if (l10 == 1) {
                            z14 = true;
                        }
                    }
                }
                if (!z13) {
                    l(bVar, null);
                }
                if (!z14) {
                    i(bVar, null);
                }
            }
            if (format != null) {
                l(bVar, format);
            }
            if (format2 != null) {
                i(bVar, format2);
            }
            Format format3 = this.P;
            if (format3 != null && format3.height == -1 && b0Var != null) {
                l(bVar, format3.buildUpon().j0(b0Var.f27885a).Q(b0Var.f27886b).E());
            }
            if (z12) {
                this.N = true;
            }
            if (z11) {
                this.E++;
            }
            this.D += i4;
            this.B += j10;
            this.C += j11;
            if (exc != null) {
                this.G++;
                if (this.f20930a) {
                    this.f20937h.add(new n1.a(bVar, exc));
                }
            }
            int q9 = q(v1Var);
            float f10 = v1Var.e().f25300a;
            if (this.H != q9 || this.T != f10) {
                k(bVar.f20824a, z9 ? bVar.f20828e : com.google.android.exoplayer2.i.f23649b);
                h(bVar.f20824a);
                g(bVar.f20824a);
            }
            this.T = f10;
            if (this.H != q9) {
                r(q9, bVar);
            }
        }

        public void n(j1.b bVar, boolean z9, long j4) {
            int i4 = 11;
            if (this.H != 11 && !z9) {
                i4 = 15;
            }
            k(bVar.f20824a, j4);
            h(bVar.f20824a);
            g(bVar.f20824a);
            r(i4, bVar);
        }

        public void o() {
            this.K = true;
        }

        public void p() {
            this.L = true;
            this.J = false;
        }
    }

    public o1(boolean z9, @Nullable a aVar) {
        this.f20916f0 = aVar;
        this.f20917g0 = z9;
        l1 l1Var = new l1();
        this.f20913c0 = l1Var;
        this.f20914d0 = new HashMap();
        this.f20915e0 = new HashMap();
        this.f20919i0 = n1.f20875e0;
        this.f20918h0 = new s2.b();
        this.f20929s0 = com.google.android.exoplayer2.video.b0.f27879i;
        l1Var.b(this);
    }

    private void A0(j1.c cVar) {
        for (int i4 = 0; i4 < cVar.e(); i4++) {
            int c10 = cVar.c(i4);
            j1.b d4 = cVar.d(c10);
            if (c10 == 0) {
                this.f20913c0.g(d4);
            } else if (c10 == 12) {
                this.f20913c0.f(d4, this.f20922l0);
            } else {
                this.f20913c0.d(d4);
            }
        }
    }

    private Pair<j1.b, Boolean> w0(j1.c cVar, String str) {
        z.a aVar;
        j1.b bVar = null;
        boolean z9 = false;
        for (int i4 = 0; i4 < cVar.e(); i4++) {
            j1.b d4 = cVar.d(cVar.c(i4));
            boolean e4 = this.f20913c0.e(d4, str);
            if (bVar == null || ((e4 && !z9) || (e4 == z9 && d4.f20824a > bVar.f20824a))) {
                bVar = d4;
                z9 = e4;
            }
        }
        com.google.android.exoplayer2.util.a.g(bVar);
        if (!z9 && (aVar = bVar.f20827d) != null && aVar.c()) {
            long i10 = bVar.f20825b.l(bVar.f20827d.f25221a, this.f20918h0).i(bVar.f20827d.f25222b);
            if (i10 == Long.MIN_VALUE) {
                i10 = this.f20918h0.f24556d;
            }
            long q9 = i10 + this.f20918h0.q();
            long j4 = bVar.f20824a;
            s2 s2Var = bVar.f20825b;
            int i11 = bVar.f20826c;
            z.a aVar2 = bVar.f20827d;
            j1.b bVar2 = new j1.b(j4, s2Var, i11, new z.a(aVar2.f25221a, aVar2.f25224d, aVar2.f25222b), com.google.android.exoplayer2.i.d(q9), bVar.f20825b, bVar.f20830g, bVar.f20831h, bVar.f20832i, bVar.f20833j);
            z9 = this.f20913c0.e(bVar2, str);
            bVar = bVar2;
        }
        return Pair.create(bVar, Boolean.valueOf(z9));
    }

    private boolean z0(j1.c cVar, String str, int i4) {
        return cVar.a(i4) && this.f20913c0.e(cVar.d(i4), str);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void A(j1.b bVar, Format format, com.google.android.exoplayer2.decoder.e eVar) {
        i1.o0(this, bVar, format, eVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void B(j1.b bVar, Exception exc) {
        i1.g0(this, bVar, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void C(j1.b bVar, int i4) {
        i1.d0(this, bVar, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void D(j1.b bVar) {
        i1.Y(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void E(j1.b bVar, com.google.android.exoplayer2.b1 b1Var, int i4) {
        i1.J(this, bVar, b1Var, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void F(j1.b bVar) {
        i1.w(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void G(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar) {
        i1.k0(this, bVar, dVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void H(j1.b bVar) {
        i1.u(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void I(j1.b bVar, ExoPlaybackException exoPlaybackException) {
        i1.Q(this, bVar, exoPlaybackException);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void J(j1.b bVar, int i4, long j4, long j10) {
        this.f20925o0 = i4;
        this.f20926p0 = j4;
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void K(j1.b bVar, int i4, int i10, int i11, float f10) {
        i1.p0(this, bVar, i4, i10, i11, f10);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void L(j1.b bVar, int i4, Format format) {
        i1.r(this, bVar, i4, format);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void M(j1.b bVar) {
        i1.X(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void N(j1.b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar) {
        i1.H(this, bVar, oVar, sVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void O(j1.b bVar, int i4, String str, long j4) {
        i1.q(this, bVar, i4, str, j4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void P(j1.b bVar, int i4) {
        i1.T(this, bVar, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void Q(j1.b bVar) {
        i1.z(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void R(j1.b bVar, t1 t1Var) {
        i1.N(this, bVar, t1Var);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void S(j1.b bVar, int i4, long j4, long j10) {
        i1.m(this, bVar, i4, j4, j10);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void T(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar) {
        i1.f(this, bVar, dVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void U(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar) {
        i1.l0(this, bVar, dVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void V(j1.b bVar, String str, long j4, long j10) {
        i1.d(this, bVar, str, j4, j10);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void W(j1.b bVar, int i4) {
        i1.W(this, bVar, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void X(j1.b bVar, com.google.android.exoplayer2.audio.e eVar) {
        i1.a(this, bVar, eVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void Y(j1.b bVar) {
        i1.R(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void Z(j1.b bVar, com.google.android.exoplayer2.video.b0 b0Var) {
        this.f20929s0 = b0Var;
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void a(j1.b bVar, String str) {
        i1.j0(this, bVar, str);
    }

    @Override // com.google.android.exoplayer2.analytics.m1.a
    public void a0(j1.b bVar, String str, boolean z9) {
        b bVar2 = (b) com.google.android.exoplayer2.util.a.g(this.f20914d0.remove(str));
        j1.b bVar3 = (j1.b) com.google.android.exoplayer2.util.a.g(this.f20915e0.remove(str));
        bVar2.n(bVar, z9, str.equals(this.f20920j0) ? this.f20921k0 : com.google.android.exoplayer2.i.f23649b);
        n1 a10 = bVar2.a(true);
        this.f20919i0 = n1.W(this.f20919i0, a10);
        a aVar = this.f20916f0;
        if (aVar != null) {
            aVar.a(bVar3, a10);
        }
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void b(j1.b bVar, long j4, int i4) {
        i1.m0(this, bVar, j4, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.m1.a
    public void b0(j1.b bVar, String str) {
        ((b) com.google.android.exoplayer2.util.a.g(this.f20914d0.get(str))).o();
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void c(j1.b bVar, int i4) {
        i1.x(this, bVar, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void c0(j1.b bVar, Format format) {
        i1.h(this, bVar, format);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void d(j1.b bVar, Exception exc) {
        this.f20924n0 = exc;
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void d0(j1.b bVar) {
        i1.t(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void e(j1.b bVar) {
        i1.v(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void e0(j1.b bVar, float f10) {
        i1.r0(this, bVar, f10);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void f(j1.b bVar, int i4) {
        i1.P(this, bVar, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void f0(j1.b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar) {
        i1.E(this, bVar, oVar, sVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void g(j1.b bVar, boolean z9) {
        i1.I(this, bVar, z9);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void g0(j1.b bVar, TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar) {
        i1.e0(this, bVar, trackGroupArray, mVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void h(j1.b bVar, com.google.android.exoplayer2.f1 f1Var) {
        i1.K(this, bVar, f1Var);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void h0(j1.b bVar, boolean z9) {
        i1.D(this, bVar, z9);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void i(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar) {
        i1.g(this, bVar, dVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void i0(j1.b bVar, Exception exc) {
        i1.b(this, bVar, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void j(j1.b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar, IOException iOException, boolean z9) {
        this.f20924n0 = iOException;
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void j0(j1.b bVar, com.google.android.exoplayer2.source.s sVar) {
        int i4 = sVar.f25165b;
        if (i4 == 2 || i4 == 0) {
            this.f20927q0 = sVar.f25166c;
        } else if (i4 == 1) {
            this.f20928r0 = sVar.f25166c;
        }
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void k(j1.b bVar, int i4, com.google.android.exoplayer2.decoder.d dVar) {
        i1.p(this, bVar, i4, dVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void k0(j1.b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar) {
        i1.F(this, bVar, oVar, sVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void l(j1.b bVar, String str, long j4) {
        i1.c(this, bVar, str, j4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void l0(j1.b bVar, com.google.android.exoplayer2.source.s sVar) {
        i1.f0(this, bVar, sVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void m(j1.b bVar, Metadata metadata) {
        i1.L(this, bVar, metadata);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void m0(j1.b bVar, v1.l lVar, v1.l lVar2, int i4) {
        if (this.f20920j0 == null) {
            this.f20920j0 = this.f20913c0.a();
            this.f20921k0 = lVar.f27817e;
        }
        this.f20922l0 = i4;
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void n(v1 v1Var, j1.c cVar) {
        if (cVar.e() == 0) {
            return;
        }
        A0(cVar);
        for (String str : this.f20914d0.keySet()) {
            Pair<j1.b, Boolean> w02 = w0(cVar, str);
            b bVar = this.f20914d0.get(str);
            boolean z02 = z0(cVar, str, 12);
            boolean z03 = z0(cVar, str, j1.M);
            boolean z04 = z0(cVar, str, 1012);
            boolean z05 = z0(cVar, str, 1000);
            boolean z06 = z0(cVar, str, 11);
            boolean z9 = z0(cVar, str, 1003) || z0(cVar, str, j1.V);
            boolean z07 = z0(cVar, str, 1006);
            boolean z08 = z0(cVar, str, 1004);
            bVar.m(v1Var, (j1.b) w02.first, ((Boolean) w02.second).booleanValue(), str.equals(this.f20920j0) ? this.f20921k0 : com.google.android.exoplayer2.i.f23649b, z02, z03 ? this.f20923m0 : 0, z04, z05, z06 ? v1Var.k0() : null, z9 ? this.f20924n0 : null, z07 ? this.f20925o0 : 0L, z07 ? this.f20926p0 : 0L, z08 ? this.f20927q0 : null, z08 ? this.f20928r0 : null, z0(cVar, str, j1.R) ? this.f20929s0 : null);
        }
        this.f20927q0 = null;
        this.f20928r0 = null;
        this.f20920j0 = null;
        if (cVar.a(j1.Z)) {
            this.f20913c0.c(cVar.d(j1.Z));
        }
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void n0(j1.b bVar, String str) {
        i1.e(this, bVar, str);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void o(j1.b bVar, boolean z9, int i4) {
        i1.S(this, bVar, z9, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.m1.a
    public void o0(j1.b bVar, String str) {
        this.f20914d0.put(str, new b(this.f20917g0, bVar));
        this.f20915e0.put(str, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void p(j1.b bVar, int i4) {
        i1.O(this, bVar, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void p0(j1.b bVar, String str, long j4) {
        i1.h0(this, bVar, str, j4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void q(j1.b bVar, int i4) {
        i1.k(this, bVar, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void q0(j1.b bVar, Format format, com.google.android.exoplayer2.decoder.e eVar) {
        i1.i(this, bVar, format, eVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void r(j1.b bVar, Format format) {
        i1.n0(this, bVar, format);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void r0(j1.b bVar, Object obj, long j4) {
        i1.V(this, bVar, obj, j4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void s(j1.b bVar, long j4) {
        i1.j(this, bVar, j4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void s0(j1.b bVar, int i4, com.google.android.exoplayer2.decoder.d dVar) {
        i1.o(this, bVar, i4, dVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void t(j1.b bVar, int i4, int i10) {
        i1.c0(this, bVar, i4, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void t0(j1.b bVar, List list) {
        i1.b0(this, bVar, list);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void u(j1.b bVar, boolean z9) {
        i1.Z(this, bVar, z9);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void u0(j1.b bVar, boolean z9) {
        i1.C(this, bVar, z9);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void v(j1.b bVar, int i4, long j4) {
        this.f20923m0 = i4;
    }

    @Override // com.google.android.exoplayer2.analytics.m1.a
    public void v0(j1.b bVar, String str, String str2) {
        ((b) com.google.android.exoplayer2.util.a.g(this.f20914d0.get(str))).p();
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void w(j1.b bVar, Exception exc) {
        i1.l(this, bVar, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void x(j1.b bVar, boolean z9) {
        i1.a0(this, bVar, z9);
    }

    public n1 x0() {
        int i4 = 1;
        n1[] n1VarArr = new n1[this.f20914d0.size() + 1];
        n1VarArr[0] = this.f20919i0;
        for (b bVar : this.f20914d0.values()) {
            n1VarArr[i4] = bVar.a(false);
            i4++;
        }
        return n1.W(n1VarArr);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void y(j1.b bVar, boolean z9, int i4) {
        i1.M(this, bVar, z9, i4);
    }

    @Nullable
    public n1 y0() {
        String a10 = this.f20913c0.a();
        b bVar = a10 == null ? null : this.f20914d0.get(a10);
        if (bVar == null) {
            return null;
        }
        return bVar.a(false);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void z(j1.b bVar, String str, long j4, long j10) {
        i1.i0(this, bVar, str, j4, j10);
    }
}
