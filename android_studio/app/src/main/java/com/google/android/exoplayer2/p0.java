package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.source.z0;
import com.google.android.exoplayer2.t0;
import com.google.android.exoplayer2.util.v;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.z1;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExoPlayerImpl.java */
/* loaded from: classes2.dex */
public final class p0 extends e implements q {
    private static final String V0 = "ExoPlayerImpl";
    private final com.google.android.exoplayer2.source.j0 A0;
    @Nullable
    private final com.google.android.exoplayer2.analytics.h1 B0;
    private final Looper C0;
    private final com.google.android.exoplayer2.upstream.e D0;
    private final com.google.android.exoplayer2.util.d E0;
    private int F0;
    private boolean G0;
    private int H0;
    private int I0;
    private boolean J0;
    private int K0;
    private boolean L0;
    private j2 M0;
    private com.google.android.exoplayer2.source.z0 N0;
    private boolean O0;
    private v1.c P0;
    private f1 Q0;
    private r1 R0;
    private int S0;
    private int T0;
    private long U0;

    /* renamed from: o0  reason: collision with root package name */
    final com.google.android.exoplayer2.trackselection.p f24473o0;

    /* renamed from: p0  reason: collision with root package name */
    final v1.c f24474p0;

    /* renamed from: q0  reason: collision with root package name */
    private final e2[] f24475q0;

    /* renamed from: r0  reason: collision with root package name */
    private final com.google.android.exoplayer2.trackselection.o f24476r0;

    /* renamed from: s0  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.q f24477s0;

    /* renamed from: t0  reason: collision with root package name */
    private final t0.f f24478t0;

    /* renamed from: u0  reason: collision with root package name */
    private final t0 f24479u0;

    /* renamed from: v0  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.v<v1.f> f24480v0;

    /* renamed from: w0  reason: collision with root package name */
    private final CopyOnWriteArraySet<q.b> f24481w0;

    /* renamed from: x0  reason: collision with root package name */
    private final s2.b f24482x0;

    /* renamed from: y0  reason: collision with root package name */
    private final List<a> f24483y0;

    /* renamed from: z0  reason: collision with root package name */
    private final boolean f24484z0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImpl.java */
    /* loaded from: classes2.dex */
    public static final class a implements k1 {

        /* renamed from: a  reason: collision with root package name */
        private final Object f24485a;

        /* renamed from: b  reason: collision with root package name */
        private s2 f24486b;

        public a(Object obj, s2 s2Var) {
            this.f24485a = obj;
            this.f24486b = s2Var;
        }

        @Override // com.google.android.exoplayer2.k1
        public s2 a() {
            return this.f24486b;
        }

        @Override // com.google.android.exoplayer2.k1
        public Object getUid() {
            return this.f24485a;
        }
    }

