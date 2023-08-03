package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.l0;
import com.google.android.exoplayer2.source.p0;
import com.google.android.exoplayer2.source.q0;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.m;
import java.util.List;

/* compiled from: ProgressiveMediaSource.java */
/* loaded from: classes2.dex */
public final class q0 extends com.google.android.exoplayer2.source.a implements p0.b {

    /* renamed from: s  reason: collision with root package name */
    public static final int f25129s = 1048576;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.exoplayer2.b1 f25130g;

    /* renamed from: h  reason: collision with root package name */
    private final b1.g f25131h;

    /* renamed from: i  reason: collision with root package name */
    private final m.a f25132i;

    /* renamed from: j  reason: collision with root package name */
    private final l0.a f25133j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.u f25134k;

    /* renamed from: l  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.f0 f25135l;

    /* renamed from: m  reason: collision with root package name */
    private final int f25136m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f25137n;

    /* renamed from: o  reason: collision with root package name */
    private long f25138o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f25139p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f25140q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.p0 f25141r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressiveMediaSource.java */
    /* loaded from: classes2.dex */
    public class a extends m {
        a(q0 q0Var, s2 s2Var) {
            super(s2Var);
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public s2.b k(int i4, s2.b bVar, boolean z9) {
            super.k(i4, bVar, z9);
            bVar.f24558f = true;
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.m, com.google.android.exoplayer2.s2
        public s2.d s(int i4, s2.d dVar, long j4) {
            super.s(i4, dVar, j4);
            dVar.f24584l = true;
            return dVar;
        }
    }

    /* compiled from: ProgressiveMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class b implements j0 {

        /* renamed from: a  reason: collision with root package name */
        private final m.a f25142a;

        /* renamed from: b  reason: collision with root package name */
        private l0.a f25143b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f25144c;

        /* renamed from: d  reason: collision with root package name */
        private com.google.android.exoplayer2.drm.x f25145d;

        /* renamed from: e  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.f0 f25146e;

        /* renamed from: f  reason: collision with root package name */
        private int f25147f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f25148g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private Object f25149h;

        public b(m.a aVar) {
            this(aVar, new com.google.android.exoplayer2.extractor.h());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ l0 o(com.google.android.exoplayer2.extractor.q qVar) {
            return new com.google.android.exoplayer2.source.b(qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ com.google.android.exoplayer2.drm.u p(com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.b1 b1Var) {
            return uVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ l0 q(com.google.android.exoplayer2.extractor.q qVar) {
            if (qVar == null) {
                qVar = new com.google.android.exoplayer2.extractor.h();
            }
            return new com.google.android.exoplayer2.source.b(qVar);
        }

        @Override // com.google.android.exoplayer2.source.j0
        public /* synthetic */ j0 b(List list) {
            return i0.b(this, list);
        }

        @Override // com.google.android.exoplayer2.source.j0
        public int[] d() {
            return new int[]{4};
        }

        @Override // com.google.android.exoplayer2.source.j0
        @Deprecated
        /* renamed from: m */
        public q0 f(Uri uri) {
            return c(new b1.c().F(uri).a());
        }

        @Override // com.google.android.exoplayer2.source.j0
        /* renamed from: n */
        public q0 c(com.google.android.exoplayer2.b1 b1Var) {
            com.google.android.exoplayer2.util.a.g(b1Var.f21439b);
            b1.g gVar = b1Var.f21439b;
            boolean z9 = true;
            boolean z10 = gVar.f21509h == null && this.f25149h != null;
            z9 = (gVar.f21507f != null || this.f25148g == null) ? false : false;
            if (z10 && z9) {
                b1Var = b1Var.b().E(this.f25149h).j(this.f25148g).a();
            } else if (z10) {
                b1Var = b1Var.b().E(this.f25149h).a();
            } else if (z9) {
                b1Var = b1Var.b().j(this.f25148g).a();
            }
            com.google.android.exoplayer2.b1 b1Var2 = b1Var;
            return new q0(b1Var2, this.f25142a, this.f25143b, this.f25145d.a(b1Var2), this.f25146e, this.f25147f, null);
        }

        public b r(int i4) {
            this.f25147f = i4;
            return this;
        }

        @Deprecated
        public b s(@Nullable String str) {
            this.f25148g = str;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.j0
        /* renamed from: t */
        public b h(@Nullable HttpDataSource.b bVar) {
            if (!this.f25144c) {
                ((com.google.android.exoplayer2.drm.j) this.f25145d).c(bVar);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.j0
        /* renamed from: u */
        public b i(@Nullable final com.google.android.exoplayer2.drm.u uVar) {
            if (uVar == null) {
                e(null);
            } else {
                e(new com.google.android.exoplayer2.drm.x() { // from class: com.google.android.exoplayer2.source.r0
                    @Override // com.google.android.exoplayer2.drm.x
                    public final com.google.android.exoplayer2.drm.u a(com.google.android.exoplayer2.b1 b1Var) {
                        com.google.android.exoplayer2.drm.u p9;
                        p9 = q0.b.p(com.google.android.exoplayer2.drm.u.this, b1Var);
                        return p9;
                    }
                });
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.j0
        /* renamed from: v */
        public b e(@Nullable com.google.android.exoplayer2.drm.x xVar) {
            if (xVar != null) {
                this.f25145d = xVar;
                this.f25144c = true;
            } else {
                this.f25145d = new com.google.android.exoplayer2.drm.j();
                this.f25144c = false;
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.j0
        /* renamed from: w */
        public b a(@Nullable String str) {
            if (!this.f25144c) {
                ((com.google.android.exoplayer2.drm.j) this.f25145d).d(str);
            }
            return this;
        }

        @Deprecated
        public b x(@Nullable final com.google.android.exoplayer2.extractor.q qVar) {
            this.f25143b = new l0.a() { // from class: com.google.android.exoplayer2.source.t0
                @Override // com.google.android.exoplayer2.source.l0.a
                public final l0 a() {
                    l0 q9;
                    q9 = q0.b.q(com.google.android.exoplayer2.extractor.q.this);
                    return q9;
                }
            };
            return this;
        }

        @Override // com.google.android.exoplayer2.source.j0
        /* renamed from: y */
        public b g(@Nullable com.google.android.exoplayer2.upstream.f0 f0Var) {
            if (f0Var == null) {
                f0Var = new com.google.android.exoplayer2.upstream.w();
            }
            this.f25146e = f0Var;
            return this;
        }

        @Deprecated
        public b z(@Nullable Object obj) {
            this.f25149h = obj;
            return this;
        }

        public b(m.a aVar, final com.google.android.exoplayer2.extractor.q qVar) {
            this(aVar, new l0.a() { // from class: com.google.android.exoplayer2.source.s0
                @Override // com.google.android.exoplayer2.source.l0.a
                public final l0 a() {
                    l0 o9;
                    o9 = q0.b.o(com.google.android.exoplayer2.extractor.q.this);
                    return o9;
                }
            });
        }

        public b(m.a aVar, l0.a aVar2) {
            this.f25142a = aVar;
            this.f25143b = aVar2;
            this.f25145d = new com.google.android.exoplayer2.drm.j();
            this.f25146e = new com.google.android.exoplayer2.upstream.w();
            this.f25147f = 1048576;
        }
    }

    /* synthetic */ q0(com.google.android.exoplayer2.b1 b1Var, m.a aVar, l0.a aVar2, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.upstream.f0 f0Var, int i4, a aVar3) {
        this(b1Var, aVar, aVar2, uVar, f0Var, i4);
    }

    private void B() {
        s2 b1Var = new b1(this.f25138o, this.f25139p, false, this.f25140q, (Object) null, this.f25130g);
        if (this.f25137n) {
            b1Var = new a(this, b1Var);
        }
        z(b1Var);
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void A() {
        this.f25134k.release();
    }

    @Override // com.google.android.exoplayer2.source.z
    public w a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        com.google.android.exoplayer2.upstream.m a10 = this.f25132i.a();
        com.google.android.exoplayer2.upstream.p0 p0Var = this.f25141r;
        if (p0Var != null) {
            a10.e(p0Var);
        }
        return new p0(this.f25131h.f21502a, a10, this.f25133j.a(), this.f25134k, r(aVar), this.f25135l, t(aVar), this, bVar, this.f25131h.f21507f, this.f25136m);
    }

    @Override // com.google.android.exoplayer2.source.z
    public com.google.android.exoplayer2.b1 e() {
        return this.f25130g;
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    @Nullable
    @Deprecated
    public Object f() {
        return this.f25131h.f21509h;
    }

    @Override // com.google.android.exoplayer2.source.z
    public void g(w wVar) {
        ((p0) wVar).d0();
    }

    @Override // com.google.android.exoplayer2.source.p0.b
    public void k(long j4, boolean z9, boolean z10) {
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            j4 = this.f25138o;
        }
        if (!this.f25137n && this.f25138o == j4 && this.f25139p == z9 && this.f25140q == z10) {
            return;
        }
        this.f25138o = j4;
        this.f25139p = z9;
        this.f25140q = z10;
        this.f25137n = false;
        B();
    }

    @Override // com.google.android.exoplayer2.source.z
    public void n() {
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        this.f25141r = p0Var;
        this.f25134k.a();
        B();
    }

    private q0(com.google.android.exoplayer2.b1 b1Var, m.a aVar, l0.a aVar2, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.upstream.f0 f0Var, int i4) {
        this.f25131h = (b1.g) com.google.android.exoplayer2.util.a.g(b1Var.f21439b);
        this.f25130g = b1Var;
        this.f25132i = aVar;
        this.f25133j = aVar2;
        this.f25134k = uVar;
        this.f25135l = f0Var;
        this.f25136m = i4;
        this.f25137n = true;
        this.f25138o = com.google.android.exoplayer2.i.f23649b;
    }
}
