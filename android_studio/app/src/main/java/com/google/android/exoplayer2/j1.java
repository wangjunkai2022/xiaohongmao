package com.google.android.exoplayer2;

import android.os.Handler;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.z;
import com.google.common.collect.ImmutableList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaPeriodQueue.java */
/* loaded from: classes2.dex */
public final class j1 {

    /* renamed from: n  reason: collision with root package name */
    private static final int f23754n = 100;

    /* renamed from: a  reason: collision with root package name */
    private final s2.b f23755a = new s2.b();

    /* renamed from: b  reason: collision with root package name */
    private final s2.d f23756b = new s2.d();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.analytics.h1 f23757c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f23758d;

    /* renamed from: e  reason: collision with root package name */
    private long f23759e;

    /* renamed from: f  reason: collision with root package name */
    private int f23760f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f23761g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private g1 f23762h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private g1 f23763i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private g1 f23764j;

    /* renamed from: k  reason: collision with root package name */
    private int f23765k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Object f23766l;

    /* renamed from: m  reason: collision with root package name */
    private long f23767m;

    public j1(@Nullable com.google.android.exoplayer2.analytics.h1 h1Var, Handler handler) {
        this.f23757c = h1Var;
        this.f23758d = handler;
    }

    private static z.a A(s2 s2Var, Object obj, long j4, long j10, s2.b bVar) {
        s2Var.l(obj, bVar);
        int h4 = bVar.h(j4);
        if (h4 == -1) {
            return new z.a(obj, j10, bVar.g(j4));
        }
        return new z.a(obj, h4, bVar.n(h4), j10);
    }

    private long B(s2 s2Var, Object obj) {
        int f10;
        int i4 = s2Var.l(obj, this.f23755a).f24555c;
        Object obj2 = this.f23766l;
        if (obj2 != null && (f10 = s2Var.f(obj2)) != -1 && s2Var.j(f10, this.f23755a).f24555c == i4) {
            return this.f23767m;
        }
        for (g1 g1Var = this.f23762h; g1Var != null; g1Var = g1Var.j()) {
            if (g1Var.f23611b.equals(obj)) {
                return g1Var.f23615f.f23635a.f25224d;
            }
        }
        for (g1 g1Var2 = this.f23762h; g1Var2 != null; g1Var2 = g1Var2.j()) {
            int f11 = s2Var.f(g1Var2.f23611b);
            if (f11 != -1 && s2Var.j(f11, this.f23755a).f24555c == i4) {
                return g1Var2.f23615f.f23635a.f25224d;
            }
        }
        long j4 = this.f23759e;
        this.f23759e = 1 + j4;
        if (this.f23762h == null) {
            this.f23766l = obj;
            this.f23767m = j4;
        }
        return j4;
    }

    private boolean D(s2 s2Var) {
        g1 g1Var = this.f23762h;
        if (g1Var == null) {
            return true;
        }
        int f10 = s2Var.f(g1Var.f23611b);
        while (true) {
            f10 = s2Var.h(f10, this.f23755a, this.f23756b, this.f23760f, this.f23761g);
            while (g1Var.j() != null && !g1Var.f23615f.f23640f) {
                g1Var = g1Var.j();
            }
            g1 j4 = g1Var.j();
            if (f10 == -1 || j4 == null || s2Var.f(j4.f23611b) != f10) {
                break;
            }
            g1Var = j4;
        }
        boolean y9 = y(g1Var);
        g1Var.f23615f = q(s2Var, g1Var.f23615f);
        return !y9;
    }

    private boolean d(long j4, long j10) {
        return j4 == i.f23649b || j4 == j10;
    }

    private boolean e(h1 h1Var, h1 h1Var2) {
        return h1Var.f23636b == h1Var2.f23636b && h1Var.f23635a.equals(h1Var2.f23635a);
    }

    @Nullable
    private h1 h(r1 r1Var) {
        return k(r1Var.f24518a, r1Var.f24519b, r1Var.f24520c, r1Var.f24536s);
    }

