package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.z;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaPeriodHolder.java */
/* loaded from: classes2.dex */
public final class g1 {

    /* renamed from: p  reason: collision with root package name */
    private static final String f23609p = "MediaPeriodHolder";

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.exoplayer2.source.w f23610a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f23611b;

    /* renamed from: c  reason: collision with root package name */
    public final com.google.android.exoplayer2.source.x0[] f23612c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f23613d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f23614e;

    /* renamed from: f  reason: collision with root package name */
    public h1 f23615f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f23616g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f23617h;

    /* renamed from: i  reason: collision with root package name */
    private final g2[] f23618i;

    /* renamed from: j  reason: collision with root package name */
    private final com.google.android.exoplayer2.trackselection.o f23619j;

    /* renamed from: k  reason: collision with root package name */
    private final m1 f23620k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private g1 f23621l;

    /* renamed from: m  reason: collision with root package name */
    private TrackGroupArray f23622m;

    /* renamed from: n  reason: collision with root package name */
    private com.google.android.exoplayer2.trackselection.p f23623n;

    /* renamed from: o  reason: collision with root package name */
    private long f23624o;

    public g1(g2[] g2VarArr, long j4, com.google.android.exoplayer2.trackselection.o oVar, com.google.android.exoplayer2.upstream.b bVar, m1 m1Var, h1 h1Var, com.google.android.exoplayer2.trackselection.p pVar) {
        this.f23618i = g2VarArr;
        this.f23624o = j4;
        this.f23619j = oVar;
        this.f23620k = m1Var;
        z.a aVar = h1Var.f23635a;
        this.f23611b = aVar.f25221a;
        this.f23615f = h1Var;
        this.f23622m = TrackGroupArray.EMPTY;
        this.f23623n = pVar;
        this.f23612c = new com.google.android.exoplayer2.source.x0[g2VarArr.length];
        this.f23617h = new boolean[g2VarArr.length];
        this.f23610a = e(aVar, m1Var, bVar, h1Var.f23636b, h1Var.f23638d);
    }

    private void c(com.google.android.exoplayer2.source.x0[] x0VarArr) {
        int i4 = 0;
        while (true) {
            g2[] g2VarArr = this.f23618i;
            if (i4 >= g2VarArr.length) {
                return;
            }
            if (g2VarArr[i4].getTrackType() == 7 && this.f23623n.c(i4)) {
                x0VarArr[i4] = new com.google.android.exoplayer2.source.l();
            }
            i4++;
        }
    }

    private static com.google.android.exoplayer2.source.w e(z.a aVar, m1 m1Var, com.google.android.exoplayer2.upstream.b bVar, long j4, long j10) {
        com.google.android.exoplayer2.source.w i4 = m1Var.i(aVar, bVar, j4);
        return (j10 == i.f23649b || j10 == Long.MIN_VALUE) ? i4 : new com.google.android.exoplayer2.source.c(i4, true, 0L, j10);
    }

    private void f() {
        if (!r()) {
            return;
        }
        int i4 = 0;
        while (true) {
            com.google.android.exoplayer2.trackselection.p pVar = this.f23623n;
            if (i4 >= pVar.f26062a) {
                return;
            }
            boolean c10 = pVar.c(i4);
            com.google.android.exoplayer2.trackselection.g gVar = this.f23623n.f26064c[i4];
            if (c10 && gVar != null) {
                gVar.c();
            }
            i4++;
        }
    }

    private void g(com.google.android.exoplayer2.source.x0[] x0VarArr) {
        int i4 = 0;
        while (true) {
            g2[] g2VarArr = this.f23618i;
            if (i4 >= g2VarArr.length) {
                return;
            }
            if (g2VarArr[i4].getTrackType() == 7) {
                x0VarArr[i4] = null;
            }
            i4++;
        }
    }

    private void h() {
        if (!r()) {
            return;
        }
        int i4 = 0;
        while (true) {
            com.google.android.exoplayer2.trackselection.p pVar = this.f23623n;
            if (i4 >= pVar.f26062a) {
                return;
            }
            boolean c10 = pVar.c(i4);
            com.google.android.exoplayer2.trackselection.g gVar = this.f23623n.f26064c[i4];
            if (c10 && gVar != null) {
                gVar.n();
            }
            i4++;
        }
    }

    private boolean r() {
        return this.f23621l == null;
    }

