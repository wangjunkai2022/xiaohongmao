package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.e2;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.w;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.trackselection.o;
import com.google.android.exoplayer2.z1;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExoPlayerImplInternal.java */
/* loaded from: classes2.dex */
public final class t0 implements Handler.Callback, w.a, o.a, m1.d, n.a, z1.a {
    private static final int E2 = 19;
    private static final int F2 = 20;
    private static final int G2 = 21;
    private static final int H2 = 22;
    private static final int I2 = 23;
    private static final int J2 = 24;
    private static final int K2 = 25;
    private static final int L2 = 10;
    private static final int M2 = 1000;
    private static final long N2 = 2000;
    private static final String P = "ExoPlayerImplInternal";
    private static final int Q = 0;
    private static final int R = 1;
    private static final int S = 2;
    private static final int T = 3;
    private static final int T1 = 12;
    private static final int U = 4;
    private static final int V = 5;
    private static final int V1 = 13;
    private static final int W = 6;

    /* renamed from: b1  reason: collision with root package name */
    private static final int f25231b1 = 7;

    /* renamed from: b2  reason: collision with root package name */
    private static final int f25232b2 = 14;

    /* renamed from: g1  reason: collision with root package name */
    private static final int f25233g1 = 8;

    /* renamed from: g2  reason: collision with root package name */
    private static final int f25234g2 = 15;

    /* renamed from: p1  reason: collision with root package name */
    private static final int f25235p1 = 9;

    /* renamed from: p2  reason: collision with root package name */
    private static final int f25236p2 = 16;

    /* renamed from: x1  reason: collision with root package name */
    private static final int f25237x1 = 10;

    /* renamed from: x2  reason: collision with root package name */
    private static final int f25238x2 = 17;

    /* renamed from: y1  reason: collision with root package name */
    private static final int f25239y1 = 11;

    /* renamed from: y2  reason: collision with root package name */
    private static final int f25240y2 = 18;
    private boolean A;
    private boolean B;
    private boolean C;
    private int D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private int I;
    @Nullable
    private h J;
    private long K;
    private int L;
    private boolean M;
    @Nullable
    private ExoPlaybackException N;
    private long O;

    /* renamed from: a  reason: collision with root package name */
    private final e2[] f25241a;

    /* renamed from: b  reason: collision with root package name */
    private final g2[] f25242b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.trackselection.o f25243c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.trackselection.p f25244d;

    /* renamed from: e  reason: collision with root package name */
    private final z0 f25245e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.e f25246f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.q f25247g;

    /* renamed from: h  reason: collision with root package name */
    private final HandlerThread f25248h;

    /* renamed from: i  reason: collision with root package name */
    private final Looper f25249i;

    /* renamed from: j  reason: collision with root package name */
    private final s2.d f25250j;

    /* renamed from: k  reason: collision with root package name */
    private final s2.b f25251k;

    /* renamed from: l  reason: collision with root package name */
    private final long f25252l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f25253m;

    /* renamed from: n  reason: collision with root package name */
    private final n f25254n;

    /* renamed from: o  reason: collision with root package name */
    private final ArrayList<d> f25255o;

    /* renamed from: p  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d f25256p;

    /* renamed from: q  reason: collision with root package name */
    private final f f25257q;

    /* renamed from: r  reason: collision with root package name */
    private final j1 f25258r;

    /* renamed from: s  reason: collision with root package name */
    private final m1 f25259s;

    /* renamed from: t  reason: collision with root package name */
    private final y0 f25260t;

    /* renamed from: u  reason: collision with root package name */
    private final long f25261u;

    /* renamed from: v  reason: collision with root package name */
    private j2 f25262v;

    /* renamed from: w  reason: collision with root package name */
    private r1 f25263w;