    @SuppressLint({"HandlerLeak"})
    public p0(e2[] e2VarArr, com.google.android.exoplayer2.trackselection.o oVar, com.google.android.exoplayer2.source.j0 j0Var, z0 z0Var, com.google.android.exoplayer2.upstream.e eVar, @Nullable com.google.android.exoplayer2.analytics.h1 h1Var, boolean z9, j2 j2Var, y0 y0Var, long j4, boolean z10, com.google.android.exoplayer2.util.d dVar, Looper looper, @Nullable v1 v1Var, v1.c cVar) {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = com.google.android.exoplayer2.util.z0.f27747e;
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 30 + String.valueOf(str).length());
        sb.append("Init ");
        sb.append(hexString);
        sb.append(" [");
        sb.append(u0.f26069c);
        sb.append("] [");
        sb.append(str);
        sb.append("]");
        com.google.android.exoplayer2.util.w.i(V0, sb.toString());
        com.google.android.exoplayer2.util.a.i(e2VarArr.length > 0);
        this.f24475q0 = (e2[]) com.google.android.exoplayer2.util.a.g(e2VarArr);
        this.f24476r0 = (com.google.android.exoplayer2.trackselection.o) com.google.android.exoplayer2.util.a.g(oVar);
        this.A0 = j0Var;
        this.D0 = eVar;
        this.B0 = h1Var;
        this.f24484z0 = z9;
        this.M0 = j2Var;
        this.O0 = z10;
        this.C0 = looper;
        this.E0 = dVar;
        this.F0 = 0;
        final v1 v1Var2 = v1Var != null ? v1Var : this;
        this.f24480v0 = new com.google.android.exoplayer2.util.v<>(looper, dVar, new v.b() { // from class: com.google.android.exoplayer2.f0
            @Override // com.google.android.exoplayer2.util.v.b
            public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                p0.B2(v1.this, (v1.f) obj, mVar);
            }
        });
        this.f24481w0 = new CopyOnWriteArraySet<>();
        this.f24483y0 = new ArrayList();
        this.N0 = new z0.a(0);
        com.google.android.exoplayer2.trackselection.p pVar = new com.google.android.exoplayer2.trackselection.p(new h2[e2VarArr.length], new com.google.android.exoplayer2.trackselection.g[e2VarArr.length], null);
        this.f24473o0 = pVar;
        this.f24482x0 = new s2.b();
        v1.c e4 = new v1.c.a().c(1, 2, 8, 9, 10, 11, 12, 13, 14).b(cVar).e();
        this.f24474p0 = e4;
        this.P0 = new v1.c.a().b(e4).a(3).a(7).e();
        this.Q0 = f1.f23565z;
        this.S0 = -1;
        this.f24477s0 = dVar.d(looper, null);
        t0.f fVar = new t0.f() { // from class: com.google.android.exoplayer2.s
            @Override // com.google.android.exoplayer2.t0.f
            public final void a(t0.e eVar2) {
                p0.this.D2(eVar2);
            }
        };
        this.f24478t0 = fVar;
        this.R0 = r1.k(pVar);
        if (h1Var != null) {
            h1Var.Q2(v1Var2, looper);
            p1(h1Var);
            eVar.g(new Handler(looper), h1Var);
        }
        this.f24479u0 = new t0(e2VarArr, oVar, pVar, z0Var, eVar, this.F0, this.G0, h1Var, j2Var, y0Var, j4, z10, looper, dVar, fVar);
    }

    private static boolean A2(r1 r1Var) {
        return r1Var.f24522e == 3 && r1Var.f24529l && r1Var.f24530m == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B2(v1 v1Var, v1.f fVar, com.google.android.exoplayer2.util.m mVar) {
        fVar.z(v1Var, new v1.g(mVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D2(final t0.e eVar) {
        this.f24477s0.post(new Runnable() { // from class: com.google.android.exoplayer2.g0
            @Override // java.lang.Runnable
            public final void run() {
                p0.this.C2(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E2(v1.f fVar) {
        fVar.m(this.Q0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F2(v1.f fVar) {
        fVar.u(ExoPlaybackException.createForRenderer(new ExoTimeoutException(1)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I2(v1.f fVar) {
        fVar.h(this.P0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void J2(r1 r1Var, v1.f fVar) {
        fVar.u(r1Var.f24523f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void K2(r1 r1Var, com.google.android.exoplayer2.trackselection.m mVar, v1.f fVar) {
        fVar.s(r1Var.f24525h, mVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L2(r1 r1Var, v1.f fVar) {
        fVar.g(r1Var.f24527j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void N2(r1 r1Var, v1.f fVar) {
        fVar.G(r1Var.f24524g);
        fVar.v(r1Var.f24524g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void O2(r1 r1Var, v1.f fVar) {
        fVar.a0(r1Var.f24529l, r1Var.f24522e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void P2(r1 r1Var, v1.f fVar) {
        fVar.l(r1Var.f24522e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void Q2(r1 r1Var, int i4, v1.f fVar) {
        fVar.C(r1Var.f24529l, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void R2(r1 r1Var, v1.f fVar) {
        fVar.f(r1Var.f24530m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void S2(r1 r1Var, v1.f fVar) {
        fVar.E(A2(r1Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void T2(r1 r1Var, v1.f fVar) {
        fVar.c(r1Var.f24531n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void U2(r1 r1Var, int i4, v1.f fVar) {
        Object obj;
        if (r1Var.f24518a.u() == 1) {
            obj = r1Var.f24518a.r(0, new s2.d()).f24576d;
        } else {
            obj = null;
        }
        fVar.e0(r1Var.f24518a, obj, i4);
        fVar.j(r1Var.f24518a, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void V2(int i4, v1.l lVar, v1.l lVar2, v1.f fVar) {
        fVar.U(i4);
        fVar.e(lVar, lVar2, i4);
    }

    private r1 X2(r1 r1Var, s2 s2Var, @Nullable Pair<Object, Long> pair) {
        int i4;
        long j4;
        com.google.android.exoplayer2.util.a.a(s2Var.v() || pair != null);
        s2 s2Var2 = r1Var.f24518a;
        r1 j10 = r1Var.j(s2Var);
        if (s2Var.v()) {
            z.a l10 = r1.l();
            long c10 = i.c(this.U0);
            r1 b10 = j10.c(l10, c10, c10, c10, 0L, TrackGroupArray.EMPTY, this.f24473o0, ImmutableList.of()).b(l10);
            b10.f24534q = b10.f24536s;
            return b10;
        }
        Object obj = j10.f24519b.f25221a;
        boolean z9 = !obj.equals(((Pair) com.google.android.exoplayer2.util.z0.k(pair)).first);
        z.a aVar = z9 ? new z.a(pair.first) : j10.f24519b;
        long longValue = ((Long) pair.second).longValue();
        long c11 = i.c(o1());
        if (!s2Var2.v()) {
            c11 -= s2Var2.l(obj, this.f24482x0).q();
        }
        if (z9 || longValue < c11) {
            com.google.android.exoplayer2.util.a.i(!aVar.c());
            r1 b11 = j10.c(aVar, longValue, longValue, longValue, 0L, z9 ? TrackGroupArray.EMPTY : j10.f24525h, z9 ? this.f24473o0 : j10.f24526i, z9 ? ImmutableList.of() : j10.f24527j).b(aVar);
            b11.f24534q = longValue;
            return b11;
        }
        if (i4 == 0) {
            int f10 = s2Var.f(j10.f24528k.f25221a);
            if (f10 == -1 || s2Var.j(f10, this.f24482x0).f24555c != s2Var.l(aVar.f25221a, this.f24482x0).f24555c) {
                s2Var.l(aVar.f25221a, this.f24482x0);
                if (aVar.c()) {
                    j4 = this.f24482x0.e(aVar.f25222b, aVar.f25223c);
                } else {
                    j4 = this.f24482x0.f24556d;
                }
                j10 = j10.c(aVar, j10.f24536s, j10.f24536s, j10.f24521d, j4 - j10.f24536s, j10.f24525h, j10.f24526i, j10.f24527j).b(aVar);
                j10.f24534q = j4;
            }
        } else {
            com.google.android.exoplayer2.util.a.i(!aVar.c());
            long max = Math.max(0L, j10.f24535r - (longValue - c11));
            long j11 = j10.f24534q;
            if (j10.f24528k.equals(j10.f24519b)) {
                j11 = longValue + max;
            }
            j10 = j10.c(aVar, longValue, longValue, longValue, max, j10.f24525h, j10.f24526i, j10.f24527j);
            j10.f24534q = j11;
        }
        return j10;
    }

    private long Z2(s2 s2Var, z.a aVar, long j4) {
        s2Var.l(aVar.f25221a, this.f24482x0);
        return j4 + this.f24482x0.q();
    }

    private r1 a3(int i4, int i10) {
        boolean z9 = false;
        com.google.android.exoplayer2.util.a.a(i4 >= 0 && i10 >= i4 && i10 <= this.f24483y0.size());
        int j02 = j0();
        s2 A0 = A0();
        int size = this.f24483y0.size();
        this.H0++;
        b3(i4, i10);
        s2 n22 = n2();
        r1 X2 = X2(this.R0, n22, u2(A0, n22));
        int i11 = X2.f24522e;
        if (i11 != 1 && i11 != 4 && i4 < i10 && i10 == size && j02 >= X2.f24518a.u()) {
            z9 = true;
        }
        if (z9) {
            X2 = X2.h(4);
        }
        this.f24479u0.m0(i4, i10, this.N0);
        return X2;
    }

    private void b3(int i4, int i10) {
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            this.f24483y0.remove(i11);
        }
        this.N0 = this.N0.a(i4, i10);
    }

    private void c3(List<com.google.android.exoplayer2.source.z> list, int i4, long j4, boolean z9) {
        int i10;
        long j10;
        int t22 = t2();
        long currentPosition = getCurrentPosition();
        boolean z10 = true;
        this.H0++;
        if (!this.f24483y0.isEmpty()) {
            b3(0, this.f24483y0.size());
        }
        List<m1.c> m22 = m2(0, list);
        s2 n22 = n2();
        if (!n22.v() && i4 >= n22.u()) {
            throw new IllegalSeekPositionException(n22, i4, j4);
        }
        if (z9) {
            int e4 = n22.e(this.G0);
            j10 = i.f23649b;
            i10 = e4;
        } else if (i4 == -1) {
            i10 = t22;
            j10 = currentPosition;
        } else {
            i10 = i4;
            j10 = j4;
        }
        r1 X2 = X2(this.R0, n22, v2(n22, i10, j10));
        int i11 = X2.f24522e;
        if (i10 != -1 && i11 != 1) {
            i11 = (n22.v() || i10 >= n22.u()) ? 4 : 2;
        }
        r1 h4 = X2.h(i11);
        this.f24479u0.M0(m22, i10, i.c(j10), this.N0);
        g3(h4, 0, 1, false, (this.R0.f24519b.f25221a.equals(h4.f24519b.f25221a) || this.R0.f24518a.v()) ? false : false, 4, s2(h4), -1);
    }

    private void f3() {
        v1.c cVar = this.P0;
        v1.c O1 = O1(this.f24474p0);
        this.P0 = O1;
        if (O1.equals(cVar)) {
            return;
        }
        this.f24480v0.i(14, new v.a() { // from class: com.google.android.exoplayer2.i0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                p0.this.I2((v1.f) obj);
            }
        });
    }

    private void g3(final r1 r1Var, final int i4, final int i10, boolean z9, boolean z10, final int i11, long j4, int i12) {
        r1 r1Var2 = this.R0;
        this.R0 = r1Var;
        Pair<Boolean, Integer> p22 = p2(r1Var, r1Var2, z10, i11, !r1Var2.f24518a.equals(r1Var.f24518a));
        boolean booleanValue = ((Boolean) p22.first).booleanValue();
        final int intValue = ((Integer) p22.second).intValue();
        f1 f1Var = this.Q0;
        if (booleanValue) {
            r3 = r1Var.f24518a.v() ? null : r1Var.f24518a.r(r1Var.f24518a.l(r1Var.f24519b.f25221a, this.f24482x0).f24555c, this.f21823n0).f24575c;
            this.Q0 = r3 != null ? r3.f21441d : f1.f23565z;
        }
        if (!r1Var2.f24527j.equals(r1Var.f24527j)) {
            f1Var = f1Var.b().u(r1Var.f24527j).s();
        }
        boolean z11 = !f1Var.equals(this.Q0);
        this.Q0 = f1Var;
        if (!r1Var2.f24518a.equals(r1Var.f24518a)) {
            this.f24480v0.i(0, new v.a() { // from class: com.google.android.exoplayer2.y
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.U2(r1.this, i4, (v1.f) obj);
                }
            });
        }
        if (z10) {
            final v1.l x22 = x2(i11, r1Var2, i12);
            final v1.l w22 = w2(j4);
            this.f24480v0.i(12, new v.a() { // from class: com.google.android.exoplayer2.h0
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.V2(i11, x22, w22, (v1.f) obj);
                }
            });
        }
        if (booleanValue) {
            this.f24480v0.i(1, new v.a() { // from class: com.google.android.exoplayer2.k0
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    ((v1.f) obj).B(b1.this, intValue);
                }
            });
        }
        ExoPlaybackException exoPlaybackException = r1Var2.f24523f;
        ExoPlaybackException exoPlaybackException2 = r1Var.f24523f;
        if (exoPlaybackException != exoPlaybackException2 && exoPlaybackException2 != null) {
            this.f24480v0.i(11, new v.a() { // from class: com.google.android.exoplayer2.m0
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.J2(r1.this, (v1.f) obj);
                }
            });
        }
        com.google.android.exoplayer2.trackselection.p pVar = r1Var2.f24526i;
        com.google.android.exoplayer2.trackselection.p pVar2 = r1Var.f24526i;
        if (pVar != pVar2) {
            this.f24476r0.d(pVar2.f26065d);
            final com.google.android.exoplayer2.trackselection.m mVar = new com.google.android.exoplayer2.trackselection.m(r1Var.f24526i.f26064c);
            this.f24480v0.i(2, new v.a() { // from class: com.google.android.exoplayer2.a0
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.K2(r1.this, mVar, (v1.f) obj);
                }
            });
        }
        if (!r1Var2.f24527j.equals(r1Var.f24527j)) {
            this.f24480v0.i(3, new v.a() { // from class: com.google.android.exoplayer2.n0
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.L2(r1.this, (v1.f) obj);
                }
            });
        }
        if (z11) {
            final f1 f1Var2 = this.Q0;
            this.f24480v0.i(15, new v.a() { // from class: com.google.android.exoplayer2.l0
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    ((v1.f) obj).m(f1.this);
                }
            });
        }
        if (r1Var2.f24524g != r1Var.f24524g) {
            this.f24480v0.i(4, new v.a() { // from class: com.google.android.exoplayer2.t
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.N2(r1.this, (v1.f) obj);
                }
            });
        }
        if (r1Var2.f24522e != r1Var.f24522e || r1Var2.f24529l != r1Var.f24529l) {
            this.f24480v0.i(-1, new v.a() { // from class: com.google.android.exoplayer2.u
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.O2(r1.this, (v1.f) obj);
                }
            });
        }
        if (r1Var2.f24522e != r1Var.f24522e) {
            this.f24480v0.i(5, new v.a() { // from class: com.google.android.exoplayer2.v
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.P2(r1.this, (v1.f) obj);
                }
            });
        }
        if (r1Var2.f24529l != r1Var.f24529l) {
            this.f24480v0.i(6, new v.a() { // from class: com.google.android.exoplayer2.z
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.Q2(r1.this, i10, (v1.f) obj);
                }
            });
        }
        if (r1Var2.f24530m != r1Var.f24530m) {
            this.f24480v0.i(7, new v.a() { // from class: com.google.android.exoplayer2.x
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.R2(r1.this, (v1.f) obj);
                }
            });
        }
        if (A2(r1Var2) != A2(r1Var)) {
            this.f24480v0.i(8, new v.a() { // from class: com.google.android.exoplayer2.o0
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.S2(r1.this, (v1.f) obj);
                }
            });
        }
        if (!r1Var2.f24531n.equals(r1Var.f24531n)) {
            this.f24480v0.i(13, new v.a() { // from class: com.google.android.exoplayer2.w
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    p0.T2(r1.this, (v1.f) obj);
                }
            });
        }
        if (z9) {
            this.f24480v0.i(-1, e0.f21824a);
        }
        f3();
        this.f24480v0.e();
        if (r1Var2.f24532o != r1Var.f24532o) {
            Iterator<q.b> it = this.f24481w0.iterator();
            while (it.hasNext()) {
                it.next().c0(r1Var.f24532o);
            }
        }
        if (r1Var2.f24533p != r1Var.f24533p) {
            Iterator<q.b> it2 = this.f24481w0.iterator();
            while (it2.hasNext()) {
                it2.next().O(r1Var.f24533p);
            }
        }
    }

    private List<m1.c> m2(int i4, List<com.google.android.exoplayer2.source.z> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            m1.c cVar = new m1.c(list.get(i10), this.f24484z0);
            arrayList.add(cVar);
            this.f24483y0.add(i10 + i4, new a(cVar.f23930b, cVar.f23929a.P()));
        }
        this.N0 = this.N0.g(i4, arrayList.size());
        return arrayList;
    }

    private s2 n2() {
        return new a2(this.f24483y0, this.N0);
    }

    private List<com.google.android.exoplayer2.source.z> o2(List<b1> list) {
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < list.size(); i4++) {
            arrayList.add(this.A0.c(list.get(i4)));
        }
        return arrayList;
    }

    private Pair<Boolean, Integer> p2(r1 r1Var, r1 r1Var2, boolean z9, int i4, boolean z10) {
        s2 s2Var = r1Var2.f24518a;
        s2 s2Var2 = r1Var.f24518a;
        if (s2Var2.v() && s2Var.v()) {
            return new Pair<>(Boolean.FALSE, -1);
        }
        int i10 = 3;
        if (s2Var2.v() != s2Var.v()) {
            return new Pair<>(Boolean.TRUE, 3);
        }
        if (!s2Var.r(s2Var.l(r1Var2.f24519b.f25221a, this.f24482x0).f24555c, this.f21823n0).f24573a.equals(s2Var2.r(s2Var2.l(r1Var.f24519b.f25221a, this.f24482x0).f24555c, this.f21823n0).f24573a)) {
            if (z9 && i4 == 0) {
                i10 = 1;
            } else if (z9 && i4 == 1) {
                i10 = 2;
            } else if (!z10) {
                throw new IllegalStateException();
            }
            return new Pair<>(Boolean.TRUE, Integer.valueOf(i10));
        } else if (z9 && i4 == 0 && r1Var2.f24519b.f25224d < r1Var.f24519b.f25224d) {
            return new Pair<>(Boolean.TRUE, 0);
        } else {
            return new Pair<>(Boolean.FALSE, -1);
        }
    }

    private long s2(r1 r1Var) {
        if (r1Var.f24518a.v()) {
            return i.c(this.U0);
        }
        if (r1Var.f24519b.c()) {
            return r1Var.f24536s;
        }
        return Z2(r1Var.f24518a, r1Var.f24519b, r1Var.f24536s);
    }

    private int t2() {
        if (this.R0.f24518a.v()) {
            return this.S0;
        }
        r1 r1Var = this.R0;
        return r1Var.f24518a.l(r1Var.f24519b.f25221a, this.f24482x0).f24555c;
    }

    @Nullable
    private Pair<Object, Long> u2(s2 s2Var, s2 s2Var2) {
        long o12 = o1();
        if (!s2Var.v() && !s2Var2.v()) {
            Pair<Object, Long> n9 = s2Var.n(this.f21823n0, this.f24482x0, j0(), i.c(o12));
            Object obj = ((Pair) com.google.android.exoplayer2.util.z0.k(n9)).first;
            if (s2Var2.f(obj) != -1) {
                return n9;
            }
            Object x02 = t0.x0(this.f21823n0, this.f24482x0, this.F0, this.G0, obj, s2Var, s2Var2);
            if (x02 != null) {
                s2Var2.l(x02, this.f24482x0);
                int i4 = this.f24482x0.f24555c;
                return v2(s2Var2, i4, s2Var2.r(i4, this.f21823n0).d());
            }
            return v2(s2Var2, -1, i.f23649b);
        }
        boolean z9 = !s2Var.v() && s2Var2.v();
        int t22 = z9 ? -1 : t2();
        if (z9) {
            o12 = -9223372036854775807L;
        }
        return v2(s2Var2, t22, o12);
    }

    @Nullable
    private Pair<Object, Long> v2(s2 s2Var, int i4, long j4) {
        if (s2Var.v()) {
            this.S0 = i4;
            if (j4 == i.f23649b) {
                j4 = 0;
            }
            this.U0 = j4;
            this.T0 = 0;
            return null;
        }
        if (i4 == -1 || i4 >= s2Var.u()) {
            i4 = s2Var.e(this.G0);
            j4 = s2Var.r(i4, this.f21823n0).d();
        }
        return s2Var.n(this.f21823n0, this.f24482x0, i4, i.c(j4));
    }

    private v1.l w2(long j4) {
        Object obj;
        int i4;
        int j02 = j0();
        Object obj2 = null;
        if (this.R0.f24518a.v()) {
            obj = null;
            i4 = -1;
        } else {
            r1 r1Var = this.R0;
            Object obj3 = r1Var.f24519b.f25221a;
            r1Var.f24518a.l(obj3, this.f24482x0);
            i4 = this.R0.f24518a.f(obj3);
            obj = obj3;
            obj2 = this.R0.f24518a.r(j02, this.f21823n0).f24573a;
        }
        long d4 = i.d(j4);
        long d10 = this.R0.f24519b.c() ? i.d(y2(this.R0)) : d4;
        z.a aVar = this.R0.f24519b;
        return new v1.l(obj2, j02, obj, i4, d4, d10, aVar.f25222b, aVar.f25223c);
    }

    private v1.l x2(int i4, r1 r1Var, int i10) {
        int i11;
        Object obj;
        Object obj2;
        int i12;
        long j4;
        long y22;
        s2.b bVar = new s2.b();
        if (r1Var.f24518a.v()) {
            i11 = i10;
            obj = null;
            obj2 = null;
            i12 = -1;
        } else {
            Object obj3 = r1Var.f24519b.f25221a;
            r1Var.f24518a.l(obj3, bVar);
            int i13 = bVar.f24555c;
            i11 = i13;
            obj2 = obj3;
            i12 = r1Var.f24518a.f(obj3);
            obj = r1Var.f24518a.r(i13, this.f21823n0).f24573a;
        }
        if (i4 == 0) {
            j4 = bVar.f24557e + bVar.f24556d;
            if (r1Var.f24519b.c()) {
                z.a aVar = r1Var.f24519b;
                j4 = bVar.e(aVar.f25222b, aVar.f25223c);
                y22 = y2(r1Var);
            } else {
                if (r1Var.f24519b.f25225e != -1 && this.R0.f24519b.c()) {
                    j4 = y2(this.R0);
                }
                y22 = j4;
            }
        } else if (r1Var.f24519b.c()) {
            j4 = r1Var.f24536s;
            y22 = y2(r1Var);
        } else {
            j4 = bVar.f24557e + r1Var.f24536s;
            y22 = j4;
        }
        long d4 = i.d(j4);
        long d10 = i.d(y22);
        z.a aVar2 = r1Var.f24519b;
        return new v1.l(obj, i11, obj2, i12, d4, d10, aVar2.f25222b, aVar2.f25223c);
    }

    private static long y2(r1 r1Var) {
        s2.d dVar = new s2.d();
        s2.b bVar = new s2.b();
        r1Var.f24518a.l(r1Var.f24519b.f25221a, bVar);
        if (r1Var.f24520c == i.f23649b) {
            return r1Var.f24518a.r(bVar.f24555c, dVar).e();
        }
        return bVar.q() + r1Var.f24520c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z2 */
    public void C2(t0.e eVar) {
        long j4;
        boolean z9;
        long j10;
        int i4 = this.H0 - eVar.f25282c;
        this.H0 = i4;
        boolean z10 = true;
        if (eVar.f25283d) {
            this.I0 = eVar.f25284e;
            this.J0 = true;
        }
        if (eVar.f25285f) {
            this.K0 = eVar.f25286g;
        }
        if (i4 == 0) {
            s2 s2Var = eVar.f25281b.f24518a;
            if (!this.R0.f24518a.v() && s2Var.v()) {
                this.S0 = -1;
                this.U0 = 0L;
                this.T0 = 0;
            }
            if (!s2Var.v()) {
                List<s2> K = ((a2) s2Var).K();
                com.google.android.exoplayer2.util.a.i(K.size() == this.f24483y0.size());
                for (int i10 = 0; i10 < K.size(); i10++) {
                    this.f24483y0.get(i10).f24486b = K.get(i10);
                }
            }
            if (this.J0) {
                if (eVar.f25281b.f24519b.equals(this.R0.f24519b) && eVar.f25281b.f24521d == this.R0.f24536s) {
                    z10 = false;
                }
                if (z10) {
                    if (!s2Var.v() && !eVar.f25281b.f24519b.c()) {
                        r1 r1Var = eVar.f25281b;
                        j10 = Z2(s2Var, r1Var.f24519b, r1Var.f24521d);
                    } else {
                        j10 = eVar.f25281b.f24521d;
                    }
                    j4 = j10;
                } else {
                    j4 = -9223372036854775807L;
                }
                z9 = z10;
            } else {
                j4 = -9223372036854775807L;
                z9 = false;
            }
            this.J0 = false;
            g3(eVar.f25281b, 1, this.K0, false, z9, this.I0, j4, -1);
        }
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public com.google.android.exoplayer2.video.b0 A() {
        return com.google.android.exoplayer2.video.b0.f27879i;
    }

    @Override // com.google.android.exoplayer2.v1
    public s2 A0() {
        return this.R0.f24518a;
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.a
    public float B() {
        return 1.0f;
    }

    @Override // com.google.android.exoplayer2.v1
    public Looper B0() {
        return this.C0;
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public com.google.android.exoplayer2.device.b C() {
        return com.google.android.exoplayer2.device.b.f21647f;
    }

    @Override // com.google.android.exoplayer2.v1
    public com.google.android.exoplayer2.trackselection.m C0() {
        return new com.google.android.exoplayer2.trackselection.m(this.R0.f24526i.f26064c);
    }

    @Override // com.google.android.exoplayer2.v1
    public void C1(int i4, int i10, int i11) {
        com.google.android.exoplayer2.util.a.a(i4 >= 0 && i4 <= i10 && i10 <= this.f24483y0.size() && i11 >= 0);
        s2 A0 = A0();
        this.H0++;
        int min = Math.min(i11, this.f24483y0.size() - (i10 - i4));
        com.google.android.exoplayer2.util.z0.O0(this.f24483y0, i4, i10, min);
        s2 n22 = n2();
        r1 X2 = X2(this.R0, n22, u2(A0, n22));
        this.f24479u0.c0(i4, i10, min, this.N0);
        g3(X2, 0, 1, false, false, 5, i.f23649b, -1);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void D() {
    }

    @Override // com.google.android.exoplayer2.q
    public int D0(int i4) {
        return this.f24475q0[i4].getTrackType();
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void G(@Nullable SurfaceView surfaceView) {
    }

    @Override // com.google.android.exoplayer2.q
    public z1 G1(z1.b bVar) {
        return new z1(this.f24479u0, bVar, this.R0.f24518a, j0(), this.E0, this.f24479u0.C());
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public boolean H() {
        return false;
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public q.f H0() {
        return null;
    }

    @Override // com.google.android.exoplayer2.v1
    public boolean H1() {
        return this.G0;
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public void I(int i4) {
    }

    @Override // com.google.android.exoplayer2.q
    public void I0(com.google.android.exoplayer2.source.z zVar, long j4) {
        w0(Collections.singletonList(zVar), 0, j4);
    }

    @Override // com.google.android.exoplayer2.v1
    public long I1() {
        if (this.R0.f24518a.v()) {
            return this.U0;
        }
        r1 r1Var = this.R0;
        if (r1Var.f24528k.f25224d != r1Var.f24519b.f25224d) {
            return r1Var.f24518a.r(j0(), this.f21823n0).f();
        }
        long j4 = r1Var.f24534q;
        if (this.R0.f24528k.c()) {
            r1 r1Var2 = this.R0;
            s2.b l10 = r1Var2.f24518a.l(r1Var2.f24528k.f25221a, this.f24482x0);
            long i4 = l10.i(this.R0.f24528k.f25222b);
            j4 = i4 == Long.MIN_VALUE ? l10.f24556d : i4;
        }
        r1 r1Var3 = this.R0;
        return i.d(Z2(r1Var3.f24518a, r1Var3.f24528k, j4));
    }

    @Override // com.google.android.exoplayer2.q
    @Deprecated
    public void J0(com.google.android.exoplayer2.source.z zVar, boolean z9, boolean z10) {
        K1(zVar, z9);
        a();
    }

    @Override // com.google.android.exoplayer2.v1
    public boolean K() {
        return this.R0.f24519b.c();
    }

    @Override // com.google.android.exoplayer2.q
    public boolean K0() {
        return this.O0;
    }

    @Override // com.google.android.exoplayer2.q
    public void K1(com.google.android.exoplayer2.source.z zVar, boolean z9) {
        p0(Collections.singletonList(zVar), z9);
    }

    @Override // com.google.android.exoplayer2.v1
    public long L() {
        return i.d(this.R0.f24535r);
    }

    @Override // com.google.android.exoplayer2.v1
    public f1 L1() {
        return this.Q0;
    }

    @Override // com.google.android.exoplayer2.v1
    public v1.c N0() {
        return this.P0;
    }

    @Override // com.google.android.exoplayer2.q
    public com.google.android.exoplayer2.util.d O() {
        return this.E0;
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public com.google.android.exoplayer2.trackselection.o P() {
        return this.f24476r0;
    }

    @Override // com.google.android.exoplayer2.q
    public void Q(com.google.android.exoplayer2.source.z zVar) {
        f1(Collections.singletonList(zVar));
    }

    @Override // com.google.android.exoplayer2.v1
    public boolean Q0() {
        return this.R0.f24529l;
    }

    @Override // com.google.android.exoplayer2.v1
    public void R0(final boolean z9) {
        if (this.G0 != z9) {
            this.G0 = z9;
            this.f24479u0.Y0(z9);
            this.f24480v0.i(10, new v.a() { // from class: com.google.android.exoplayer2.b0
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    ((v1.f) obj).n(z9);
                }
            });
            f3();
            this.f24480v0.e();
        }
    }

    @Override // com.google.android.exoplayer2.v1
    public List<Metadata> S() {
        return this.R0.f24527j;
    }

    @Override // com.google.android.exoplayer2.q
    public void S0(@Nullable j2 j2Var) {
        if (j2Var == null) {
            j2Var = j2.f23772g;
        }
        if (this.M0.equals(j2Var)) {
            return;
        }
        this.M0 = j2Var;
        this.f24479u0.W0(j2Var);
    }

    @Override // com.google.android.exoplayer2.q
    public int T0() {
        return this.f24475q0.length;
    }

    @Override // com.google.android.exoplayer2.q
    public void V(com.google.android.exoplayer2.source.z zVar) {
        h0(Collections.singletonList(zVar));
    }

    @Override // com.google.android.exoplayer2.q
    public void V0(int i4, List<com.google.android.exoplayer2.source.z> list) {
        com.google.android.exoplayer2.util.a.a(i4 >= 0);
        s2 A0 = A0();
        this.H0++;
        List<m1.c> m22 = m2(i4, list);
        s2 n22 = n2();
        r1 X2 = X2(this.R0, n22, u2(A0, n22));
        this.f24479u0.l(i4, m22, this.N0);
        g3(X2, 0, 1, false, false, 5, i.f23649b, -1);
    }

    @Override // com.google.android.exoplayer2.v1
    public void W(v1.h hVar) {
        g0(hVar);
    }

    @Override // com.google.android.exoplayer2.v1
    public void Y(List<b1> list, boolean z9) {
        p0(o2(list), z9);
    }

    @Override // com.google.android.exoplayer2.v1
    public int Y0() {
        if (this.R0.f24518a.v()) {
            return this.T0;
        }
        r1 r1Var = this.R0;
        return r1Var.f24518a.f(r1Var.f24519b.f25221a);
    }

    public void Y2(Metadata metadata) {
        f1 s9 = this.Q0.b().t(metadata).s();
        if (s9.equals(this.Q0)) {
            return;
        }
        this.Q0 = s9;
        this.f24480v0.l(15, new v.a() { // from class: com.google.android.exoplayer2.j0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                p0.this.E2((v1.f) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.q
    public void Z(boolean z9) {
        if (this.L0 != z9) {
            this.L0 = z9;
            if (this.f24479u0.J0(z9)) {
                return;
            }
            e3(false, ExoPlaybackException.createForRenderer(new ExoTimeoutException(2)));
        }
    }

    @Override // com.google.android.exoplayer2.v1
    public void a() {
        r1 r1Var = this.R0;
        if (r1Var.f24522e != 1) {
            return;
        }
        r1 f10 = r1Var.f(null);
        r1 h4 = f10.h(f10.f24518a.v() ? 4 : 2);
        this.H0++;
        this.f24479u0.h0();
        g3(h4, 1, 1, false, false, 5, i.f23649b, -1);
    }

    @Override // com.google.android.exoplayer2.q
    public void a0(int i4, com.google.android.exoplayer2.source.z zVar) {
        V0(i4, Collections.singletonList(zVar));
    }

    @Override // com.google.android.exoplayer2.v1
    public boolean b() {
        return this.R0.f24524g;
    }

    @Override // com.google.android.exoplayer2.v1
    public int c() {
        return this.R0.f24522e;
    }

    @Override // com.google.android.exoplayer2.v1
    public void c1(v1.f fVar) {
        this.f24480v0.c(fVar);
    }

    @Override // com.google.android.exoplayer2.v1
    public int d1() {
        if (K()) {
            return this.R0.f24519b.f25223c;
        }
        return -1;
    }

    public void d3(boolean z9, int i4, int i10) {
        r1 r1Var = this.R0;
        if (r1Var.f24529l == z9 && r1Var.f24530m == i4) {
            return;
        }
        this.H0++;
        r1 e4 = r1Var.e(z9, i4);
        this.f24479u0.Q0(z9, i4);
        g3(e4, 0, i10, false, false, 5, i.f23649b, -1);
    }

    @Override // com.google.android.exoplayer2.v1
    public t1 e() {
        return this.R0.f24531n;
    }

    public void e3(boolean z9, @Nullable ExoPlaybackException exoPlaybackException) {
        r1 b10;
        if (z9) {
            b10 = a3(0, this.f24483y0.size()).f(null);
        } else {
            r1 r1Var = this.R0;
            b10 = r1Var.b(r1Var.f24519b);
            b10.f24534q = b10.f24536s;
            b10.f24535r = 0L;
        }
        r1 h4 = b10.h(1);
        if (exoPlaybackException != null) {
            h4 = h4.f(exoPlaybackException);
        }
        r1 r1Var2 = h4;
        this.H0++;
        this.f24479u0.k1();
        g3(r1Var2, 0, 1, false, r1Var2.f24518a.v() && !this.R0.f24518a.v(), 4, s2(r1Var2), -1);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.a
    public void f(float f10) {
    }

    @Override // com.google.android.exoplayer2.q
    public void f0(q.b bVar) {
        this.f24481w0.add(bVar);
    }

    @Override // com.google.android.exoplayer2.q
    public void f1(List<com.google.android.exoplayer2.source.z> list) {
        V0(this.f24483y0.size(), list);
    }

    @Override // com.google.android.exoplayer2.v1
    public void g(t1 t1Var) {
        if (t1Var == null) {
            t1Var = t1.f25296d;
        }
        if (this.R0.f24531n.equals(t1Var)) {
            return;
        }
        r1 g4 = this.R0.g(t1Var);
        this.H0++;
        this.f24479u0.S0(t1Var);
        g3(g4, 0, 1, false, false, 5, i.f23649b, -1);
    }

    @Override // com.google.android.exoplayer2.v1
    public void g0(v1.f fVar) {
        this.f24480v0.k(fVar);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.a
    public com.google.android.exoplayer2.audio.e getAudioAttributes() {
        return com.google.android.exoplayer2.audio.e.f21185f;
    }

    @Override // com.google.android.exoplayer2.v1
    public long getCurrentPosition() {
        return i.d(s2(this.R0));
    }

    @Override // com.google.android.exoplayer2.v1
    public long getDuration() {
        if (K()) {
            r1 r1Var = this.R0;
            z.a aVar = r1Var.f24519b;
            r1Var.f24518a.l(aVar.f25221a, this.f24482x0);
            return i.d(this.f24482x0.e(aVar.f25222b, aVar.f25223c));
        }
        return X0();
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void h(@Nullable Surface surface) {
    }

    @Override // com.google.android.exoplayer2.q
    public void h0(List<com.google.android.exoplayer2.source.z> list) {
        p0(list, true);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void i(@Nullable Surface surface) {
    }

    @Override // com.google.android.exoplayer2.v1
    public void i0(int i4, int i10) {
        r1 a32 = a3(i4, Math.min(i10, this.f24483y0.size()));
        g3(a32, 0, 1, false, !a32.f24519b.f25221a.equals(this.R0.f24519b.f25221a), 4, s2(a32), -1);
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public q.d i1() {
        return null;
    }

    @Override // com.google.android.exoplayer2.v1
    public void j(final int i4) {
        if (this.F0 != i4) {
            this.F0 = i4;
            this.f24479u0.U0(i4);
            this.f24480v0.i(9, new v.a() { // from class: com.google.android.exoplayer2.d0
                @Override // com.google.android.exoplayer2.util.v.a
                public final void invoke(Object obj) {
                    ((v1.f) obj).i(i4);
                }
            });
            f3();
            this.f24480v0.e();
        }
    }

    @Override // com.google.android.exoplayer2.v1
    public int j0() {
        int t22 = t2();
        if (t22 == -1) {
            return 0;
        }
        return t22;
    }

    @Override // com.google.android.exoplayer2.q
    public void j1(q.b bVar) {
        this.f24481w0.remove(bVar);
    }

    @Override // com.google.android.exoplayer2.v1
    public int k() {
        return this.F0;
    }

    @Override // com.google.android.exoplayer2.v1
    @Nullable
    public ExoPlaybackException k0() {
        return this.R0.f24523f;
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public q.a k1() {
        return null;
    }

    @Override // com.google.android.exoplayer2.v1
    public void l0(boolean z9) {
        d3(z9, 0, 1);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public void m() {
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public q.g m0() {
        return null;
    }

    @Override // com.google.android.exoplayer2.v1
    public void m1(List<b1> list, int i4, long j4) {
        w0(o2(list), i4, j4);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void n(@Nullable SurfaceView surfaceView) {
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void o(@Nullable SurfaceHolder surfaceHolder) {
    }

    @Override // com.google.android.exoplayer2.v1
    public long o1() {
        if (K()) {
            r1 r1Var = this.R0;
            r1Var.f24518a.l(r1Var.f24519b.f25221a, this.f24482x0);
            r1 r1Var2 = this.R0;
            if (r1Var2.f24520c == i.f23649b) {
                return r1Var2.f24518a.r(j0(), this.f21823n0).d();
            }
            return this.f24482x0.p() + i.d(this.R0.f24520c);
        }
        return getCurrentPosition();
    }

    @Override // com.google.android.exoplayer2.q
    public void p0(List<com.google.android.exoplayer2.source.z> list, boolean z9) {
        c3(list, -1, i.f23649b, z9);
    }

    @Override // com.google.android.exoplayer2.v1
    public void p1(v1.h hVar) {
        c1(hVar);
    }

    @Override // com.google.android.exoplayer2.q
    public void q0(boolean z9) {
        this.f24479u0.v(z9);
    }

    @Override // com.google.android.exoplayer2.v1
    public void q1(int i4, List<b1> list) {
        V0(Math.min(i4, this.f24483y0.size()), o2(list));
    }

    public void q2(long j4) {
        this.f24479u0.u(j4);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public void r(boolean z9) {
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.f
    /* renamed from: r2 */
    public ImmutableList<com.google.android.exoplayer2.text.a> q() {
        return ImmutableList.of();
    }

    @Override // com.google.android.exoplayer2.v1
    public void release() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = com.google.android.exoplayer2.util.z0.f27747e;
        String b10 = u0.b();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 36 + String.valueOf(str).length() + String.valueOf(b10).length());
        sb.append("Release ");
        sb.append(hexString);
        sb.append(" [");
        sb.append(u0.f26069c);
        sb.append("] [");
        sb.append(str);
        sb.append("] [");
        sb.append(b10);
        sb.append("]");
        com.google.android.exoplayer2.util.w.i(V0, sb.toString());
        if (!this.f24479u0.j0()) {
            this.f24480v0.l(11, c0.f21519a);
        }
        this.f24480v0.j();
        this.f24477s0.i(null);
        com.google.android.exoplayer2.analytics.h1 h1Var = this.B0;
        if (h1Var != null) {
            this.D0.d(h1Var);
        }
        r1 h4 = this.R0.h(1);
        this.R0 = h4;
        r1 b11 = h4.b(h4.f24519b);
        this.R0 = b11;
        b11.f24534q = b11.f24536s;
        this.R0.f24535r = 0L;
    }

    @Override // com.google.android.exoplayer2.q
    @Deprecated
    public void retry() {
        a();
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public void s() {
    }

    @Override // com.google.android.exoplayer2.v1
    public int s0() {
        if (K()) {
            return this.R0.f24519b.f25222b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.v1
    public long s1() {
        if (K()) {
            r1 r1Var = this.R0;
            if (r1Var.f24528k.equals(r1Var.f24519b)) {
                return i.d(this.R0.f24534q);
            }
            return getDuration();
        }
        return I1();
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void t(@Nullable TextureView textureView) {
    }

    @Override // com.google.android.exoplayer2.q
    public Looper t1() {
        return this.f24479u0.C();
    }

    @Override // com.google.android.exoplayer2.q
    @Deprecated
    public void u0(com.google.android.exoplayer2.source.z zVar) {
        V(zVar);
        a();
    }

    @Override // com.google.android.exoplayer2.q
    public void u1(com.google.android.exoplayer2.source.z0 z0Var) {
        s2 n22 = n2();
        r1 X2 = X2(this.R0, n22, v2(n22, j0(), getCurrentPosition()));
        this.H0++;
        this.N0 = z0Var;
        this.f24479u0.a1(z0Var);
        g3(X2, 0, 1, false, false, 5, i.f23649b, -1);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void v(@Nullable SurfaceHolder surfaceHolder) {
    }

    @Override // com.google.android.exoplayer2.q
    public void v0(boolean z9) {
        if (this.O0 == z9) {
            return;
        }
        this.O0 = z9;
        this.f24479u0.O0(z9);
    }

    @Override // com.google.android.exoplayer2.q
    public boolean v1() {
        return this.R0.f24533p;
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public int w() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.q
    public void w0(List<com.google.android.exoplayer2.source.z> list, int i4, long j4) {
        c3(list, i4, j4, false);
    }

    @Override // com.google.android.exoplayer2.v1
    public void x(int i4, long j4) {
        s2 s2Var = this.R0.f24518a;
        if (i4 >= 0 && (s2Var.v() || i4 < s2Var.u())) {
            this.H0++;
            if (K()) {
                com.google.android.exoplayer2.util.w.n(V0, "seekTo ignored because an ad is playing");
                t0.e eVar = new t0.e(this.R0);
                eVar.b(1);
                this.f24478t0.a(eVar);
                return;
            }
            int i10 = c() != 1 ? 2 : 1;
            int j02 = j0();
            r1 X2 = X2(this.R0.h(i10), s2Var, v2(s2Var, i4, j4));
            this.f24479u0.z0(s2Var, i4, i.c(j4));
            g3(X2, 0, 1, true, true, 1, s2(X2), j02);
            return;
        }
        throw new IllegalSeekPositionException(s2Var, i4, j4);
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public q.e x0() {
        return null;
    }

    @Override // com.google.android.exoplayer2.v1
    public void y(boolean z9) {
        e3(z9, null);
    }

    @Override // com.google.android.exoplayer2.v1
    public int y0() {
        return this.R0.f24530m;
    }

    @Override // com.google.android.exoplayer2.q
    public j2 y1() {
        return this.M0;
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void z(@Nullable TextureView textureView) {
    }

    @Override // com.google.android.exoplayer2.v1
    public TrackGroupArray z0() {
        return this.R0.f24525h;
    }
}