    private static void u(long j4, m1 m1Var, com.google.android.exoplayer2.source.w wVar) {
        try {
            if (j4 != i.f23649b && j4 != Long.MIN_VALUE) {
                m1Var.B(((com.google.android.exoplayer2.source.c) wVar).f24751a);
            } else {
                m1Var.B(wVar);
            }
        } catch (RuntimeException e4) {
            com.google.android.exoplayer2.util.w.e(f23609p, "Period release failed.", e4);
        }
    }

    public long a(com.google.android.exoplayer2.trackselection.p pVar, long j4, boolean z9) {
        return b(pVar, j4, z9, new boolean[this.f23618i.length]);
    }

    public long b(com.google.android.exoplayer2.trackselection.p pVar, long j4, boolean z9, boolean[] zArr) {
        int i4 = 0;
        while (true) {
            boolean z10 = true;
            if (i4 >= pVar.f26062a) {
                break;
            }
            boolean[] zArr2 = this.f23617h;
            if (z9 || !pVar.b(this.f23623n, i4)) {
                z10 = false;
            }
            zArr2[i4] = z10;
            i4++;
        }
        g(this.f23612c);
        f();
        this.f23623n = pVar;
        h();
        long o9 = this.f23610a.o(pVar.f26064c, this.f23617h, this.f23612c, zArr, j4);
        c(this.f23612c);
        this.f23614e = false;
        int i10 = 0;
        while (true) {
            com.google.android.exoplayer2.source.x0[] x0VarArr = this.f23612c;
            if (i10 >= x0VarArr.length) {
                return o9;
            }
            if (x0VarArr[i10] != null) {
                com.google.android.exoplayer2.util.a.i(pVar.c(i10));
                if (this.f23618i[i10].getTrackType() != 7) {
                    this.f23614e = true;
                }
            } else {
                com.google.android.exoplayer2.util.a.i(pVar.f26064c[i10] == null);
            }
            i10++;
        }
    }

    public void d(long j4) {
        com.google.android.exoplayer2.util.a.i(r());
        this.f23610a.e(y(j4));
    }

    public long i() {
        if (!this.f23613d) {
            return this.f23615f.f23636b;
        }
        long g4 = this.f23614e ? this.f23610a.g() : Long.MIN_VALUE;
        return g4 == Long.MIN_VALUE ? this.f23615f.f23639e : g4;
    }

    @Nullable
    public g1 j() {
        return this.f23621l;
    }

    public long k() {
        if (this.f23613d) {
            return this.f23610a.c();
        }
        return 0L;
    }

    public long l() {
        return this.f23624o;
    }

    public long m() {
        return this.f23615f.f23636b + this.f23624o;
    }

    public TrackGroupArray n() {
        return this.f23622m;
    }

    public com.google.android.exoplayer2.trackselection.p o() {
        return this.f23623n;
    }

    public void p(float f10, s2 s2Var) throws ExoPlaybackException {
        this.f23613d = true;
        this.f23622m = this.f23610a.u();
        com.google.android.exoplayer2.trackselection.p v9 = v(f10, s2Var);
        h1 h1Var = this.f23615f;
        long j4 = h1Var.f23636b;
        long j10 = h1Var.f23639e;
        if (j10 != i.f23649b && j4 >= j10) {
            j4 = Math.max(0L, j10 - 1);
        }
        long a10 = a(v9, j4, false);
        long j11 = this.f23624o;
        h1 h1Var2 = this.f23615f;
        this.f23624o = j11 + (h1Var2.f23636b - a10);
        this.f23615f = h1Var2.b(a10);
    }

    public boolean q() {
        return this.f23613d && (!this.f23614e || this.f23610a.g() == Long.MIN_VALUE);
    }

    public void s(long j4) {
        com.google.android.exoplayer2.util.a.i(r());
        if (this.f23613d) {
            this.f23610a.h(y(j4));
        }
    }

    public void t() {
        f();
        u(this.f23615f.f23638d, this.f23620k, this.f23610a);
    }

    public com.google.android.exoplayer2.trackselection.p v(float f10, s2 s2Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.trackselection.g[] gVarArr;
        com.google.android.exoplayer2.trackselection.p e4 = this.f23619j.e(this.f23618i, n(), this.f23615f.f23635a, s2Var);
        for (com.google.android.exoplayer2.trackselection.g gVar : e4.f26064c) {
            if (gVar != null) {
                gVar.h(f10);
            }
        }
        return e4;
    }

    public void w(@Nullable g1 g1Var) {
        if (g1Var == this.f23621l) {
            return;
        }
        f();
        this.f23621l = g1Var;
        h();
    }

    public void x(long j4) {
        this.f23624o = j4;
    }

    public long y(long j4) {
        return j4 - l();
    }

    public long z(long j4) {
        return j4 + l();
    }
}
