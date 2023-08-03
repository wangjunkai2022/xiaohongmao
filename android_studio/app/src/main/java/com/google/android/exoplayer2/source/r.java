package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.z;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: MaskingMediaSource.java */
/* loaded from: classes2.dex */
public final class r extends e<Void> {

    /* renamed from: j  reason: collision with root package name */
    private final z f25150j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f25151k;

    /* renamed from: l  reason: collision with root package name */
    private final s2.d f25152l;

    /* renamed from: m  reason: collision with root package name */
    private final s2.b f25153m;

    /* renamed from: n  reason: collision with root package name */
    private a f25154n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private q f25155o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f25156p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f25157q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f25158r;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MaskingMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class a extends m {

        /* renamed from: i  reason: collision with root package name */
        public static final Object f25159i = new Object();
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private final Object f25160g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private final Object f25161h;

        private a(s2 s2Var, @Nullable Object obj, @Nullable Object obj2) {
            super(s2Var);
            this.f25160g = obj;
            this.f25161h = obj2;
        }

        public static a A(com.google.android.exoplayer2.b1 b1Var) {
            return new a(new b(b1Var), s2.d.f24564r, f25159i);
        }

        public static a B(s2 s2Var, @Nullable Object obj, @Nullable Object obj2) {
            return new a(s2Var, obj, obj2);
        }

        public s2 C() {
            return this.f25005f;
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public int f(Object obj) {
            Object obj2;
            s2 s2Var = this.f25005f;
            if (f25159i.equals(obj) && (obj2 = this.f25161h) != null) {
                obj = obj2;
            }
            return s2Var.f(obj);
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public s2.b k(int i4, s2.b bVar, boolean z9) {
            this.f25005f.k(i4, bVar, z9);
            if (com.google.android.exoplayer2.util.z0.c(bVar.f24554b, this.f25161h) && z9) {
                bVar.f24554b = f25159i;
            }
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public Object q(int i4) {
            Object q9 = this.f25005f.q(i4);
            return com.google.android.exoplayer2.util.z0.c(q9, this.f25161h) ? f25159i : q9;
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public s2.d s(int i4, s2.d dVar, long j4) {
            this.f25005f.s(i4, dVar, j4);
            if (com.google.android.exoplayer2.util.z0.c(dVar.f24573a, this.f25160g)) {
                dVar.f24573a = s2.d.f24564r;
            }
            return dVar;
        }

        public a z(s2 s2Var) {
            return new a(s2Var, this.f25160g, this.f25161h);
        }
    }

    /* compiled from: MaskingMediaSource.java */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static final class b extends s2 {

        /* renamed from: f  reason: collision with root package name */
        private final com.google.android.exoplayer2.b1 f25162f;

        public b(com.google.android.exoplayer2.b1 b1Var) {
            this.f25162f = b1Var;
        }

        @Override // com.google.android.exoplayer2.s2
        public int f(Object obj) {
            return obj == a.f25159i ? 0 : -1;
        }

        @Override // com.google.android.exoplayer2.s2
        public s2.b k(int i4, s2.b bVar, boolean z9) {
            bVar.u(z9 ? 0 : null, z9 ? a.f25159i : null, 0, com.google.android.exoplayer2.i.f23649b, 0L, com.google.android.exoplayer2.source.ads.c.f24696l, true);
            return bVar;
        }

        @Override // com.google.android.exoplayer2.s2
        public int m() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.s2
        public Object q(int i4) {
            return a.f25159i;
        }

        @Override // com.google.android.exoplayer2.s2
        public s2.d s(int i4, s2.d dVar, long j4) {
            dVar.l(s2.d.f24564r, this.f25162f, null, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b, false, true, null, 0L, com.google.android.exoplayer2.i.f23649b, 0, 0, 0L);
            dVar.f24584l = true;
            return dVar;
        }

        @Override // com.google.android.exoplayer2.s2
        public int u() {
            return 1;
        }
    }

    public r(z zVar, boolean z9) {
        this.f25150j = zVar;
        this.f25151k = z9 && zVar.o();
        this.f25152l = new s2.d();
        this.f25153m = new s2.b();
        s2 p9 = zVar.p();
        if (p9 != null) {
            this.f25154n = a.B(p9, null, null);
            this.f25158r = true;
            return;
        }
        this.f25154n = a.A(zVar.e());
    }

    private Object M(Object obj) {
        return (this.f25154n.f25161h == null || !this.f25154n.f25161h.equals(obj)) ? obj : a.f25159i;
    }

    private Object N(Object obj) {
        return (this.f25154n.f25161h == null || !obj.equals(a.f25159i)) ? obj : this.f25154n.f25161h;
    }

    @RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    private void R(long j4) {
        q qVar = this.f25155o;
        int f10 = this.f25154n.f(qVar.f25120a.f25221a);
        if (f10 == -1) {
            return;
        }
        long j10 = this.f25154n.j(f10, this.f25153m).f24556d;
        if (j10 != com.google.android.exoplayer2.i.f23649b && j4 >= j10) {
            j4 = Math.max(0L, j10 - 1);
        }
        qVar.t(j4);
    }

    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    public void A() {
        this.f25157q = false;
        this.f25156p = false;
        super.A();
    }

    @Override // com.google.android.exoplayer2.source.z
    /* renamed from: L */
    public q a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        q qVar = new q(aVar, bVar, j4);
        qVar.x(this.f25150j);
        if (this.f25157q) {
            qVar.a(aVar.a(N(aVar.f25221a)));
        } else {
            this.f25155o = qVar;
            if (!this.f25156p) {
                this.f25156p = true;
                J(null, this.f25150j);
            }
        }
        return qVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    @Nullable
    /* renamed from: O */
    public z.a E(Void r12, z.a aVar) {
        return aVar.a(M(aVar.f25221a));
    }

    public s2 P() {
        return this.f25154n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.exoplayer2.source.e
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void I(java.lang.Void r13, com.google.android.exoplayer2.source.z r14, com.google.android.exoplayer2.s2 r15) {
        /*
            r12 = this;
            boolean r13 = r12.f25157q
            if (r13 == 0) goto L19
            com.google.android.exoplayer2.source.r$a r13 = r12.f25154n
            com.google.android.exoplayer2.source.r$a r13 = r13.z(r15)
            r12.f25154n = r13
            com.google.android.exoplayer2.source.q r13 = r12.f25155o
            if (r13 == 0) goto Lae
            long r13 = r13.k()
            r12.R(r13)
            goto Lae
        L19:
            boolean r13 = r15.v()
            if (r13 == 0) goto L36
            boolean r13 = r12.f25158r
            if (r13 == 0) goto L2a
            com.google.android.exoplayer2.source.r$a r13 = r12.f25154n
            com.google.android.exoplayer2.source.r$a r13 = r13.z(r15)
            goto L32
        L2a:
            java.lang.Object r13 = com.google.android.exoplayer2.s2.d.f24564r
            java.lang.Object r14 = com.google.android.exoplayer2.source.r.a.f25159i
            com.google.android.exoplayer2.source.r$a r13 = com.google.android.exoplayer2.source.r.a.B(r15, r13, r14)
        L32:
            r12.f25154n = r13
            goto Lae
        L36:
            com.google.android.exoplayer2.s2$d r13 = r12.f25152l
            r14 = 0
            r15.r(r14, r13)
            com.google.android.exoplayer2.s2$d r13 = r12.f25152l
            long r0 = r13.e()
            com.google.android.exoplayer2.s2$d r13 = r12.f25152l
            java.lang.Object r13 = r13.f24573a
            com.google.android.exoplayer2.source.q r2 = r12.f25155o
            if (r2 == 0) goto L74
            long r2 = r2.p()
            com.google.android.exoplayer2.source.r$a r4 = r12.f25154n
            com.google.android.exoplayer2.source.q r5 = r12.f25155o
            com.google.android.exoplayer2.source.z$a r5 = r5.f25120a
            java.lang.Object r5 = r5.f25221a
            com.google.android.exoplayer2.s2$b r6 = r12.f25153m
            r4.l(r5, r6)
            com.google.android.exoplayer2.s2$b r4 = r12.f25153m
            long r4 = r4.q()
            long r4 = r4 + r2
            com.google.android.exoplayer2.source.r$a r2 = r12.f25154n
            com.google.android.exoplayer2.s2$d r3 = r12.f25152l
            com.google.android.exoplayer2.s2$d r14 = r2.r(r14, r3)
            long r2 = r14.e()
            int r14 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r14 == 0) goto L74
            r10 = r4
            goto L75
        L74:
            r10 = r0
        L75:
            com.google.android.exoplayer2.s2$d r7 = r12.f25152l
            com.google.android.exoplayer2.s2$b r8 = r12.f25153m
            r9 = 0
            r6 = r15
            android.util.Pair r14 = r6.n(r7, r8, r9, r10)
            java.lang.Object r0 = r14.first
            java.lang.Object r14 = r14.second
            java.lang.Long r14 = (java.lang.Long) r14
            long r1 = r14.longValue()
            boolean r14 = r12.f25158r
            if (r14 == 0) goto L94
            com.google.android.exoplayer2.source.r$a r13 = r12.f25154n
            com.google.android.exoplayer2.source.r$a r13 = r13.z(r15)
            goto L98
        L94:
            com.google.android.exoplayer2.source.r$a r13 = com.google.android.exoplayer2.source.r.a.B(r15, r13, r0)
        L98:
            r12.f25154n = r13
            com.google.android.exoplayer2.source.q r13 = r12.f25155o
            if (r13 == 0) goto Lae
            r12.R(r1)
            com.google.android.exoplayer2.source.z$a r13 = r13.f25120a
            java.lang.Object r14 = r13.f25221a
            java.lang.Object r14 = r12.N(r14)
            com.google.android.exoplayer2.source.z$a r13 = r13.a(r14)
            goto Laf
        Lae:
            r13 = 0
        Laf:
            r14 = 1
            r12.f25158r = r14
            r12.f25157q = r14
            com.google.android.exoplayer2.source.r$a r14 = r12.f25154n
            r12.z(r14)
            if (r13 == 0) goto Lc6
            com.google.android.exoplayer2.source.q r14 = r12.f25155o
            java.lang.Object r14 = com.google.android.exoplayer2.util.a.g(r14)
            com.google.android.exoplayer2.source.q r14 = (com.google.android.exoplayer2.source.q) r14
            r14.a(r13)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.r.I(java.lang.Void, com.google.android.exoplayer2.source.z, com.google.android.exoplayer2.s2):void");
    }

    @Override // com.google.android.exoplayer2.source.z
    public com.google.android.exoplayer2.b1 e() {
        return this.f25150j.e();
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    @Nullable
    @Deprecated
    public Object f() {
        return this.f25150j.f();
    }

    @Override // com.google.android.exoplayer2.source.z
    public void g(w wVar) {
        ((q) wVar).w();
        if (wVar == this.f25155o) {
            this.f25155o = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.z
    public void n() {
    }

    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    public void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        super.y(p0Var);
        if (this.f25151k) {
            return;
        }
        this.f25156p = true;
        J(null, this.f25150j);
    }
}