    @Nullable
    private h1 i(s2 s2Var, g1 g1Var, long j4) {
        long j10;
        h1 h1Var = g1Var.f23615f;
        long l10 = (g1Var.l() + h1Var.f23639e) - j4;
        if (h1Var.f23640f) {
            long j11 = 0;
            int h4 = s2Var.h(s2Var.f(h1Var.f23635a.f25221a), this.f23755a, this.f23756b, this.f23760f, this.f23761g);
            if (h4 == -1) {
                return null;
            }
            int i4 = s2Var.k(h4, this.f23755a, true).f24555c;
            Object obj = this.f23755a.f24554b;
            long j12 = h1Var.f23635a.f25224d;
            if (s2Var.r(i4, this.f23756b).f24587o == h4) {
                Pair<Object, Long> o9 = s2Var.o(this.f23756b, this.f23755a, i4, i.f23649b, Math.max(0L, l10));
                if (o9 == null) {
                    return null;
                }
                obj = o9.first;
                long longValue = ((Long) o9.second).longValue();
                g1 j13 = g1Var.j();
                if (j13 != null && j13.f23611b.equals(obj)) {
                    j12 = j13.f23615f.f23635a.f25224d;
                } else {
                    j12 = this.f23759e;
                    this.f23759e = 1 + j12;
                }
                j10 = longValue;
                j11 = i.f23649b;
            } else {
                j10 = 0;
            }
            return k(s2Var, A(s2Var, obj, j10, j12, this.f23755a), j11, j10);
        }
        z.a aVar = h1Var.f23635a;
        s2Var.l(aVar.f25221a, this.f23755a);
        if (aVar.c()) {
            int i10 = aVar.f25222b;
            int d4 = this.f23755a.d(i10);
            if (d4 == -1) {
                return null;
            }
            int o10 = this.f23755a.o(i10, aVar.f25223c);
            if (o10 < d4) {
                return l(s2Var, aVar.f25221a, i10, o10, h1Var.f23637c, aVar.f25224d);
            }
            long j14 = h1Var.f23637c;
            if (j14 == i.f23649b) {
                s2.d dVar = this.f23756b;
                s2.b bVar = this.f23755a;
                Pair<Object, Long> o11 = s2Var.o(dVar, bVar, bVar.f24555c, i.f23649b, Math.max(0L, l10));
                if (o11 == null) {
                    return null;
                }
                j14 = ((Long) o11.second).longValue();
            }
            return m(s2Var, aVar.f25221a, j14, h1Var.f23637c, aVar.f25224d);
        }
        int n9 = this.f23755a.n(aVar.f25225e);
        if (n9 == this.f23755a.d(aVar.f25225e)) {
            Object obj2 = aVar.f25221a;
            long j15 = h1Var.f23639e;
            return m(s2Var, obj2, j15, j15, aVar.f25224d);
        }
        return l(s2Var, aVar.f25221a, aVar.f25225e, n9, h1Var.f23639e, aVar.f25224d);
    }

    @Nullable
    private h1 k(s2 s2Var, z.a aVar, long j4, long j10) {
        s2Var.l(aVar.f25221a, this.f23755a);
        if (aVar.c()) {
            return l(s2Var, aVar.f25221a, aVar.f25222b, aVar.f25223c, j4, aVar.f25224d);
        }
        return m(s2Var, aVar.f25221a, j10, j4, aVar.f25224d);
    }

    private h1 l(s2 s2Var, Object obj, int i4, int i10, long j4, long j10) {
        z.a aVar = new z.a(obj, i4, i10, j10);
        long e4 = s2Var.l(aVar.f25221a, this.f23755a).e(aVar.f25222b, aVar.f25223c);
        long j11 = i10 == this.f23755a.n(i4) ? this.f23755a.j() : 0L;
        return new h1(aVar, (e4 == i.f23649b || j11 < e4) ? j11 : Math.max(0L, e4 - 1), j4, i.f23649b, e4, false, false, false);
    }

    private h1 m(s2 s2Var, Object obj, long j4, long j10, long j11) {
        long j12 = j4;
        s2Var.l(obj, this.f23755a);
        int g4 = this.f23755a.g(j12);
        z.a aVar = new z.a(obj, j11, g4);
        boolean r9 = r(aVar);
        boolean t9 = t(s2Var, aVar);
        boolean s9 = s(s2Var, aVar, r9);
        long i4 = g4 != -1 ? this.f23755a.i(g4) : -9223372036854775807L;
        long j13 = (i4 == i.f23649b || i4 == Long.MIN_VALUE) ? this.f23755a.f24556d : i4;
        if (j13 != i.f23649b && j12 >= j13) {
            j12 = Math.max(0L, j13 - 1);
        }
        return new h1(aVar, j12, j10, i4, j13, r9, t9, s9);
    }

    private boolean r(z.a aVar) {
        return !aVar.c() && aVar.f25225e == -1;
    }

    private boolean s(s2 s2Var, z.a aVar, boolean z9) {
        int f10 = s2Var.f(aVar.f25221a);
        return !s2Var.r(s2Var.j(f10, this.f23755a).f24555c, this.f23756b).f24581i && s2Var.w(f10, this.f23755a, this.f23756b, this.f23760f, this.f23761g) && z9;
    }