    /* renamed from: x  reason: collision with root package name */
    private e f25264x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f25265y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f25266z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public class a implements e2.c {
        a() {
        }

        @Override // com.google.android.exoplayer2.e2.c
        public void a() {
            t0.this.f25247g.l(2);
        }

        @Override // com.google.android.exoplayer2.e2.c
        public void b(long j4) {
            if (j4 >= 2000) {
                t0.this.G = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final List<m1.c> f25268a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.exoplayer2.source.z0 f25269b;

        /* renamed from: c  reason: collision with root package name */
        private final int f25270c;

        /* renamed from: d  reason: collision with root package name */
        private final long f25271d;

        /* synthetic */ b(List list, com.google.android.exoplayer2.source.z0 z0Var, int i4, long j4, a aVar) {
            this(list, z0Var, i4, j4);
        }

        private b(List<m1.c> list, com.google.android.exoplayer2.source.z0 z0Var, int i4, long j4) {
            this.f25268a = list;
            this.f25269b = z0Var;
            this.f25270c = i4;
            this.f25271d = j4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f25272a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25273b;

        /* renamed from: c  reason: collision with root package name */
        public final int f25274c;

        /* renamed from: d  reason: collision with root package name */
        public final com.google.android.exoplayer2.source.z0 f25275d;

        public c(int i4, int i10, int i11, com.google.android.exoplayer2.source.z0 z0Var) {
            this.f25272a = i4;
            this.f25273b = i10;
            this.f25274c = i11;
            this.f25275d = z0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public static final class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        public final z1 f25276a;

        /* renamed from: b  reason: collision with root package name */
        public int f25277b;

        /* renamed from: c  reason: collision with root package name */
        public long f25278c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f25279d;

        public d(z1 z1Var) {
            this.f25276a = z1Var;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            Object obj = this.f25279d;
            if ((obj == null) != (dVar.f25279d == null)) {
                return obj != null ? -1 : 1;
            } else if (obj == null) {
                return 0;
            } else {
                int i4 = this.f25277b - dVar.f25277b;
                return i4 != 0 ? i4 : com.google.android.exoplayer2.util.z0.r(this.f25278c, dVar.f25278c);
            }
        }

        public void b(int i4, long j4, Object obj) {
            this.f25277b = i4;
            this.f25278c = j4;
            this.f25279d = obj;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private boolean f25280a;

        /* renamed from: b  reason: collision with root package name */
        public r1 f25281b;

        /* renamed from: c  reason: collision with root package name */
        public int f25282c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f25283d;

        /* renamed from: e  reason: collision with root package name */
        public int f25284e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f25285f;

        /* renamed from: g  reason: collision with root package name */
        public int f25286g;

        public e(r1 r1Var) {
            this.f25281b = r1Var;
        }

        public void b(int i4) {
            this.f25280a |= i4 > 0;
            this.f25282c += i4;
        }

        public void c(int i4) {
            this.f25280a = true;
            this.f25285f = true;
            this.f25286g = i4;
        }

        public void d(r1 r1Var) {
            this.f25280a |= this.f25281b != r1Var;
            this.f25281b = r1Var;
        }

        public void e(int i4) {
            if (this.f25283d && this.f25284e != 5) {
                com.google.android.exoplayer2.util.a.a(i4 == 5);
                return;
            }
            this.f25280a = true;
            this.f25283d = true;
            this.f25284e = i4;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public interface f {
        void a(e eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final z.a f25287a;

        /* renamed from: b  reason: collision with root package name */
        public final long f25288b;

        /* renamed from: c  reason: collision with root package name */
        public final long f25289c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f25290d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f25291e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f25292f;

        public g(z.a aVar, long j4, long j10, boolean z9, boolean z10, boolean z11) {
            this.f25287a = aVar;
            this.f25288b = j4;
            this.f25289c = j10;
            this.f25290d = z9;
            this.f25291e = z10;
            this.f25292f = z11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final s2 f25293a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25294b;

        /* renamed from: c  reason: collision with root package name */
        public final long f25295c;

        public h(s2 s2Var, int i4, long j4) {
            this.f25293a = s2Var;
            this.f25294b = i4;
            this.f25295c = j4;
        }
    }

    public t0(e2[] e2VarArr, com.google.android.exoplayer2.trackselection.o oVar, com.google.android.exoplayer2.trackselection.p pVar, z0 z0Var, com.google.android.exoplayer2.upstream.e eVar, int i4, boolean z9, @Nullable com.google.android.exoplayer2.analytics.h1 h1Var, j2 j2Var, y0 y0Var, long j4, boolean z10, Looper looper, com.google.android.exoplayer2.util.d dVar, f fVar) {
        this.f25257q = fVar;
        this.f25241a = e2VarArr;
        this.f25243c = oVar;
        this.f25244d = pVar;
        this.f25245e = z0Var;
        this.f25246f = eVar;
        this.D = i4;
        this.E = z9;
        this.f25262v = j2Var;
        this.f25260t = y0Var;
        this.f25261u = j4;
        this.O = j4;
        this.f25266z = z10;
        this.f25256p = dVar;
        this.f25252l = z0Var.b();
        this.f25253m = z0Var.a();
        r1 k10 = r1.k(pVar);
        this.f25263w = k10;
        this.f25264x = new e(k10);
        this.f25242b = new g2[e2VarArr.length];
        for (int i10 = 0; i10 < e2VarArr.length; i10++) {
            e2VarArr[i10].h(i10);
            this.f25242b[i10] = e2VarArr[i10].n();
        }
        this.f25254n = new n(this, dVar);
        this.f25255o = new ArrayList<>();
        this.f25250j = new s2.d();
        this.f25251k = new s2.b();
        oVar.b(this, eVar);
        this.M = true;
        Handler handler = new Handler(looper);
        this.f25258r = new j1(h1Var, handler);
        this.f25259s = new m1(this, h1Var, handler);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f25248h = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f25249i = looper2;
        this.f25247g = dVar.d(looper2, this);
    }

    private long A() {
        g1 p9 = this.f25258r.p();
        if (p9 == null) {
            return 0L;
        }
        long l10 = p9.l();
        if (!p9.f23613d) {
            return l10;
        }
        int i4 = 0;
        while (true) {
            e2[] e2VarArr = this.f25241a;
            if (i4 >= e2VarArr.length) {
                return l10;
            }
            if (O(e2VarArr[i4]) && this.f25241a[i4].t() == p9.f23612c[i4]) {
                long u9 = this.f25241a[i4].u();
                if (u9 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                l10 = Math.max(u9, l10);
            }
            i4++;
        }
    }

    private void A0(boolean z9) throws ExoPlaybackException {
        z.a aVar = this.f25258r.o().f23615f.f23635a;
        long D0 = D0(aVar, this.f25263w.f24536s, true, false);
        if (D0 != this.f25263w.f24536s) {
            r1 r1Var = this.f25263w;
            this.f25263w = L(aVar, D0, r1Var.f24520c, r1Var.f24521d, z9, 5);
        }
    }

    private Pair<z.a, Long> B(s2 s2Var) {
        if (s2Var.v()) {
            return Pair.create(r1.l(), 0L);
        }
        Pair<Object, Long> n9 = s2Var.n(this.f25250j, this.f25251k, s2Var.e(this.E), i.f23649b);
        z.a z9 = this.f25258r.z(s2Var, n9.first, 0L);
        long longValue = ((Long) n9.second).longValue();
        if (z9.c()) {
            s2Var.l(z9.f25221a, this.f25251k);
            longValue = z9.f25223c == this.f25251k.n(z9.f25222b) ? this.f25251k.j() : 0L;
        }
        return Pair.create(z9, Long.valueOf(longValue));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ab A[Catch: all -> 0x0147, TryCatch #1 {all -> 0x0147, blocks: (B:22:0x00a1, B:24:0x00ab, B:27:0x00b1, B:29:0x00b7, B:30:0x00ba, B:32:0x00c0, B:34:0x00ca, B:36:0x00d2, B:40:0x00da, B:42:0x00e4, B:44:0x00f4, B:48:0x00fe, B:52:0x0110, B:56:0x0119), top: B:74:0x00a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void B0(com.google.android.exoplayer2.t0.h r20) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 344
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.t0.B0(com.google.android.exoplayer2.t0$h):void");
    }

    private long C0(z.a aVar, long j4, boolean z9) throws ExoPlaybackException {
        return D0(aVar, j4, this.f25258r.o() != this.f25258r.p(), z9);
    }

    private long D() {
        return E(this.f25263w.f24534q);
    }

    private long D0(z.a aVar, long j4, boolean z9, boolean z10) throws ExoPlaybackException {
        m1();
        this.B = false;
        if (z10 || this.f25263w.f24522e == 3) {
            c1(2);
        }
        g1 o9 = this.f25258r.o();
        g1 g1Var = o9;
        while (g1Var != null && !aVar.equals(g1Var.f23615f.f23635a)) {
            g1Var = g1Var.j();
        }
        if (z9 || o9 != g1Var || (g1Var != null && g1Var.z(j4) < 0)) {
            for (e2 e2Var : this.f25241a) {
                o(e2Var);
            }
            if (g1Var != null) {
                while (this.f25258r.o() != g1Var) {
                    this.f25258r.b();
                }
                this.f25258r.y(g1Var);
                g1Var.x(0L);
                r();
            }
        }
        if (g1Var != null) {
            this.f25258r.y(g1Var);
            if (!g1Var.f23613d) {
                g1Var.f23615f = g1Var.f23615f.b(j4);
            } else {
                long j10 = g1Var.f23615f.f23639e;
                if (j10 != i.f23649b && j4 >= j10) {
                    j4 = Math.max(0L, j10 - 1);
                }
                if (g1Var.f23614e) {
                    long l10 = g1Var.f23610a.l(j4);
                    g1Var.f23610a.v(l10 - this.f25252l, this.f25253m);
                    j4 = l10;
                }
            }
            r0(j4);
            S();
        } else {
            this.f25258r.f();
            r0(j4);
        }
        G(false);
        this.f25247g.l(2);
        return j4;
    }

    private long E(long j4) {
        g1 j10 = this.f25258r.j();
        if (j10 == null) {
            return 0L;
        }
        return Math.max(0L, j4 - j10.y(this.K));
    }

    private void E0(z1 z1Var) throws ExoPlaybackException {
        if (z1Var.g() == i.f23649b) {
            F0(z1Var);
        } else if (this.f25263w.f24518a.v()) {
            this.f25255o.add(new d(z1Var));
        } else {
            d dVar = new d(z1Var);
            s2 s2Var = this.f25263w.f24518a;
            if (t0(dVar, s2Var, s2Var, this.D, this.E, this.f25250j, this.f25251k)) {
                this.f25255o.add(dVar);
                Collections.sort(this.f25255o);
                return;
            }
            z1Var.m(false);
        }
    }

    private void F(com.google.android.exoplayer2.source.w wVar) {
        if (this.f25258r.u(wVar)) {
            this.f25258r.x(this.K);
            S();
        }
    }

    private void F0(z1 z1Var) throws ExoPlaybackException {
        if (z1Var.e() == this.f25249i) {
            n(z1Var);
            int i4 = this.f25263w.f24522e;
            if (i4 == 3 || i4 == 2) {
                this.f25247g.l(2);
                return;
            }
            return;
        }
        this.f25247g.h(15, z1Var).b();
    }

    private void G(boolean z9) {
        long i4;
        g1 j4 = this.f25258r.j();
        z.a aVar = j4 == null ? this.f25263w.f24519b : j4.f23615f.f23635a;
        boolean z10 = !this.f25263w.f24528k.equals(aVar);
        if (z10) {
            this.f25263w = this.f25263w.b(aVar);
        }
        r1 r1Var = this.f25263w;
        if (j4 == null) {
            i4 = r1Var.f24536s;
        } else {
            i4 = j4.i();
        }
        r1Var.f24534q = i4;
        this.f25263w.f24535r = D();
        if ((z10 || z9) && j4 != null && j4.f23613d) {
            p1(j4.n(), j4.o());
        }
    }

    private void G0(final z1 z1Var) {
        Looper e4 = z1Var.e();
        if (!e4.getThread().isAlive()) {
            com.google.android.exoplayer2.util.w.n("TAG", "Trying to send message on a dead thread.");
            z1Var.m(false);
            return;
        }
        this.f25256p.d(e4, null).post(new Runnable() { // from class: com.google.android.exoplayer2.s0
            @Override // java.lang.Runnable
            public final void run() {
                t0.this.R(z1Var);
            }
        });
    }

    private void H(s2 s2Var, boolean z9) throws ExoPlaybackException {
        boolean z10;
        g v02 = v0(s2Var, this.f25263w, this.J, this.f25258r, this.D, this.E, this.f25250j, this.f25251k);
        z.a aVar = v02.f25287a;
        long j4 = v02.f25289c;
        boolean z11 = v02.f25290d;
        long j10 = v02.f25288b;
        boolean z12 = (this.f25263w.f24519b.equals(aVar) && j10 == this.f25263w.f24536s) ? false : true;
        h hVar = null;
        long j11 = i.f23649b;
        try {
            if (v02.f25291e) {
                if (this.f25263w.f24522e != 1) {
                    c1(4);
                }
                p0(false, false, false, true);
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (!z12) {
                z10 = false;
                if (!this.f25258r.E(s2Var, this.K, A())) {
                    A0(false);
                }
            } else {
                z10 = false;
                if (!s2Var.v()) {
                    for (g1 o9 = this.f25258r.o(); o9 != null; o9 = o9.j()) {
                        if (o9.f23615f.f23635a.equals(aVar)) {
                            o9.f23615f = this.f25258r.q(s2Var, o9.f23615f);
                        }
                    }
                    j10 = C0(aVar, j10, z11);
                }
            }
            r1 r1Var = this.f25263w;
            o1(s2Var, aVar, r1Var.f24518a, r1Var.f24519b, v02.f25292f ? j10 : -9223372036854775807L);
            if (z12 || j4 != this.f25263w.f24520c) {
                r1 r1Var2 = this.f25263w;
                Object obj = r1Var2.f24519b.f25221a;
                s2 s2Var2 = r1Var2.f24518a;
                this.f25263w = L(aVar, j10, j4, this.f25263w.f24521d, z12 && z9 && !s2Var2.v() && !s2Var2.l(obj, this.f25251k).f24558f, s2Var.f(obj) == -1 ? 4 : 3);
            }
            q0();
            u0(s2Var, this.f25263w.f24518a);
            this.f25263w = this.f25263w.j(s2Var);
            if (!s2Var.v()) {
                this.J = null;
            }
            G(z10);
        } catch (Throwable th2) {
            th = th2;
            hVar = null;
            r1 r1Var3 = this.f25263w;
            s2 s2Var3 = r1Var3.f24518a;
            z.a aVar2 = r1Var3.f24519b;
            if (v02.f25292f) {
                j11 = j10;
            }
            h hVar2 = hVar;
            o1(s2Var, aVar, s2Var3, aVar2, j11);
            if (z12 || j4 != this.f25263w.f24520c) {
                r1 r1Var4 = this.f25263w;
                Object obj2 = r1Var4.f24519b.f25221a;
                s2 s2Var4 = r1Var4.f24518a;
                this.f25263w = L(aVar, j10, j4, this.f25263w.f24521d, z12 && z9 && !s2Var4.v() && !s2Var4.l(obj2, this.f25251k).f24558f, s2Var.f(obj2) == -1 ? 4 : 3);
            }
            q0();
            u0(s2Var, this.f25263w.f24518a);
            this.f25263w = this.f25263w.j(s2Var);
            if (!s2Var.v()) {
                this.J = hVar2;
            }
            G(false);
            throw th;
        }
    }

    private void H0(long j4) {
        e2[] e2VarArr;
        for (e2 e2Var : this.f25241a) {
            if (e2Var.t() != null) {
                I0(e2Var, j4);
            }
        }
    }

    private void I(com.google.android.exoplayer2.source.w wVar) throws ExoPlaybackException {
        if (this.f25258r.u(wVar)) {
            g1 j4 = this.f25258r.j();
            j4.p(this.f25254n.e().f25300a, this.f25263w.f24518a);
            p1(j4.n(), j4.o());
            if (j4 == this.f25258r.o()) {
                r0(j4.f23615f.f23636b);
                r();
                r1 r1Var = this.f25263w;
                z.a aVar = r1Var.f24519b;
                long j10 = j4.f23615f.f23636b;
                this.f25263w = L(aVar, j10, r1Var.f24520c, j10, false, 5);
            }
            S();
        }
    }

    private void I0(e2 e2Var, long j4) {
        e2Var.j();
        if (e2Var instanceof com.google.android.exoplayer2.text.k) {
            ((com.google.android.exoplayer2.text.k) e2Var).W(j4);
        }
    }

    private void J(t1 t1Var, float f10, boolean z9, boolean z10) throws ExoPlaybackException {
        e2[] e2VarArr;
        if (z9) {
            if (z10) {
                this.f25264x.b(1);
            }
            this.f25263w = this.f25263w.g(t1Var);
        }
        s1(t1Var.f25300a);
        for (e2 e2Var : this.f25241a) {
            if (e2Var != null) {
                e2Var.p(f10, t1Var.f25300a);
            }
        }
    }

    private void K(t1 t1Var, boolean z9) throws ExoPlaybackException {
        J(t1Var, t1Var.f25300a, true, z9);
    }

    private void K0(boolean z9, @Nullable AtomicBoolean atomicBoolean) {
        e2[] e2VarArr;
        if (this.F != z9) {
            this.F = z9;
            if (!z9) {
                for (e2 e2Var : this.f25241a) {
                    if (!O(e2Var)) {
                        e2Var.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckResult
    private r1 L(z.a aVar, long j4, long j10, long j11, boolean z9, int i4) {
        List list;
        TrackGroupArray trackGroupArray;
        com.google.android.exoplayer2.trackselection.p pVar;
        TrackGroupArray n9;
        com.google.android.exoplayer2.trackselection.p o9;
        this.M = (!this.M && j4 == this.f25263w.f24536s && aVar.equals(this.f25263w.f24519b)) ? false : true;
        q0();
        r1 r1Var = this.f25263w;
        TrackGroupArray trackGroupArray2 = r1Var.f24525h;
        com.google.android.exoplayer2.trackselection.p pVar2 = r1Var.f24526i;
        List list2 = r1Var.f24527j;
        if (this.f25259s.t()) {
            g1 o10 = this.f25258r.o();
            if (o10 == null) {
                n9 = TrackGroupArray.EMPTY;
            } else {
                n9 = o10.n();
            }
            if (o10 == null) {
                o9 = this.f25244d;
            } else {
                o9 = o10.o();
            }
            List w9 = w(o9.f26064c);
            if (o10 != null) {
                h1 h1Var = o10.f23615f;
                if (h1Var.f23637c != j10) {
                    o10.f23615f = h1Var.a(j10);
                }
            }
            trackGroupArray = n9;
            pVar = o9;
            list = w9;
        } else if (aVar.equals(this.f25263w.f24519b)) {
            list = list2;
            trackGroupArray = trackGroupArray2;
            pVar = pVar2;
        } else {
            trackGroupArray = TrackGroupArray.EMPTY;
            pVar = this.f25244d;
            list = ImmutableList.of();
        }
        if (z9) {
            this.f25264x.e(i4);
        }
        return this.f25263w.c(aVar, j4, j10, j11, D(), trackGroupArray, pVar, list);
    }

    private void L0(b bVar) throws ExoPlaybackException {
        this.f25264x.b(1);
        if (bVar.f25270c != -1) {
            this.J = new h(new a2(bVar.f25268a, bVar.f25269b), bVar.f25270c, bVar.f25271d);
        }
        H(this.f25259s.E(bVar.f25268a, bVar.f25269b), false);
    }

    private boolean M() {
        g1 p9 = this.f25258r.p();
        if (p9.f23613d) {
            int i4 = 0;
            while (true) {
                e2[] e2VarArr = this.f25241a;
                if (i4 >= e2VarArr.length) {
                    return true;
                }
                e2 e2Var = e2VarArr[i4];
                com.google.android.exoplayer2.source.x0 x0Var = p9.f23612c[i4];
                if (e2Var.t() != x0Var || (x0Var != null && !e2Var.i())) {
                    break;
                }
                i4++;
            }
            return false;
        }
        return false;
    }

    private boolean N() {
        g1 j4 = this.f25258r.j();
        return (j4 == null || j4.k() == Long.MIN_VALUE) ? false : true;
    }

    private void N0(boolean z9) {
        if (z9 == this.H) {
            return;
        }
        this.H = z9;
        r1 r1Var = this.f25263w;
        int i4 = r1Var.f24522e;
        if (!z9 && i4 != 4 && i4 != 1) {
            this.f25247g.l(2);
        } else {
            this.f25263w = r1Var.d(z9);
        }
    }

    private static boolean O(e2 e2Var) {
        return e2Var.getState() != 0;
    }

    private boolean P() {
        g1 o9 = this.f25258r.o();
        long j4 = o9.f23615f.f23639e;
        return o9.f23613d && (j4 == i.f23649b || this.f25263w.f24536s < j4 || !f1());
    }

    private void P0(boolean z9) throws ExoPlaybackException {
        this.f25266z = z9;
        q0();
        if (!this.A || this.f25258r.p() == this.f25258r.o()) {
            return;
        }
        A0(true);
        G(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean Q() {
        return Boolean.valueOf(this.f25265y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R(z1 z1Var) {
        try {
            n(z1Var);
        } catch (ExoPlaybackException e4) {
            com.google.android.exoplayer2.util.w.e(P, "Unexpected error delivering message on external thread.", e4);
            throw new RuntimeException(e4);
        }
    }

    private void R0(boolean z9, int i4, boolean z10, int i10) throws ExoPlaybackException {
        this.f25264x.b(z10 ? 1 : 0);
        this.f25264x.c(i10);
        this.f25263w = this.f25263w.e(z9, i4);
        this.B = false;
        e0(z9);
        if (!f1()) {
            m1();
            r1();
            return;
        }
        int i11 = this.f25263w.f24522e;
        if (i11 == 3) {
            j1();
            this.f25247g.l(2);
        } else if (i11 == 2) {
            this.f25247g.l(2);
        }
    }

    private void S() {
        boolean e12 = e1();
        this.C = e12;
        if (e12) {
            this.f25258r.j().d(this.K);
        }
        n1();
    }

    private void T() {
        this.f25264x.d(this.f25263w);
        if (this.f25264x.f25280a) {
            this.f25257q.a(this.f25264x);
            this.f25264x = new e(this.f25263w);
        }
    }

    private void T0(t1 t1Var) throws ExoPlaybackException {
        this.f25254n.g(t1Var);
        K(this.f25254n.e(), true);
    }

    private boolean U(long j4, long j10) {
        if (this.H && this.G) {
            return false;
        }
        y0(j4, j10);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0090 A[LOOP:1: B:27:0x0074->B:37:0x0090, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0044 -> B:14:0x0045). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0073 -> B:27:0x0074). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void V(long r8, long r10) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.t0.V(long, long):void");
    }

    private void V0(int i4) throws ExoPlaybackException {
        this.D = i4;
        if (!this.f25258r.F(this.f25263w.f24518a, i4)) {
            A0(true);
        }
        G(false);
    }

    private void W() throws ExoPlaybackException {
        h1 n9;
        this.f25258r.x(this.K);
        if (this.f25258r.C() && (n9 = this.f25258r.n(this.K, this.f25263w)) != null) {
            g1 g4 = this.f25258r.g(this.f25242b, this.f25243c, this.f25245e.e(), this.f25259s, n9, this.f25244d);
            g4.f23610a.n(this, n9.f23636b);
            if (this.f25258r.o() == g4) {
                r0(g4.m());
            }
            G(false);
        }
        if (this.C) {
            this.C = N();
            n1();
            return;
        }
        S();
    }

    private void X() throws ExoPlaybackException {
        boolean z9 = false;
        while (d1()) {
            if (z9) {
                T();
            }
            g1 o9 = this.f25258r.o();
            g1 b10 = this.f25258r.b();
            h1 h1Var = b10.f23615f;
            z.a aVar = h1Var.f23635a;
            long j4 = h1Var.f23636b;
            r1 L = L(aVar, j4, h1Var.f23637c, j4, true, 0);
            this.f25263w = L;
            s2 s2Var = L.f24518a;
            o1(s2Var, b10.f23615f.f23635a, s2Var, o9.f23615f.f23635a, i.f23649b);
            q0();
            r1();
            z9 = true;
        }
    }

    private void X0(j2 j2Var) {
        this.f25262v = j2Var;
    }

    private void Y() {
        g1 p9 = this.f25258r.p();
        if (p9 == null) {
            return;
        }
        int i4 = 0;
        if (p9.j() != null && !this.A) {
            if (M()) {
                if (p9.j().f23613d || this.K >= p9.j().m()) {
                    com.google.android.exoplayer2.trackselection.p o9 = p9.o();
                    g1 c10 = this.f25258r.c();
                    com.google.android.exoplayer2.trackselection.p o10 = c10.o();
                    if (c10.f23613d && c10.f23610a.m() != i.f23649b) {
                        H0(c10.m());
                        return;
                    }
                    for (int i10 = 0; i10 < this.f25241a.length; i10++) {
                        boolean c11 = o9.c(i10);
                        boolean c12 = o10.c(i10);
                        if (c11 && !this.f25241a[i10].l()) {
                            boolean z9 = this.f25242b[i10].getTrackType() == 7;
                            h2 h2Var = o9.f26063b[i10];
                            h2 h2Var2 = o10.f26063b[i10];
                            if (!c12 || !h2Var2.equals(h2Var) || z9) {
                                I0(this.f25241a[i10], c10.m());
                            }
                        }
                    }
                }
            }
        } else if (p9.f23615f.f23642h || this.A) {
            while (true) {
                e2[] e2VarArr = this.f25241a;
                if (i4 >= e2VarArr.length) {
                    return;
                }
                e2 e2Var = e2VarArr[i4];
                com.google.android.exoplayer2.source.x0 x0Var = p9.f23612c[i4];
                if (x0Var != null && e2Var.t() == x0Var && e2Var.i()) {
                    long j4 = p9.f23615f.f23639e;
                    I0(e2Var, (j4 == i.f23649b || j4 == Long.MIN_VALUE) ? -9223372036854775807L : p9.l() + p9.f23615f.f23639e);
                }
                i4++;
            }
        }
    }

    private void Z() throws ExoPlaybackException {
        g1 p9 = this.f25258r.p();
        if (p9 == null || this.f25258r.o() == p9 || p9.f23616g || !n0()) {
            return;
        }
        r();
    }

    private void Z0(boolean z9) throws ExoPlaybackException {
        this.E = z9;
        if (!this.f25258r.G(this.f25263w.f24518a, z9)) {
            A0(true);
        }
        G(false);
    }

    private void a0() throws ExoPlaybackException {
        H(this.f25259s.j(), true);
    }

    private void b0(c cVar) throws ExoPlaybackException {
        this.f25264x.b(1);
        H(this.f25259s.x(cVar.f25272a, cVar.f25273b, cVar.f25274c, cVar.f25275d), false);
    }

    private void b1(com.google.android.exoplayer2.source.z0 z0Var) throws ExoPlaybackException {
        this.f25264x.b(1);
        H(this.f25259s.F(z0Var), false);
    }

    private void c1(int i4) {
        r1 r1Var = this.f25263w;
        if (r1Var.f24522e != i4) {
            this.f25263w = r1Var.h(i4);
        }
    }

    private void d0() {
        com.google.android.exoplayer2.trackselection.g[] gVarArr;
        for (g1 o9 = this.f25258r.o(); o9 != null; o9 = o9.j()) {
            for (com.google.android.exoplayer2.trackselection.g gVar : o9.o().f26064c) {
                if (gVar != null) {
                    gVar.j();
                }
            }
        }
    }

    private boolean d1() {
        g1 o9;
        g1 j4;
        return f1() && !this.A && (o9 = this.f25258r.o()) != null && (j4 = o9.j()) != null && this.K >= j4.m() && j4.f23616g;
    }

    private void e0(boolean z9) {
        com.google.android.exoplayer2.trackselection.g[] gVarArr;
        for (g1 o9 = this.f25258r.o(); o9 != null; o9 = o9.j()) {
            for (com.google.android.exoplayer2.trackselection.g gVar : o9.o().f26064c) {
                if (gVar != null) {
                    gVar.m(z9);
                }
            }
        }
    }

    private boolean e1() {
        long y9;
        if (N()) {
            g1 j4 = this.f25258r.j();
            long E = E(j4.k());
            if (j4 == this.f25258r.o()) {
                y9 = j4.y(this.K);
            } else {
                y9 = j4.y(this.K) - j4.f23615f.f23636b;
            }
            return this.f25245e.g(y9, E, this.f25254n.e().f25300a);
        }
        return false;
    }

    private void f0() {
        com.google.android.exoplayer2.trackselection.g[] gVarArr;
        for (g1 o9 = this.f25258r.o(); o9 != null; o9 = o9.j()) {
            for (com.google.android.exoplayer2.trackselection.g gVar : o9.o().f26064c) {
                if (gVar != null) {
                    gVar.u();
                }
            }
        }
    }

    private boolean f1() {
        r1 r1Var = this.f25263w;
        return r1Var.f24529l && r1Var.f24530m == 0;
    }

    private boolean g1(boolean z9) {
        if (this.I == 0) {
            return P();
        }
        if (z9) {
            r1 r1Var = this.f25263w;
            if (r1Var.f24524g) {
                long c10 = h1(r1Var.f24518a, this.f25258r.o().f23615f.f23635a) ? this.f25260t.c() : i.f23649b;
                g1 j4 = this.f25258r.j();
                return (j4.q() && j4.f23615f.f23642h) || (j4.f23615f.f23635a.c() && !j4.f23613d) || this.f25245e.d(D(), this.f25254n.e().f25300a, this.B, c10);
            }
            return true;
        }
        return false;
    }

    private boolean h1(s2 s2Var, z.a aVar) {
        if (aVar.c() || s2Var.v()) {
            return false;
        }
        s2Var.r(s2Var.l(aVar.f25221a, this.f25251k).f24555c, this.f25250j);
        if (this.f25250j.j()) {
            s2.d dVar = this.f25250j;
            return dVar.f24581i && dVar.f24578f != i.f23649b;
        }
        return false;
    }

    private void i0() {
        this.f25264x.b(1);
        p0(false, false, false, true);
        this.f25245e.onPrepared();
        c1(this.f25263w.f24518a.v() ? 4 : 2);
        this.f25259s.y(this.f25246f.c());
        this.f25247g.l(2);
    }

    private static boolean i1(r1 r1Var, s2.b bVar) {
        z.a aVar = r1Var.f24519b;
        s2 s2Var = r1Var.f24518a;
        return aVar.c() || s2Var.v() || s2Var.l(aVar.f25221a, bVar).f24558f;
    }

    private void j1() throws ExoPlaybackException {
        e2[] e2VarArr;
        this.B = false;
        this.f25254n.f();
        for (e2 e2Var : this.f25241a) {
            if (O(e2Var)) {
                e2Var.start();
            }
        }
    }

    private void k(b bVar, int i4) throws ExoPlaybackException {
        this.f25264x.b(1);
        m1 m1Var = this.f25259s;
        if (i4 == -1) {
            i4 = m1Var.r();
        }
        H(m1Var.f(i4, bVar.f25268a, bVar.f25269b), false);
    }

    private void k0() {
        p0(true, false, true, false);
        this.f25245e.onReleased();
        c1(1);
        this.f25248h.quit();
        synchronized (this) {
            this.f25265y = true;
            notifyAll();
        }
    }

    private void l0(int i4, int i10, com.google.android.exoplayer2.source.z0 z0Var) throws ExoPlaybackException {
        this.f25264x.b(1);
        H(this.f25259s.C(i4, i10, z0Var), false);
    }

    private void l1(boolean z9, boolean z10) {
        p0(z9 || !this.F, false, true, false);
        this.f25264x.b(z10 ? 1 : 0);
        this.f25245e.f();
        c1(1);
    }

    private void m() throws ExoPlaybackException {
        A0(true);
    }

    private void m1() throws ExoPlaybackException {
        e2[] e2VarArr;
        this.f25254n.h();
        for (e2 e2Var : this.f25241a) {
            if (O(e2Var)) {
                t(e2Var);
            }
        }
    }

    private void n(z1 z1Var) throws ExoPlaybackException {
        if (z1Var.l()) {
            return;
        }
        try {
            z1Var.h().d(z1Var.j(), z1Var.f());
        } finally {
            z1Var.m(true);
        }
    }

    private boolean n0() throws ExoPlaybackException {
        g1 p9 = this.f25258r.p();
        com.google.android.exoplayer2.trackselection.p o9 = p9.o();
        int i4 = 0;
        boolean z9 = false;
        while (true) {
            e2[] e2VarArr = this.f25241a;
            if (i4 >= e2VarArr.length) {
                return !z9;
            }
            e2 e2Var = e2VarArr[i4];
            if (O(e2Var)) {
                boolean z10 = e2Var.t() != p9.f23612c[i4];
                if (!o9.c(i4) || z10) {
                    if (!e2Var.l()) {
                        e2Var.m(y(o9.f26064c[i4]), p9.f23612c[i4], p9.m(), p9.l());
                    } else if (e2Var.b()) {
                        o(e2Var);
                    } else {
                        z9 = true;
                    }
                }
            }
            i4++;
        }
    }

    private void n1() {
        g1 j4 = this.f25258r.j();
        boolean z9 = this.C || (j4 != null && j4.f23610a.b());
        r1 r1Var = this.f25263w;
        if (z9 != r1Var.f24524g) {
            this.f25263w = r1Var.a(z9);
        }
    }

    private void o(e2 e2Var) throws ExoPlaybackException {
        if (O(e2Var)) {
            this.f25254n.a(e2Var);
            t(e2Var);
            e2Var.c();
            this.I--;
        }
    }

    private void o0() throws ExoPlaybackException {
        float f10 = this.f25254n.e().f25300a;
        g1 p9 = this.f25258r.p();
        boolean z9 = true;
        for (g1 o9 = this.f25258r.o(); o9 != null && o9.f23613d; o9 = o9.j()) {
            com.google.android.exoplayer2.trackselection.p v9 = o9.v(f10, this.f25263w.f24518a);
            if (!v9.a(o9.o())) {
                if (z9) {
                    g1 o10 = this.f25258r.o();
                    boolean y9 = this.f25258r.y(o10);
                    boolean[] zArr = new boolean[this.f25241a.length];
                    long b10 = o10.b(v9, this.f25263w.f24536s, y9, zArr);
                    r1 r1Var = this.f25263w;
                    boolean z10 = (r1Var.f24522e == 4 || b10 == r1Var.f24536s) ? false : true;
                    r1 r1Var2 = this.f25263w;
                    this.f25263w = L(r1Var2.f24519b, b10, r1Var2.f24520c, r1Var2.f24521d, z10, 5);
                    if (z10) {
                        r0(b10);
                    }
                    boolean[] zArr2 = new boolean[this.f25241a.length];
                    int i4 = 0;
                    while (true) {
                        e2[] e2VarArr = this.f25241a;
                        if (i4 >= e2VarArr.length) {
                            break;
                        }
                        e2 e2Var = e2VarArr[i4];
                        zArr2[i4] = O(e2Var);
                        com.google.android.exoplayer2.source.x0 x0Var = o10.f23612c[i4];
                        if (zArr2[i4]) {
                            if (x0Var != e2Var.t()) {
                                o(e2Var);
                            } else if (zArr[i4]) {
                                e2Var.v(this.K);
                            }
                        }
                        i4++;
                    }
                    s(zArr2);
                } else {
                    this.f25258r.y(o9);
                    if (o9.f23613d) {
                        o9.a(v9, Math.max(o9.f23615f.f23636b, o9.y(this.K)), false);
                    }
                }
                G(true);
                if (this.f25263w.f24522e != 4) {
                    S();
                    r1();
                    this.f25247g.l(2);
                    return;
                }
                return;
            }
            if (o9 == p9) {
                z9 = false;
            }
        }
    }

    private void o1(s2 s2Var, z.a aVar, s2 s2Var2, z.a aVar2, long j4) {
        if (!s2Var.v() && h1(s2Var, aVar)) {
            s2Var.r(s2Var.l(aVar.f25221a, this.f25251k).f24555c, this.f25250j);
            this.f25260t.a((b1.f) com.google.android.exoplayer2.util.z0.k(this.f25250j.f24583k));
            if (j4 != i.f23649b) {
                this.f25260t.e(z(s2Var, aVar.f25221a, j4));
                return;
            }
            if (com.google.android.exoplayer2.util.z0.c(s2Var2.v() ? null : s2Var2.r(s2Var2.l(aVar2.f25221a, this.f25251k).f24555c, this.f25250j).f24573a, this.f25250j.f24573a)) {
                return;
            }
            this.f25260t.e(i.f23649b);
            return;
        }
        float f10 = this.f25254n.e().f25300a;
        t1 t1Var = this.f25263w.f24531n;
        if (f10 != t1Var.f25300a) {
            this.f25254n.g(t1Var);
        }
    }

    private void p() throws ExoPlaybackException, IOException {
        boolean z9;
        boolean z10;
        int i4;
        boolean z11;
        long c10 = this.f25256p.c();
        q1();
        int i10 = this.f25263w.f24522e;
        if (i10 != 1 && i10 != 4) {
            g1 o9 = this.f25258r.o();
            if (o9 == null) {
                y0(c10, 10L);
                return;
            }
            com.google.android.exoplayer2.util.v0.a("doSomeWork");
            r1();
            if (o9.f23613d) {
                long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
                o9.f23610a.v(this.f25263w.f24536s - this.f25252l, this.f25253m);
                int i11 = 0;
                z9 = true;
                z10 = true;
                while (true) {
                    e2[] e2VarArr = this.f25241a;
                    if (i11 >= e2VarArr.length) {
                        break;
                    }
                    e2 e2Var = e2VarArr[i11];
                    if (O(e2Var)) {
                        e2Var.s(this.K, elapsedRealtime);
                        z9 = z9 && e2Var.b();
                        boolean z12 = o9.f23612c[i11] != e2Var.t();
                        boolean z13 = z12 || (!z12 && e2Var.i()) || e2Var.f() || e2Var.b();
                        z10 = z10 && z13;
                        if (!z13) {
                            e2Var.k();
                        }
                    }
                    i11++;
                }
            } else {
                o9.f23610a.s();
                z9 = true;
                z10 = true;
            }
            long j4 = o9.f23615f.f23639e;
            boolean z14 = z9 && o9.f23613d && (j4 == i.f23649b || j4 <= this.f25263w.f24536s);
            if (z14 && this.A) {
                this.A = false;
                R0(false, this.f25263w.f24530m, false, 5);
            }
            if (z14 && o9.f23615f.f23642h) {
                c1(4);
                m1();
            } else if (this.f25263w.f24522e == 2 && g1(z10)) {
                c1(3);
                this.N = null;
                if (f1()) {
                    j1();
                }
            } else if (this.f25263w.f24522e == 3 && (this.I != 0 ? !z10 : !P())) {
                this.B = f1();
                c1(2);
                if (this.B) {
                    f0();
                    this.f25260t.d();
                }
                m1();
            }
            if (this.f25263w.f24522e == 2) {
                int i12 = 0;
                while (true) {
                    e2[] e2VarArr2 = this.f25241a;
                    if (i12 >= e2VarArr2.length) {
                        break;
                    }
                    if (O(e2VarArr2[i12]) && this.f25241a[i12].t() == o9.f23612c[i12]) {
                        this.f25241a[i12].k();
                    }
                    i12++;
                }
                r1 r1Var = this.f25263w;
                if (!r1Var.f24524g && r1Var.f24535r < 500000 && N()) {
                    throw new IllegalStateException("Playback stuck buffering and not loading");
                }
            }
            boolean z15 = this.H;
            r1 r1Var2 = this.f25263w;
            if (z15 != r1Var2.f24532o) {
                this.f25263w = r1Var2.d(z15);
            }
            if ((f1() && this.f25263w.f24522e == 3) || (i4 = this.f25263w.f24522e) == 2) {
                z11 = !U(c10, 10L);
            } else {
                if (this.I != 0 && i4 != 4) {
                    y0(c10, 1000L);
                } else {
                    this.f25247g.n(2);
                }
                z11 = false;
            }
            r1 r1Var3 = this.f25263w;
            if (r1Var3.f24533p != z11) {
                this.f25263w = r1Var3.i(z11);
            }
            this.G = false;
            com.google.android.exoplayer2.util.v0.c();
            return;
        }
        this.f25247g.n(2);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void p0(boolean r30, boolean r31, boolean r32, boolean r33) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.t0.p0(boolean, boolean, boolean, boolean):void");
    }

    private void p1(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.p pVar) {
        this.f25245e.c(this.f25241a, trackGroupArray, pVar.f26064c);
    }

    private void q(int i4, boolean z9) throws ExoPlaybackException {
        e2 e2Var = this.f25241a[i4];
        if (O(e2Var)) {
            return;
        }
        g1 p9 = this.f25258r.p();
        boolean z10 = p9 == this.f25258r.o();
        com.google.android.exoplayer2.trackselection.p o9 = p9.o();
        h2 h2Var = o9.f26063b[i4];
        Format[] y9 = y(o9.f26064c[i4]);
        boolean z11 = f1() && this.f25263w.f24522e == 3;
        boolean z12 = !z9 && z11;
        this.I++;
        e2Var.q(h2Var, y9, p9.f23612c[i4], this.K, z12, z10, p9.m(), p9.l());
        e2Var.d(103, new a());
        this.f25254n.b(e2Var);
        if (z11) {
            e2Var.start();
        }
    }

    private void q0() {
        g1 o9 = this.f25258r.o();
        this.A = o9 != null && o9.f23615f.f23641g && this.f25266z;
    }

    private void q1() throws ExoPlaybackException, IOException {
        if (this.f25263w.f24518a.v() || !this.f25259s.t()) {
            return;
        }
        W();
        Y();
        Z();
        X();
    }

    private void r() throws ExoPlaybackException {
        s(new boolean[this.f25241a.length]);
    }

    private void r0(long j4) throws ExoPlaybackException {
        e2[] e2VarArr;
        g1 o9 = this.f25258r.o();
        if (o9 != null) {
            j4 = o9.z(j4);
        }
        this.K = j4;
        this.f25254n.c(j4);
        for (e2 e2Var : this.f25241a) {
            if (O(e2Var)) {
                e2Var.v(this.K);
            }
        }
        d0();
    }

    private void r1() throws ExoPlaybackException {
        g1 o9 = this.f25258r.o();
        if (o9 == null) {
            return;
        }
        long m9 = o9.f23613d ? o9.f23610a.m() : -9223372036854775807L;
        if (m9 != i.f23649b) {
            r0(m9);
            if (m9 != this.f25263w.f24536s) {
                r1 r1Var = this.f25263w;
                this.f25263w = L(r1Var.f24519b, m9, r1Var.f24520c, m9, true, 5);
            }
        } else {
            long i4 = this.f25254n.i(o9 != this.f25258r.p());
            this.K = i4;
            long y9 = o9.y(i4);
            V(this.f25263w.f24536s, y9);
            this.f25263w.f24536s = y9;
        }
        this.f25263w.f24534q = this.f25258r.j().i();
        this.f25263w.f24535r = D();
        r1 r1Var2 = this.f25263w;
        if (r1Var2.f24529l && r1Var2.f24522e == 3 && h1(r1Var2.f24518a, r1Var2.f24519b) && this.f25263w.f24531n.f25300a == 1.0f) {
            float b10 = this.f25260t.b(x(), D());
            if (this.f25254n.e().f25300a != b10) {
                this.f25254n.g(this.f25263w.f24531n.e(b10));
                J(this.f25263w.f24531n, this.f25254n.e().f25300a, false, false);
            }
        }
    }

    private void s(boolean[] zArr) throws ExoPlaybackException {
        g1 p9 = this.f25258r.p();
        com.google.android.exoplayer2.trackselection.p o9 = p9.o();
        for (int i4 = 0; i4 < this.f25241a.length; i4++) {
            if (!o9.c(i4)) {
                this.f25241a[i4].reset();
            }
        }
        for (int i10 = 0; i10 < this.f25241a.length; i10++) {
            if (o9.c(i10)) {
                q(i10, zArr[i10]);
            }
        }
        p9.f23616g = true;
    }

    private static void s0(s2 s2Var, d dVar, s2.d dVar2, s2.b bVar) {
        int i4 = s2Var.r(s2Var.l(dVar.f25279d, bVar).f24555c, dVar2).f24588p;
        Object obj = s2Var.k(i4, bVar, true).f24554b;
        long j4 = bVar.f24556d;
        dVar.b(i4, j4 != i.f23649b ? j4 - 1 : Long.MAX_VALUE, obj);
    }

    private void s1(float f10) {
        com.google.android.exoplayer2.trackselection.g[] gVarArr;
        for (g1 o9 = this.f25258r.o(); o9 != null; o9 = o9.j()) {
            for (com.google.android.exoplayer2.trackselection.g gVar : o9.o().f26064c) {
                if (gVar != null) {
                    gVar.h(f10);
                }
            }
        }
    }

    private void t(e2 e2Var) throws ExoPlaybackException {
        if (e2Var.getState() == 2) {
            e2Var.stop();
        }
    }

    private static boolean t0(d dVar, s2 s2Var, s2 s2Var2, int i4, boolean z9, s2.d dVar2, s2.b bVar) {
        Object obj = dVar.f25279d;
        if (obj == null) {
            Pair<Object, Long> w02 = w0(s2Var, new h(dVar.f25276a.i(), dVar.f25276a.k(), dVar.f25276a.g() == Long.MIN_VALUE ? i.f23649b : i.c(dVar.f25276a.g())), false, i4, z9, dVar2, bVar);
            if (w02 == null) {
                return false;
            }
            dVar.b(s2Var.f(w02.first), ((Long) w02.second).longValue(), w02.first);
            if (dVar.f25276a.g() == Long.MIN_VALUE) {
                s0(s2Var, dVar, dVar2, bVar);
            }
            return true;
        }
        int f10 = s2Var.f(obj);
        if (f10 == -1) {
            return false;
        }
        if (dVar.f25276a.g() == Long.MIN_VALUE) {
            s0(s2Var, dVar, dVar2, bVar);
            return true;
        }
        dVar.f25277b = f10;
        s2Var2.l(dVar.f25279d, bVar);
        if (bVar.f24558f && s2Var2.r(bVar.f24555c, dVar2).f24587o == s2Var2.f(dVar.f25279d)) {
            Pair<Object, Long> n9 = s2Var.n(dVar2, bVar, s2Var.l(dVar.f25279d, bVar).f24555c, dVar.f25278c + bVar.q());
            dVar.b(s2Var.f(n9.first), ((Long) n9.second).longValue(), n9.first);
        }
        return true;
    }

    private synchronized void t1(com.google.common.base.i0<Boolean> i0Var, long j4) {
        long b10 = this.f25256p.b() + j4;
        boolean z9 = false;
        while (!i0Var.get().booleanValue() && j4 > 0) {
            try {
                this.f25256p.e();
                wait(j4);
            } catch (InterruptedException unused) {
                z9 = true;
            }
            j4 = b10 - this.f25256p.b();
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
    }

    private void u0(s2 s2Var, s2 s2Var2) {
        if (s2Var.v() && s2Var2.v()) {
            return;
        }
        for (int size = this.f25255o.size() - 1; size >= 0; size--) {
            if (!t0(this.f25255o.get(size), s2Var, s2Var2, this.D, this.E, this.f25250j, this.f25251k)) {
                this.f25255o.get(size).f25276a.m(false);
                this.f25255o.remove(size);
            }
        }
        Collections.sort(this.f25255o);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.exoplayer2.t0.g v0(com.google.android.exoplayer2.s2 r29, com.google.android.exoplayer2.r1 r30, @androidx.annotation.Nullable com.google.android.exoplayer2.t0.h r31, com.google.android.exoplayer2.j1 r32, int r33, boolean r34, com.google.android.exoplayer2.s2.d r35, com.google.android.exoplayer2.s2.b r36) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.t0.v0(com.google.android.exoplayer2.s2, com.google.android.exoplayer2.r1, com.google.android.exoplayer2.t0$h, com.google.android.exoplayer2.j1, int, boolean, com.google.android.exoplayer2.s2$d, com.google.android.exoplayer2.s2$b):com.google.android.exoplayer2.t0$g");
    }

    private ImmutableList<Metadata> w(com.google.android.exoplayer2.trackselection.g[] gVarArr) {
        ImmutableList.a aVar = new ImmutableList.a();
        boolean z9 = false;
        for (com.google.android.exoplayer2.trackselection.g gVar : gVarArr) {
            if (gVar != null) {
                Metadata metadata = gVar.f(0).metadata;
                if (metadata == null) {
                    aVar.g(new Metadata(new Metadata.Entry[0]));
                } else {
                    aVar.g(metadata);
                    z9 = true;
                }
            }
        }
        return z9 ? aVar.e() : ImmutableList.of();
    }

    @Nullable
    private static Pair<Object, Long> w0(s2 s2Var, h hVar, boolean z9, int i4, boolean z10, s2.d dVar, s2.b bVar) {
        Pair<Object, Long> n9;
        Object x02;
        s2 s2Var2 = hVar.f25293a;
        if (s2Var.v()) {
            return null;
        }
        s2 s2Var3 = s2Var2.v() ? s2Var : s2Var2;
        try {
            n9 = s2Var3.n(dVar, bVar, hVar.f25294b, hVar.f25295c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (s2Var.equals(s2Var3)) {
            return n9;
        }
        if (s2Var.f(n9.first) != -1) {
            return (s2Var3.l(n9.first, bVar).f24558f && s2Var3.r(bVar.f24555c, dVar).f24587o == s2Var3.f(n9.first)) ? s2Var.n(dVar, bVar, s2Var.l(n9.first, bVar).f24555c, hVar.f25295c) : n9;
        }
        if (z9 && (x02 = x0(dVar, bVar, i4, z10, n9.first, s2Var3, s2Var)) != null) {
            return s2Var.n(dVar, bVar, s2Var.l(x02, bVar).f24555c, i.f23649b);
        }
        return null;
    }

    private long x() {
        r1 r1Var = this.f25263w;
        return z(r1Var.f24518a, r1Var.f24519b.f25221a, r1Var.f24536s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Object x0(s2.d dVar, s2.b bVar, int i4, boolean z9, Object obj, s2 s2Var, s2 s2Var2) {
        int f10 = s2Var.f(obj);
        int m9 = s2Var.m();
        int i10 = f10;
        int i11 = -1;
        for (int i12 = 0; i12 < m9 && i11 == -1; i12++) {
            i10 = s2Var.h(i10, bVar, dVar, i4, z9);
            if (i10 == -1) {
                break;
            }
            i11 = s2Var2.f(s2Var.q(i10));
        }
        if (i11 == -1) {
            return null;
        }
        return s2Var2.q(i11);
    }

    private static Format[] y(com.google.android.exoplayer2.trackselection.g gVar) {
        int length = gVar != null ? gVar.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i4 = 0; i4 < length; i4++) {
            formatArr[i4] = gVar.f(i4);
        }
        return formatArr;
    }

    private void y0(long j4, long j10) {
        this.f25247g.n(2);
        this.f25247g.m(2, j4 + j10);
    }

    private long z(s2 s2Var, Object obj, long j4) {
        s2Var.r(s2Var.l(obj, this.f25251k).f24555c, this.f25250j);
        s2.d dVar = this.f25250j;
        if (dVar.f24578f != i.f23649b && dVar.j()) {
            s2.d dVar2 = this.f25250j;
            if (dVar2.f24581i) {
                return i.c(dVar2.c() - this.f25250j.f24578f) - (j4 + this.f25251k.q());
            }
        }
        return i.f23649b;
    }

    public Looper C() {
        return this.f25249i;
    }

    public synchronized boolean J0(boolean z9) {
        if (!this.f25265y && this.f25248h.isAlive()) {
            if (z9) {
                this.f25247g.k(13, 1, 0).b();
                return true;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.f25247g.g(13, 0, 0, atomicBoolean).b();
            t1(new com.google.common.base.i0() { // from class: com.google.android.exoplayer2.r0
                @Override // com.google.common.base.i0
                public final Object get() {
                    return Boolean.valueOf(atomicBoolean.get());
                }
            }, this.O);
            return atomicBoolean.get();
        }
        return true;
    }

    public void M0(List<m1.c> list, int i4, long j4, com.google.android.exoplayer2.source.z0 z0Var) {
        this.f25247g.h(17, new b(list, z0Var, i4, j4, null)).b();
    }

    public void O0(boolean z9) {
        this.f25247g.k(23, z9 ? 1 : 0, 0).b();
    }

    public void Q0(boolean z9, int i4) {
        this.f25247g.k(1, z9 ? 1 : 0, i4).b();
    }

    public void S0(t1 t1Var) {
        this.f25247g.h(4, t1Var).b();
    }

    public void U0(int i4) {
        this.f25247g.k(11, i4, 0).b();
    }

    public void W0(j2 j2Var) {
        this.f25247g.h(5, j2Var).b();
    }

    public void Y0(boolean z9) {
        this.f25247g.k(12, z9 ? 1 : 0, 0).b();
    }

    @Override // com.google.android.exoplayer2.trackselection.o.a
    public void a() {
        this.f25247g.l(10);
    }

    public void a1(com.google.android.exoplayer2.source.z0 z0Var) {
        this.f25247g.h(21, z0Var).b();
    }

    @Override // com.google.android.exoplayer2.m1.d
    public void b() {
        this.f25247g.l(22);
    }

    @Override // com.google.android.exoplayer2.n.a
    public void c(t1 t1Var) {
        this.f25247g.h(16, t1Var).b();
    }

    public void c0(int i4, int i10, int i11, com.google.android.exoplayer2.source.z0 z0Var) {
        this.f25247g.h(19, new c(i4, i10, i11, z0Var)).b();
    }

    @Override // com.google.android.exoplayer2.z1.a
    public synchronized void d(z1 z1Var) {
        if (!this.f25265y && this.f25248h.isAlive()) {
            this.f25247g.h(14, z1Var).b();
            return;
        }
        com.google.android.exoplayer2.util.w.n(P, "Ignoring messages sent after release.");
        z1Var.m(false);
    }

    @Override // com.google.android.exoplayer2.source.y0.a
    /* renamed from: g0 */
    public void f(com.google.android.exoplayer2.source.w wVar) {
        this.f25247g.h(9, wVar).b();
    }

    public void h0() {
        this.f25247g.d(0).b();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        g1 p9;
        try {
            switch (message.what) {
                case 0:
                    i0();
                    break;
                case 1:
                    R0(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    p();
                    break;
                case 3:
                    B0((h) message.obj);
                    break;
                case 4:
                    T0((t1) message.obj);
                    break;
                case 5:
                    X0((j2) message.obj);
                    break;
                case 6:
                    l1(false, true);
                    break;
                case 7:
                    k0();
                    return true;
                case 8:
                    I((com.google.android.exoplayer2.source.w) message.obj);
                    break;
                case 9:
                    F((com.google.android.exoplayer2.source.w) message.obj);
                    break;
                case 10:
                    o0();
                    break;
                case 11:
                    V0(message.arg1);
                    break;
                case 12:
                    Z0(message.arg1 != 0);
                    break;
                case 13:
                    K0(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    E0((z1) message.obj);
                    break;
                case 15:
                    G0((z1) message.obj);
                    break;
                case 16:
                    K((t1) message.obj, false);
                    break;
                case 17:
                    L0((b) message.obj);
                    break;
                case 18:
                    k((b) message.obj, message.arg1);
                    break;
                case 19:
                    b0((c) message.obj);
                    break;
                case 20:
                    l0(message.arg1, message.arg2, (com.google.android.exoplayer2.source.z0) message.obj);
                    break;
                case 21:
                    b1((com.google.android.exoplayer2.source.z0) message.obj);
                    break;
                case 22:
                    a0();
                    break;
                case 23:
                    P0(message.arg1 != 0);
                    break;
                case 24:
                    N0(message.arg1 == 1);
                    break;
                case 25:
                    m();
                    break;
                default:
                    return false;
            }
            T();
        } catch (ExoPlaybackException e4) {
            e = e4;
            if (e.type == 1 && (p9 = this.f25258r.p()) != null) {
                e = e.b(p9.f23615f.f23635a);
            }
            if (e.f20677a && this.N == null) {
                com.google.android.exoplayer2.util.w.o(P, "Recoverable renderer error", e);
                this.N = e;
                com.google.android.exoplayer2.util.q qVar = this.f25247g;
                qVar.e(qVar.h(25, e));
            } else {
                ExoPlaybackException exoPlaybackException = this.N;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.N;
                }
                com.google.android.exoplayer2.util.w.e(P, "Playback error", e);
                l1(true, false);
                this.f25263w = this.f25263w.f(e);
            }
            T();
        } catch (IOException e10) {
            ExoPlaybackException createForSource = ExoPlaybackException.createForSource(e10);
            g1 o9 = this.f25258r.o();
            if (o9 != null) {
                createForSource = createForSource.b(o9.f23615f.f23635a);
            }
            com.google.android.exoplayer2.util.w.e(P, "Playback error", createForSource);
            l1(false, false);
            this.f25263w = this.f25263w.f(createForSource);
            T();
        } catch (RuntimeException e11) {
            ExoPlaybackException createForUnexpected = ExoPlaybackException.createForUnexpected(e11);
            com.google.android.exoplayer2.util.w.e(P, "Playback error", createForUnexpected);
            l1(true, false);
            this.f25263w = this.f25263w.f(createForUnexpected);
            T();
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.source.w.a
    public void i(com.google.android.exoplayer2.source.w wVar) {
        this.f25247g.h(8, wVar).b();
    }

    public synchronized boolean j0() {
        if (!this.f25265y && this.f25248h.isAlive()) {
            this.f25247g.l(7);
            t1(new com.google.common.base.i0() { // from class: com.google.android.exoplayer2.q0
                @Override // com.google.common.base.i0
                public final Object get() {
                    Boolean Q2;
                    Q2 = t0.this.Q();
                    return Q2;
                }
            }, this.f25261u);
            return this.f25265y;
        }
        return true;
    }

    public void k1() {
        this.f25247g.d(6).b();
    }

    public void l(int i4, List<m1.c> list, com.google.android.exoplayer2.source.z0 z0Var) {
        this.f25247g.g(18, i4, 0, new b(list, z0Var, -1, i.f23649b, null)).b();
    }

    public void m0(int i4, int i10, com.google.android.exoplayer2.source.z0 z0Var) {
        this.f25247g.g(20, i4, i10, z0Var).b();
    }

    public void u(long j4) {
        this.O = j4;
    }

    public void v(boolean z9) {
        this.f25247g.k(24, z9 ? 1 : 0, 0).b();
    }

    public void z0(s2 s2Var, int i4, long j4) {
        this.f25247g.h(3, new h(s2Var, i4, j4)).b();
    }
}
