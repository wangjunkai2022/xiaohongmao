package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.z;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class ClippingMediaSource extends e<Void> {

    /* renamed from: j  reason: collision with root package name */
    private final z f24611j;

    /* renamed from: k  reason: collision with root package name */
    private final long f24612k;

    /* renamed from: l  reason: collision with root package name */
    private final long f24613l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f24614m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f24615n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f24616o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayList<c> f24617p;

    /* renamed from: q  reason: collision with root package name */
    private final s2.d f24618q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private a f24619r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private IllegalClippingException f24620s;

    /* renamed from: t  reason: collision with root package name */
    private long f24621t;

    /* renamed from: u  reason: collision with root package name */
    private long f24622u;

    /* loaded from: classes2.dex */
    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes2.dex */
        public @interface a {
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public IllegalClippingException(int r4) {
            /*
                r3 = this;
                java.lang.String r0 = a(r4)
                java.lang.String r0 = java.lang.String.valueOf(r0)
                int r1 = r0.length()
                java.lang.String r2 = "Illegal clipping: "
                if (r1 == 0) goto L15
                java.lang.String r0 = r2.concat(r0)
                goto L1a
            L15:
                java.lang.String r0 = new java.lang.String
                r0.<init>(r2)
            L1a:
                r3.<init>(r0)
                r3.reason = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException.<init>(int):void");
        }

        private static String a(int i4) {
            return i4 != 0 ? i4 != 1 ? i4 != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a extends m {

        /* renamed from: g  reason: collision with root package name */
        private final long f24623g;

        /* renamed from: h  reason: collision with root package name */
        private final long f24624h;

        /* renamed from: i  reason: collision with root package name */
        private final long f24625i;

        /* renamed from: j  reason: collision with root package name */
        private final boolean f24626j;

        public a(s2 s2Var, long j4, long j10) throws IllegalClippingException {
            super(s2Var);
            boolean z9 = false;
            if (s2Var.m() == 1) {
                s2.d r9 = s2Var.r(0, new s2.d());
                long max = Math.max(0L, j4);
                if (!r9.f24584l && max != 0 && !r9.f24580h) {
                    throw new IllegalClippingException(1);
                }
                long max2 = j10 == Long.MIN_VALUE ? r9.f24586n : Math.max(0L, j10);
                long j11 = r9.f24586n;
                if (j11 != com.google.android.exoplayer2.i.f23649b) {
                    max2 = max2 > j11 ? j11 : max2;
                    if (max > max2) {
                        throw new IllegalClippingException(2);
                    }
                }
                this.f24623g = max;
                this.f24624h = max2;
                int i4 = (max2 > com.google.android.exoplayer2.i.f23649b ? 1 : (max2 == com.google.android.exoplayer2.i.f23649b ? 0 : -1));
                this.f24625i = i4 == 0 ? -9223372036854775807L : max2 - max;
                if (r9.f24581i && (i4 == 0 || (j11 != com.google.android.exoplayer2.i.f23649b && max2 == j11))) {
                    z9 = true;
                }
                this.f24626j = z9;
                return;
            }
            throw new IllegalClippingException(0);
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public s2.b k(int i4, s2.b bVar, boolean z9) {
            this.f25005f.k(0, bVar, z9);
            long q9 = bVar.q() - this.f24623g;
            long j4 = this.f24625i;
            return bVar.t(bVar.f24553a, bVar.f24554b, 0, j4 == com.google.android.exoplayer2.i.f23649b ? -9223372036854775807L : j4 - q9, q9);
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public s2.d s(int i4, s2.d dVar, long j4) {
            this.f25005f.s(0, dVar, 0L);
            long j10 = dVar.f24589q;
            long j11 = this.f24623g;
            dVar.f24589q = j10 + j11;
            dVar.f24586n = this.f24625i;
            dVar.f24581i = this.f24626j;
            long j12 = dVar.f24585m;
            if (j12 != com.google.android.exoplayer2.i.f23649b) {
                long max = Math.max(j12, j11);
                dVar.f24585m = max;
                long j13 = this.f24624h;
                if (j13 != com.google.android.exoplayer2.i.f23649b) {
                    max = Math.min(max, j13);
                }
                dVar.f24585m = max - this.f24623g;
            }
            long d4 = com.google.android.exoplayer2.i.d(this.f24623g);
            long j14 = dVar.f24577e;
            if (j14 != com.google.android.exoplayer2.i.f23649b) {
                dVar.f24577e = j14 + d4;
            }
            long j15 = dVar.f24578f;
            if (j15 != com.google.android.exoplayer2.i.f23649b) {
                dVar.f24578f = j15 + d4;
            }
            return dVar;
        }
    }

    public ClippingMediaSource(z zVar, long j4, long j10) {
        this(zVar, j4, j10, true, false, false);
    }

    private void M(s2 s2Var) {
        long j4;
        long j10;
        s2Var.r(0, this.f24618q);
        long i4 = this.f24618q.i();
        if (this.f24619r != null && !this.f24617p.isEmpty() && !this.f24615n) {
            long j11 = this.f24621t - i4;
            j10 = this.f24613l != Long.MIN_VALUE ? this.f24622u - i4 : Long.MIN_VALUE;
            j4 = j11;
        } else {
            long j12 = this.f24612k;
            long j13 = this.f24613l;
            if (this.f24616o) {
                long e4 = this.f24618q.e();
                j12 += e4;
                j13 += e4;
            }
            this.f24621t = i4 + j12;
            this.f24622u = this.f24613l != Long.MIN_VALUE ? i4 + j13 : Long.MIN_VALUE;
            int size = this.f24617p.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f24617p.get(i10).r(this.f24621t, this.f24622u);
            }
            j4 = j12;
            j10 = j13;
        }
        try {
            a aVar = new a(s2Var, j4, j10);
            this.f24619r = aVar;
            z(aVar);
        } catch (IllegalClippingException e10) {
            this.f24620s = e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    public void A() {
        super.A();
        this.f24620s = null;
        this.f24619r = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    /* renamed from: L */
    public void I(Void r12, z zVar, s2 s2Var) {
        if (this.f24620s != null) {
            return;
        }
        M(s2Var);
    }

    @Override // com.google.android.exoplayer2.source.z
    public w a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        c cVar = new c(this.f24611j.a(aVar, bVar, j4), this.f24614m, this.f24621t, this.f24622u);
        this.f24617p.add(cVar);
        return cVar;
    }

    @Override // com.google.android.exoplayer2.source.z
    public com.google.android.exoplayer2.b1 e() {
        return this.f24611j.e();
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    @Nullable
    @Deprecated
    public Object f() {
        return this.f24611j.f();
    }

    @Override // com.google.android.exoplayer2.source.z
    public void g(w wVar) {
        com.google.android.exoplayer2.util.a.i(this.f24617p.remove(wVar));
        this.f24611j.g(((c) wVar).f24751a);
        if (!this.f24617p.isEmpty() || this.f24615n) {
            return;
        }
        M(((a) com.google.android.exoplayer2.util.a.g(this.f24619r)).f25005f);
    }

    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.z
    public void n() throws IOException {
        IllegalClippingException illegalClippingException = this.f24620s;
        if (illegalClippingException == null) {
            super.n();
            return;
        }
        throw illegalClippingException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    public void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        super.y(p0Var);
        J(null, this.f24611j);
    }

    public ClippingMediaSource(z zVar, long j4) {
        this(zVar, 0L, j4, true, false, true);
    }

    public ClippingMediaSource(z zVar, long j4, long j10, boolean z9, boolean z10, boolean z11) {
        com.google.android.exoplayer2.util.a.a(j4 >= 0);
        this.f24611j = (z) com.google.android.exoplayer2.util.a.g(zVar);
        this.f24612k = j4;
        this.f24613l = j10;
        this.f24614m = z9;
        this.f24615n = z10;
        this.f24616o = z11;
        this.f24617p = new ArrayList<>();
        this.f24618q = new s2.d();
    }
}