    private boolean t(s2 s2Var, z.a aVar) {
        if (r(aVar)) {
            return s2Var.r(s2Var.l(aVar.f25221a, this.f23755a).f24555c, this.f23756b).f24588p == s2Var.f(aVar.f25221a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(ImmutableList.a aVar, z.a aVar2) {
        this.f23757c.R2(aVar.e(), aVar2);
    }

    private void w() {
        if (this.f23757c != null) {
            final ImmutableList.a builder = ImmutableList.builder();
            for (g1 g1Var = this.f23762h; g1Var != null; g1Var = g1Var.j()) {
                builder.g(g1Var.f23615f.f23635a);
            }
            g1 g1Var2 = this.f23763i;
            final z.a aVar = g1Var2 == null ? null : g1Var2.f23615f.f23635a;
            this.f23758d.post(new Runnable() { // from class: com.google.android.exoplayer2.i1
                @Override // java.lang.Runnable
                public final void run() {
                    j1.this.v(builder, aVar);
                }
            });
        }
    }

    public boolean C() {
        g1 g1Var = this.f23764j;
        return g1Var == null || (!g1Var.f23615f.f23642h && g1Var.q() && this.f23764j.f23615f.f23639e != i.f23649b && this.f23765k < 100);
    }

    public boolean E(s2 s2Var, long j4, long j10) {
        h1 h1Var;
        g1 g1Var = this.f23762h;
        g1 g1Var2 = null;
        while (g1Var != null) {
            h1 h1Var2 = g1Var.f23615f;
            if (g1Var2 == null) {
                h1Var = q(s2Var, h1Var2);
            } else {
                h1 i4 = i(s2Var, g1Var2, j4);
                if (i4 == null) {
                    return !y(g1Var2);
                }
                if (!e(h1Var2, i4)) {
                    return !y(g1Var2);
                }
                h1Var = i4;
            }
            g1Var.f23615f = h1Var.a(h1Var2.f23637c);
            if (!d(h1Var2.f23639e, h1Var.f23639e)) {
                long j11 = h1Var.f23639e;
                return (y(g1Var) || (g1Var == this.f23763i && ((j10 > Long.MIN_VALUE ? 1 : (j10 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j10 > ((j11 > i.f23649b ? 1 : (j11 == i.f23649b ? 0 : -1)) == 0 ? Long.MAX_VALUE : g1Var.z(j11)) ? 1 : (j10 == ((j11 > i.f23649b ? 1 : (j11 == i.f23649b ? 0 : -1)) == 0 ? Long.MAX_VALUE : g1Var.z(j11)) ? 0 : -1)) >= 0))) ? false : true;
            }
            g1Var2 = g1Var;
            g1Var = g1Var.j();
        }
        return true;
    }

    public boolean F(s2 s2Var, int i4) {
        this.f23760f = i4;
        return D(s2Var);
    }

    public boolean G(s2 s2Var, boolean z9) {
        this.f23761g = z9;
        return D(s2Var);
    }

    @Nullable
    public g1 b() {
        g1 g1Var = this.f23762h;
        if (g1Var == null) {
            return null;
        }
        if (g1Var == this.f23763i) {
            this.f23763i = g1Var.j();
        }
        this.f23762h.t();
        int i4 = this.f23765k - 1;
        this.f23765k = i4;
        if (i4 == 0) {
            this.f23764j = null;
            g1 g1Var2 = this.f23762h;
            this.f23766l = g1Var2.f23611b;
            this.f23767m = g1Var2.f23615f.f23635a.f25224d;
        }
        this.f23762h = this.f23762h.j();
        w();
        return this.f23762h;
    }

    public g1 c() {
        g1 g1Var = this.f23763i;
        com.google.android.exoplayer2.util.a.i((g1Var == null || g1Var.j() == null) ? false : true);
        this.f23763i = this.f23763i.j();
        w();
        return this.f23763i;
    }

    public void f() {
        if (this.f23765k == 0) {
            return;
        }
        g1 g1Var = (g1) com.google.android.exoplayer2.util.a.k(this.f23762h);
        this.f23766l = g1Var.f23611b;
        this.f23767m = g1Var.f23615f.f23635a.f25224d;
        while (g1Var != null) {
            g1Var.t();
            g1Var = g1Var.j();
        }
        this.f23762h = null;
        this.f23764j = null;
        this.f23763i = null;
        this.f23765k = 0;
        w();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r1 != com.google.android.exoplayer2.i.f23649b) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.exoplayer2.g1 g(com.google.android.exoplayer2.g2[] r12, com.google.android.exoplayer2.trackselection.o r13, com.google.android.exoplayer2.upstream.b r14, com.google.android.exoplayer2.m1 r15, com.google.android.exoplayer2.h1 r16, com.google.android.exoplayer2.trackselection.p r17) {
        /*
            r11 = this;
            r0 = r11
            r8 = r16
            com.google.android.exoplayer2.g1 r1 = r0.f23764j
            if (r1 != 0) goto L1e
            com.google.android.exoplayer2.source.z$a r1 = r8.f23635a
            boolean r1 = r1.c()
            if (r1 == 0) goto L1b
            long r1 = r8.f23637c
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L1b
            goto L2c
        L1b:
            r1 = 0
            goto L2c
        L1e:
            long r1 = r1.l()
            com.google.android.exoplayer2.g1 r3 = r0.f23764j
            com.google.android.exoplayer2.h1 r3 = r3.f23615f
            long r3 = r3.f23639e
            long r1 = r1 + r3
            long r3 = r8.f23636b
            long r1 = r1 - r3
        L2c:
            r3 = r1
            com.google.android.exoplayer2.g1 r10 = new com.google.android.exoplayer2.g1
            r1 = r10
            r2 = r12
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r9 = r17
            r1.<init>(r2, r3, r5, r6, r7, r8, r9)
            com.google.android.exoplayer2.g1 r1 = r0.f23764j
            if (r1 == 0) goto L43
            r1.w(r10)
            goto L47
        L43:
            r0.f23762h = r10
            r0.f23763i = r10
        L47:
            r1 = 0
            r0.f23766l = r1
            r0.f23764j = r10
            int r1 = r0.f23765k
            int r1 = r1 + 1
            r0.f23765k = r1
            r11.w()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.j1.g(com.google.android.exoplayer2.g2[], com.google.android.exoplayer2.trackselection.o, com.google.android.exoplayer2.upstream.b, com.google.android.exoplayer2.m1, com.google.android.exoplayer2.h1, com.google.android.exoplayer2.trackselection.p):com.google.android.exoplayer2.g1");
    }

    @Nullable
    public g1 j() {
        return this.f23764j;
    }

    @Nullable
    public h1 n(long j4, r1 r1Var) {
        g1 g1Var = this.f23764j;
        if (g1Var == null) {
            return h(r1Var);
        }
        return i(r1Var.f24518a, g1Var, j4);
    }

    @Nullable
    public g1 o() {
        return this.f23762h;
    }

    @Nullable
    public g1 p() {
        return this.f23763i;
    }

    public h1 q(s2 s2Var, h1 h1Var) {
        long j4;
        z.a aVar = h1Var.f23635a;
        boolean r9 = r(aVar);
        boolean t9 = t(s2Var, aVar);
        boolean s9 = s(s2Var, aVar, r9);
        s2Var.l(h1Var.f23635a.f25221a, this.f23755a);
        if (aVar.c()) {
            j4 = this.f23755a.e(aVar.f25222b, aVar.f25223c);
        } else {
            j4 = h1Var.f23638d;
            if (j4 == i.f23649b || j4 == Long.MIN_VALUE) {
                j4 = this.f23755a.m();
            }
        }
        return new h1(aVar, h1Var.f23636b, h1Var.f23637c, h1Var.f23638d, j4, r9, t9, s9);
    }

    public boolean u(com.google.android.exoplayer2.source.w wVar) {
        g1 g1Var = this.f23764j;
        return g1Var != null && g1Var.f23610a == wVar;
    }

    public void x(long j4) {
        g1 g1Var = this.f23764j;
        if (g1Var != null) {
            g1Var.s(j4);
        }
    }

    public boolean y(g1 g1Var) {
        boolean z9 = false;
        com.google.android.exoplayer2.util.a.i(g1Var != null);
        if (g1Var.equals(this.f23764j)) {
            return false;
        }
        this.f23764j = g1Var;
        while (g1Var.j() != null) {
            g1Var = g1Var.j();
            if (g1Var == this.f23763i) {
                this.f23763i = this.f23762h;
                z9 = true;
            }
            g1Var.t();
            this.f23765k--;
        }
        this.f23764j.w(null);
        w();
        return z9;
    }

    public z.a z(s2 s2Var, Object obj, long j4) {
        return A(s2Var, obj, j4, B(s2Var, obj), this.f23755a);
    }
}
