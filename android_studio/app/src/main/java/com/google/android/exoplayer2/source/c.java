package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.j2;
import com.google.android.exoplayer2.source.w;
import java.io.IOException;
import java.util.List;

/* compiled from: ClippingMediaPeriod.java */
/* loaded from: classes2.dex */
public final class c implements w, w.a {

    /* renamed from: a  reason: collision with root package name */
    public final w f24751a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private w.a f24752b;

    /* renamed from: c  reason: collision with root package name */
    private a[] f24753c = new a[0];

    /* renamed from: d  reason: collision with root package name */
    private long f24754d;

    /* renamed from: e  reason: collision with root package name */
    long f24755e;

    /* renamed from: f  reason: collision with root package name */
    long f24756f;

    /* compiled from: ClippingMediaPeriod.java */
    /* loaded from: classes2.dex */
    private final class a implements x0 {

        /* renamed from: a  reason: collision with root package name */
        public final x0 f24757a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f24758b;

        public a(x0 x0Var) {
            this.f24757a = x0Var;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public void a() throws IOException {
            this.f24757a.a();
        }

        public void b() {
            this.f24758b = false;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public boolean f() {
            return !c.this.k() && this.f24757a.f();
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int q(com.google.android.exoplayer2.v0 v0Var, DecoderInputBuffer decoderInputBuffer, int i4) {
            if (c.this.k()) {
                return -3;
            }
            if (this.f24758b) {
                decoderInputBuffer.n(4);
                return -4;
            }
            int q9 = this.f24757a.q(v0Var, decoderInputBuffer, i4);
            if (q9 == -5) {
                Format format = (Format) com.google.android.exoplayer2.util.a.g(v0Var.f27763b);
                int i10 = format.encoderDelay;
                if (i10 != 0 || format.encoderPadding != 0) {
                    c cVar = c.this;
                    if (cVar.f24755e != 0) {
                        i10 = 0;
                    }
                    v0Var.f27763b = format.buildUpon().M(i10).N(cVar.f24756f == Long.MIN_VALUE ? format.encoderPadding : 0).E();
                }
                return -5;
            }
            c cVar2 = c.this;
            long j4 = cVar2.f24756f;
            if (j4 == Long.MIN_VALUE || ((q9 != -4 || decoderInputBuffer.f21574e < j4) && !(q9 == -3 && cVar2.g() == Long.MIN_VALUE && !decoderInputBuffer.f21573d))) {
                return q9;
            }
            decoderInputBuffer.f();
            decoderInputBuffer.n(4);
            this.f24758b = true;
            return -4;
        }

        @Override // com.google.android.exoplayer2.source.x0
        public int t(long j4) {
            if (c.this.k()) {
                return -3;
            }
            return this.f24757a.t(j4);
        }
    }

    public c(w wVar, boolean z9, long j4, long j10) {
        this.f24751a = wVar;
        this.f24754d = z9 ? j4 : com.google.android.exoplayer2.i.f23649b;
        this.f24755e = j4;
        this.f24756f = j10;
    }

    private j2 a(long j4, j2 j2Var) {
        long u9 = com.google.android.exoplayer2.util.z0.u(j2Var.f23773a, 0L, j4 - this.f24755e);
        long j10 = j2Var.f23774b;
        long j11 = this.f24756f;
        long u10 = com.google.android.exoplayer2.util.z0.u(j10, 0L, j11 == Long.MIN_VALUE ? Long.MAX_VALUE : j11 - j4);
        return (u9 == j2Var.f23773a && u10 == j2Var.f23774b) ? j2Var : new j2(u9, u10);
    }

    private static boolean q(long j4, com.google.android.exoplayer2.trackselection.g[] gVarArr) {
        if (j4 != 0) {
            for (com.google.android.exoplayer2.trackselection.g gVar : gVarArr) {
                if (gVar != null) {
                    Format s9 = gVar.s();
                    if (!com.google.android.exoplayer2.util.a0.a(s9.sampleMimeType, s9.codecs)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public boolean b() {
        return this.f24751a.b();
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public long c() {
        long c10 = this.f24751a.c();
        if (c10 != Long.MIN_VALUE) {
            long j4 = this.f24756f;
            if (j4 == Long.MIN_VALUE || c10 < j4) {
                return c10;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.w
    public long d(long j4, j2 j2Var) {
        long j10 = this.f24755e;
        if (j4 == j10) {
            return j10;
        }
        return this.f24751a.d(j4, a(j4, j2Var));
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public boolean e(long j4) {
        return this.f24751a.e(j4);
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public long g() {
        long g4 = this.f24751a.g();
        if (g4 != Long.MIN_VALUE) {
            long j4 = this.f24756f;
            if (j4 == Long.MIN_VALUE || g4 < j4) {
                return g4;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.w, com.google.android.exoplayer2.source.y0
    public void h(long j4) {
        this.f24751a.h(j4);
    }

    @Override // com.google.android.exoplayer2.source.w.a
    public void i(w wVar) {
        ((w.a) com.google.android.exoplayer2.util.a.g(this.f24752b)).i(this);
    }

    @Override // com.google.android.exoplayer2.source.w
    public /* synthetic */ List j(List list) {
        return v.a(this, list);
    }

    boolean k() {
        return this.f24754d != com.google.android.exoplayer2.i.f23649b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        if (r0 > r7) goto L18;
     */
    @Override // com.google.android.exoplayer2.source.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long l(long r7) {
        /*
            r6 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6.f24754d = r0
            com.google.android.exoplayer2.source.c$a[] r0 = r6.f24753c
            int r1 = r0.length
            r2 = 0
            r3 = 0
        Lc:
            if (r3 >= r1) goto L18
            r4 = r0[r3]
            if (r4 == 0) goto L15
            r4.b()
        L15:
            int r3 = r3 + 1
            goto Lc
        L18:
            com.google.android.exoplayer2.source.w r0 = r6.f24751a
            long r0 = r0.l(r7)
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 == 0) goto L34
            long r7 = r6.f24755e
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 < 0) goto L35
            long r7 = r6.f24756f
            r3 = -9223372036854775808
            int r5 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r5 == 0) goto L34
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 > 0) goto L35
        L34:
            r2 = 1
        L35:
            com.google.android.exoplayer2.util.a.i(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.c.l(long):long");
    }

    @Override // com.google.android.exoplayer2.source.w
    public long m() {
        if (k()) {
            long j4 = this.f24754d;
            this.f24754d = com.google.android.exoplayer2.i.f23649b;
            long m9 = m();
            return m9 != com.google.android.exoplayer2.i.f23649b ? m9 : j4;
        }
        long m10 = this.f24751a.m();
        if (m10 == com.google.android.exoplayer2.i.f23649b) {
            return com.google.android.exoplayer2.i.f23649b;
        }
        boolean z9 = true;
        com.google.android.exoplayer2.util.a.i(m10 >= this.f24755e);
        long j10 = this.f24756f;
        if (j10 != Long.MIN_VALUE && m10 > j10) {
            z9 = false;
        }
        com.google.android.exoplayer2.util.a.i(z9);
        return m10;
    }

    @Override // com.google.android.exoplayer2.source.w
    public void n(w.a aVar, long j4) {
        this.f24752b = aVar;
        this.f24751a.n(this, j4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
        if (r2 > r4) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
    @Override // com.google.android.exoplayer2.source.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long o(com.google.android.exoplayer2.trackselection.g[] r13, boolean[] r14, com.google.android.exoplayer2.source.x0[] r15, boolean[] r16, long r17) {
        /*
            r12 = this;
            r0 = r12
            r1 = r15
            int r2 = r1.length
            com.google.android.exoplayer2.source.c$a[] r2 = new com.google.android.exoplayer2.source.c.a[r2]
            r0.f24753c = r2
            int r2 = r1.length
            com.google.android.exoplayer2.source.x0[] r9 = new com.google.android.exoplayer2.source.x0[r2]
            r10 = 0
            r2 = 0
        Lc:
            int r3 = r1.length
            r11 = 0
            if (r2 >= r3) goto L25
            com.google.android.exoplayer2.source.c$a[] r3 = r0.f24753c
            r4 = r1[r2]
            com.google.android.exoplayer2.source.c$a r4 = (com.google.android.exoplayer2.source.c.a) r4
            r3[r2] = r4
            r4 = r3[r2]
            if (r4 == 0) goto L20
            r3 = r3[r2]
            com.google.android.exoplayer2.source.x0 r11 = r3.f24757a
        L20:
            r9[r2] = r11
            int r2 = r2 + 1
            goto Lc
        L25:
            com.google.android.exoplayer2.source.w r2 = r0.f24751a
            r3 = r13
            r4 = r14
            r5 = r9
            r6 = r16
            r7 = r17
            long r2 = r2.o(r3, r4, r5, r6, r7)
            boolean r4 = r12.k()
            if (r4 == 0) goto L47
            long r4 = r0.f24755e
            int r6 = (r17 > r4 ? 1 : (r17 == r4 ? 0 : -1))
            if (r6 != 0) goto L47
            r6 = r13
            boolean r4 = q(r4, r13)
            if (r4 == 0) goto L47
            r4 = r2
            goto L4c
        L47:
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L4c:
            r0.f24754d = r4
            int r4 = (r2 > r17 ? 1 : (r2 == r17 ? 0 : -1))
            if (r4 == 0) goto L67
            long r4 = r0.f24755e
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 < 0) goto L65
            long r4 = r0.f24756f
            r6 = -9223372036854775808
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L67
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 > 0) goto L65
            goto L67
        L65:
            r4 = 0
            goto L68
        L67:
            r4 = 1
        L68:
            com.google.android.exoplayer2.util.a.i(r4)
        L6b:
            int r4 = r1.length
            if (r10 >= r4) goto L97
            r4 = r9[r10]
            if (r4 != 0) goto L77
            com.google.android.exoplayer2.source.c$a[] r4 = r0.f24753c
            r4[r10] = r11
            goto L8e
        L77:
            com.google.android.exoplayer2.source.c$a[] r4 = r0.f24753c
            r5 = r4[r10]
            if (r5 == 0) goto L85
            r5 = r4[r10]
            com.google.android.exoplayer2.source.x0 r5 = r5.f24757a
            r6 = r9[r10]
            if (r5 == r6) goto L8e
        L85:
            com.google.android.exoplayer2.source.c$a r5 = new com.google.android.exoplayer2.source.c$a
            r6 = r9[r10]
            r5.<init>(r6)
            r4[r10] = r5
        L8e:
            com.google.android.exoplayer2.source.c$a[] r4 = r0.f24753c
            r4 = r4[r10]
            r1[r10] = r4
            int r10 = r10 + 1
            goto L6b
        L97:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.c.o(com.google.android.exoplayer2.trackselection.g[], boolean[], com.google.android.exoplayer2.source.x0[], boolean[], long):long");
    }

    @Override // com.google.android.exoplayer2.source.y0.a
    /* renamed from: p */
    public void f(w wVar) {
        ((w.a) com.google.android.exoplayer2.util.a.g(this.f24752b)).f(this);
    }

    public void r(long j4, long j10) {
        this.f24755e = j4;
        this.f24756f = j10;
    }

    @Override // com.google.android.exoplayer2.source.w
    public void s() throws IOException {
        this.f24751a.s();
    }

    @Override // com.google.android.exoplayer2.source.w
    public TrackGroupArray u() {
        return this.f24751a.u();
    }

    @Override // com.google.android.exoplayer2.source.w
    public void v(long j4, boolean z9) {
        this.f24751a.v(j4, z9);
    }
}
