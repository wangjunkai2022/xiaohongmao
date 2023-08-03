package com.google.android.exoplayer2.analytics;

import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.j1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.util.v;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.w1;
import com.google.android.exoplayer2.x1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.w2;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: AnalyticsCollector.java */
/* loaded from: classes2.dex */
public class h1 implements v1.h, com.google.android.exoplayer2.audio.u, com.google.android.exoplayer2.video.z, com.google.android.exoplayer2.source.h0, e.a, com.google.android.exoplayer2.drm.s {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d f20770a;

    /* renamed from: b  reason: collision with root package name */
    private final s2.b f20771b;

    /* renamed from: c  reason: collision with root package name */
    private final s2.d f20772c;

    /* renamed from: d  reason: collision with root package name */
    private final a f20773d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray<j1.b> f20774e;

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.exoplayer2.util.v<j1> f20775f;

    /* renamed from: g  reason: collision with root package name */
    private v1 f20776g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f20777h;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnalyticsCollector.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final s2.b f20778a;

        /* renamed from: b  reason: collision with root package name */
        private ImmutableList<z.a> f20779b = ImmutableList.of();

        /* renamed from: c  reason: collision with root package name */
        private ImmutableMap<z.a, s2> f20780c = ImmutableMap.of();
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private z.a f20781d;

        /* renamed from: e  reason: collision with root package name */
        private z.a f20782e;

        /* renamed from: f  reason: collision with root package name */
        private z.a f20783f;

        public a(s2.b bVar) {
            this.f20778a = bVar;
        }

        private void b(ImmutableMap.b<z.a, s2> bVar, @Nullable z.a aVar, s2 s2Var) {
            if (aVar == null) {
                return;
            }
            if (s2Var.f(aVar.f25221a) != -1) {
                bVar.d(aVar, s2Var);
                return;
            }
            s2 s2Var2 = this.f20780c.get(aVar);
            if (s2Var2 != null) {
                bVar.d(aVar, s2Var2);
            }
        }

        @Nullable
        private static z.a c(v1 v1Var, ImmutableList<z.a> immutableList, @Nullable z.a aVar, s2.b bVar) {
            s2 A0 = v1Var.A0();
            int Y0 = v1Var.Y0();
            Object q9 = A0.v() ? null : A0.q(Y0);
            int g4 = (v1Var.K() || A0.v()) ? -1 : A0.j(Y0, bVar).g(com.google.android.exoplayer2.i.c(v1Var.getCurrentPosition()) - bVar.q());
            for (int i4 = 0; i4 < immutableList.size(); i4++) {
                z.a aVar2 = immutableList.get(i4);
                if (i(aVar2, q9, v1Var.K(), v1Var.s0(), v1Var.d1(), g4)) {
                    return aVar2;
                }
            }
            if (immutableList.isEmpty() && aVar != null) {
                if (i(aVar, q9, v1Var.K(), v1Var.s0(), v1Var.d1(), g4)) {
                    return aVar;
                }
            }
            return null;
        }

        private static boolean i(z.a aVar, @Nullable Object obj, boolean z9, int i4, int i10, int i11) {
            if (aVar.f25221a.equals(obj)) {
                return (z9 && aVar.f25222b == i4 && aVar.f25223c == i10) || (!z9 && aVar.f25222b == -1 && aVar.f25225e == i11);
            }
            return false;
        }

        private void m(s2 s2Var) {
            ImmutableMap.b<z.a, s2> builder = ImmutableMap.builder();
            if (this.f20779b.isEmpty()) {
                b(builder, this.f20782e, s2Var);
                if (!com.google.common.base.w.a(this.f20783f, this.f20782e)) {
                    b(builder, this.f20783f, s2Var);
                }
                if (!com.google.common.base.w.a(this.f20781d, this.f20782e) && !com.google.common.base.w.a(this.f20781d, this.f20783f)) {
                    b(builder, this.f20781d, s2Var);
                }
            } else {
                for (int i4 = 0; i4 < this.f20779b.size(); i4++) {
                    b(builder, this.f20779b.get(i4), s2Var);
                }
                if (!this.f20779b.contains(this.f20781d)) {
                    b(builder, this.f20781d, s2Var);
                }
            }
            this.f20780c = builder.a();
        }

        @Nullable
        public z.a d() {
            return this.f20781d;
        }

        @Nullable
        public z.a e() {
            if (this.f20779b.isEmpty()) {
                return null;
            }
            return (z.a) w2.w(this.f20779b);
        }

        @Nullable
        public s2 f(z.a aVar) {
            return this.f20780c.get(aVar);
        }

        @Nullable
        public z.a g() {
            return this.f20782e;
        }

        @Nullable
        public z.a h() {
            return this.f20783f;
        }

        public void j(v1 v1Var) {
            this.f20781d = c(v1Var, this.f20779b, this.f20782e, this.f20778a);
        }

        public void k(List<z.a> list, @Nullable z.a aVar, v1 v1Var) {
            this.f20779b = ImmutableList.copyOf((Collection) list);
            if (!list.isEmpty()) {
                this.f20782e = list.get(0);
                this.f20783f = (z.a) com.google.android.exoplayer2.util.a.g(aVar);
            }
            if (this.f20781d == null) {
                this.f20781d = c(v1Var, this.f20779b, this.f20782e, this.f20778a);
            }
            m(v1Var.A0());
        }

        public void l(v1 v1Var) {
            this.f20781d = c(v1Var, this.f20779b, this.f20782e, this.f20778a);
            m(v1Var.A0());
        }
    }

    public h1(com.google.android.exoplayer2.util.d dVar) {
        this.f20770a = (com.google.android.exoplayer2.util.d) com.google.android.exoplayer2.util.a.g(dVar);
        this.f20775f = new com.google.android.exoplayer2.util.v<>(com.google.android.exoplayer2.util.z0.X(), dVar, b1.f20729a);
        s2.b bVar = new s2.b();
        this.f20771b = bVar;
        this.f20772c = new s2.d();
        this.f20773d = new a(bVar);
        this.f20774e = new SparseArray<>();
    }

    private j1.b A1(@Nullable z.a aVar) {
        com.google.android.exoplayer2.util.a.g(this.f20776g);
        s2 f10 = aVar == null ? null : this.f20773d.f(aVar);
        if (aVar != null && f10 != null) {
            return z1(f10, f10.l(aVar.f25221a, this.f20771b).f24555c, aVar);
        }
        int j02 = this.f20776g.j0();
        s2 A0 = this.f20776g.A0();
        if (!(j02 < A0.u())) {
            A0 = s2.f24542a;
        }
        return z1(A0, j02, null);
    }

    private j1.b B1() {
        return A1(this.f20773d.e());
    }

    private j1.b C1(int i4, @Nullable z.a aVar) {
        com.google.android.exoplayer2.util.a.g(this.f20776g);
        if (aVar != null) {
            if (this.f20773d.f(aVar) != null) {
                return A1(aVar);
            }
            return z1(s2.f24542a, i4, aVar);
        }
        s2 A0 = this.f20776g.A0();
        if (!(i4 < A0.u())) {
            A0 = s2.f24542a;
        }
        return z1(A0, i4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C2(j1.b bVar, String str, long j4, long j10, j1 j1Var) {
        j1Var.p0(bVar, str, j4);
        j1Var.z(bVar, str, j10, j4);
        j1Var.O(bVar, 2, str, j4);
    }

    private j1.b D1() {
        return A1(this.f20773d.g());
    }

    private j1.b E1() {
        return A1(this.f20773d.h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E2(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar, j1 j1Var) {
        j1Var.G(bVar, dVar);
        j1Var.s0(bVar, 2, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F1(j1 j1Var, com.google.android.exoplayer2.util.m mVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F2(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar, j1 j1Var) {
        j1Var.U(bVar, dVar);
        j1Var.k(bVar, 2, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H2(j1.b bVar, Format format, com.google.android.exoplayer2.decoder.e eVar, j1 j1Var) {
        j1Var.r(bVar, format);
        j1Var.A(bVar, format, eVar);
        j1Var.L(bVar, 2, format);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I2(j1.b bVar, com.google.android.exoplayer2.video.b0 b0Var, j1 j1Var) {
        j1Var.Z(bVar, b0Var);
        j1Var.K(bVar, b0Var.f27885a, b0Var.f27886b, b0Var.f27887c, b0Var.f27888d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void J1(j1.b bVar, String str, long j4, long j10, j1 j1Var) {
        j1Var.l(bVar, str, j4);
        j1Var.V(bVar, str, j10, j4);
        j1Var.O(bVar, 1, str, j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L1(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar, j1 j1Var) {
        j1Var.T(bVar, dVar);
        j1Var.s0(bVar, 1, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L2(v1 v1Var, j1 j1Var, com.google.android.exoplayer2.util.m mVar) {
        j1Var.n(v1Var, new j1.c(mVar, this.f20774e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M1(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar, j1 j1Var) {
        j1Var.i(bVar, dVar);
        j1Var.k(bVar, 1, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void N1(j1.b bVar, Format format, com.google.android.exoplayer2.decoder.e eVar, j1 j1Var) {
        j1Var.c0(bVar, format);
        j1Var.q0(bVar, format, eVar);
        j1Var.L(bVar, 1, format);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void X1(j1.b bVar, int i4, j1 j1Var) {
        j1Var.F(bVar);
        j1Var.c(bVar, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b2(j1.b bVar, boolean z9, j1 j1Var) {
        j1Var.g(bVar, z9);
        j1Var.u0(bVar, z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q2(j1.b bVar, int i4, v1.l lVar, v1.l lVar2, j1 j1Var) {
        j1Var.P(bVar, i4);
        j1Var.m0(bVar, lVar, lVar2, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
    public final void A(final com.google.android.exoplayer2.audio.e eVar) {
        final j1.b E1 = E1();
        P2(E1, 1016, new v.a() { // from class: com.google.android.exoplayer2.analytics.t
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).X(j1.b.this, eVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void B(@Nullable final com.google.android.exoplayer2.b1 b1Var, final int i4) {
        final j1.b y12 = y1();
        P2(y12, 1, new v.a() { // from class: com.google.android.exoplayer2.analytics.q
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).E(j1.b.this, b1Var, i4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void C(final boolean z9, final int i4) {
        final j1.b y12 = y1();
        P2(y12, 6, new v.a() { // from class: com.google.android.exoplayer2.analytics.y0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).y(j1.b.this, z9, i4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.device.d
    public /* synthetic */ void D(com.google.android.exoplayer2.device.b bVar) {
        x1.e(this, bVar);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public void E(final boolean z9) {
        final j1.b y12 = y1();
        P2(y12, 8, new v.a() { // from class: com.google.android.exoplayer2.analytics.v0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).h0(j1.b.this, z9);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.z
    public final void F(final String str, final long j4, final long j10) {
        final j1.b E1 = E1();
        P2(E1, 1021, new v.a() { // from class: com.google.android.exoplayer2.analytics.q0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.C2(j1.b.this, str, j10, j4, (j1) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void G(boolean z9) {
        w1.e(this, z9);
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void H(int i4, @Nullable z.a aVar, final com.google.android.exoplayer2.source.s sVar) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, 1004, new v.a() { // from class: com.google.android.exoplayer2.analytics.f0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).j0(j1.b.this, sVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void I(int i4, @Nullable z.a aVar, final com.google.android.exoplayer2.source.o oVar, final com.google.android.exoplayer2.source.s sVar) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, 1002, new v.a() { // from class: com.google.android.exoplayer2.analytics.c0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).f0(j1.b.this, oVar, sVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void J(int i4, @Nullable z.a aVar, final com.google.android.exoplayer2.source.o oVar, final com.google.android.exoplayer2.source.s sVar) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, 1000, new v.a() { // from class: com.google.android.exoplayer2.analytics.b0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).N(j1.b.this, oVar, sVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.upstream.e.a
    public final void K(final int i4, final long j4, final long j10) {
        final j1.b B1 = B1();
        P2(B1, 1006, new v.a() { // from class: com.google.android.exoplayer2.analytics.h
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).J(j1.b.this, i4, j4, j10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.u
    public final void L(final String str) {
        final j1.b E1 = E1();
        P2(E1, 1013, new v.a() { // from class: com.google.android.exoplayer2.analytics.o0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).n0(j1.b.this, str);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.u
    public final void M(final String str, final long j4, final long j10) {
        final j1.b E1 = E1();
        P2(E1, 1009, new v.a() { // from class: com.google.android.exoplayer2.analytics.r0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.J1(j1.b.this, str, j10, j4, (j1) obj);
            }
        });
    }

    public final void M2() {
        if (this.f20777h) {
            return;
        }
        final j1.b y12 = y1();
        this.f20777h = true;
        P2(y12, -1, new v.a() { // from class: com.google.android.exoplayer2.analytics.d1
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).D(j1.b.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void N(int i4, @Nullable z.a aVar) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, j1.X, new v.a() { // from class: com.google.android.exoplayer2.analytics.c1
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).H(j1.b.this);
            }
        });
    }

    @CallSuper
    public void N2() {
        final j1.b y12 = y1();
        this.f20774e.put(j1.Z, y12);
        this.f20775f.h(j1.Z, new v.a() { // from class: com.google.android.exoplayer2.analytics.h0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).Y(j1.b.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public /* synthetic */ void O(int i4, z.a aVar) {
        com.google.android.exoplayer2.drm.l.d(this, i4, aVar);
    }

    @CallSuper
    public void O2(j1 j1Var) {
        this.f20775f.k(j1Var);
    }

    @Override // com.google.android.exoplayer2.video.z
    public /* synthetic */ void P(Format format) {
        com.google.android.exoplayer2.video.o.i(this, format);
    }

    protected final void P2(j1.b bVar, int i4, v.a<j1> aVar) {
        this.f20774e.put(i4, bVar);
        this.f20775f.l(i4, aVar);
    }

    @Override // com.google.android.exoplayer2.video.z
    public final void Q(final Format format, @Nullable final com.google.android.exoplayer2.decoder.e eVar) {
        final j1.b E1 = E1();
        P2(E1, j1.L, new v.a() { // from class: com.google.android.exoplayer2.analytics.p
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.H2(j1.b.this, format, eVar, (j1) obj);
            }
        });
    }

    @CallSuper
    public void Q2(final v1 v1Var, Looper looper) {
        com.google.android.exoplayer2.util.a.i(this.f20776g == null || this.f20773d.f20779b.isEmpty());
        this.f20776g = (v1) com.google.android.exoplayer2.util.a.g(v1Var);
        this.f20775f = this.f20775f.d(looper, new v.b() { // from class: com.google.android.exoplayer2.analytics.a1
            @Override // com.google.android.exoplayer2.util.v.b
            public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                h1.this.L2(v1Var, (j1) obj, mVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.u
    public final void R(final long j4) {
        final j1.b E1 = E1();
        P2(E1, 1011, new v.a() { // from class: com.google.android.exoplayer2.analytics.k
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).s(j1.b.this, j4);
            }
        });
    }

    public final void R2(List<z.a> list, @Nullable z.a aVar) {
        this.f20773d.k(list, aVar, (v1) com.google.android.exoplayer2.util.a.g(this.f20776g));
    }

    @Override // com.google.android.exoplayer2.video.z
    public final void S(final Exception exc) {
        final j1.b E1 = E1();
        P2(E1, j1.f20799b0, new v.a() { // from class: com.google.android.exoplayer2.analytics.j0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).B(j1.b.this, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.z
    public final void T(final com.google.android.exoplayer2.decoder.d dVar) {
        final j1.b D1 = D1();
        P2(D1, 1025, new v.a() { // from class: com.google.android.exoplayer2.analytics.y
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.E2(j1.b.this, dVar, (j1) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void U(int i4) {
        w1.n(this, i4);
    }

    @Override // com.google.android.exoplayer2.audio.u
    public final void V(final com.google.android.exoplayer2.decoder.d dVar) {
        final j1.b D1 = D1();
        P2(D1, 1014, new v.a() { // from class: com.google.android.exoplayer2.analytics.x
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.L1(j1.b.this, dVar, (j1) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void W(int i4, @Nullable z.a aVar, final com.google.android.exoplayer2.source.s sVar) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, 1005, new v.a() { // from class: com.google.android.exoplayer2.analytics.e0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).l0(j1.b.this, sVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.f
    public final void X() {
        final j1.b y12 = y1();
        P2(y12, -1, new v.a() { // from class: com.google.android.exoplayer2.analytics.w
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).M(j1.b.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void Y(int i4, @Nullable z.a aVar, final Exception exc) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, j1.V, new v.a() { // from class: com.google.android.exoplayer2.analytics.l0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).d(j1.b.this, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.z
    public final void Z(final int i4, final long j4) {
        final j1.b D1 = D1();
        P2(D1, j1.M, new v.a() { // from class: com.google.android.exoplayer2.analytics.g
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).v(j1.b.this, i4, j4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i, com.google.android.exoplayer2.audio.u
    public final void a(final boolean z9) {
        final j1.b E1 = E1();
        P2(E1, 1017, new v.a() { // from class: com.google.android.exoplayer2.analytics.w0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).x(j1.b.this, z9);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.f
    public final void a0(final boolean z9, final int i4) {
        final j1.b y12 = y1();
        P2(y12, -1, new v.a() { // from class: com.google.android.exoplayer2.analytics.z0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).o(j1.b.this, z9, i4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n, com.google.android.exoplayer2.video.z
    public final void b(final com.google.android.exoplayer2.video.b0 b0Var) {
        final j1.b E1 = E1();
        P2(E1, j1.R, new v.a() { // from class: com.google.android.exoplayer2.analytics.i0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.I2(j1.b.this, b0Var, (j1) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.u
    public final void b0(final Format format, @Nullable final com.google.android.exoplayer2.decoder.e eVar) {
        final j1.b E1 = E1();
        P2(E1, 1010, new v.a() { // from class: com.google.android.exoplayer2.analytics.o
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.N1(j1.b.this, format, eVar, (j1) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void c(final t1 t1Var) {
        final j1.b y12 = y1();
        P2(y12, 13, new v.a() { // from class: com.google.android.exoplayer2.analytics.s
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).R(j1.b.this, t1Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.n
    public /* synthetic */ void c0(int i4, int i10, int i11, float f10) {
        com.google.android.exoplayer2.video.m.c(this, i4, i10, i11, f10);
    }

    @Override // com.google.android.exoplayer2.audio.u
    public final void d(final Exception exc) {
        final j1.b E1 = E1();
        P2(E1, 1018, new v.a() { // from class: com.google.android.exoplayer2.analytics.k0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).w(j1.b.this, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.z
    public final void d0(final Object obj, final long j4) {
        final j1.b E1 = E1();
        P2(E1, j1.Q, new v.a() { // from class: com.google.android.exoplayer2.analytics.n0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj2) {
                ((j1) obj2).r0(j1.b.this, obj, j4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void e(final v1.l lVar, final v1.l lVar2, final int i4) {
        if (i4 == 1) {
            this.f20777h = false;
        }
        this.f20773d.j((v1) com.google.android.exoplayer2.util.a.g(this.f20776g));
        final j1.b y12 = y1();
        P2(y12, 12, new v.a() { // from class: com.google.android.exoplayer2.analytics.j
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.q2(j1.b.this, i4, lVar, lVar2, (j1) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.f
    public /* synthetic */ void e0(s2 s2Var, Object obj, int i4) {
        w1.u(this, s2Var, obj, i4);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void f(final int i4) {
        final j1.b y12 = y1();
        P2(y12, 7, new v.a() { // from class: com.google.android.exoplayer2.analytics.f1
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).f(j1.b.this, i4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.z
    public final void f0(final com.google.android.exoplayer2.decoder.d dVar) {
        final j1.b E1 = E1();
        P2(E1, 1020, new v.a() { // from class: com.google.android.exoplayer2.analytics.u
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.F2(j1.b.this, dVar, (j1) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void g(final List<Metadata> list) {
        final j1.b y12 = y1();
        P2(y12, 3, new v.a() { // from class: com.google.android.exoplayer2.analytics.t0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).t0(j1.b.this, list);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void g0(int i4, @Nullable z.a aVar) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, j1.U, new v.a() { // from class: com.google.android.exoplayer2.analytics.a
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).d0(j1.b.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void h(v1.c cVar) {
        x1.c(this, cVar);
    }

    @Override // com.google.android.exoplayer2.audio.u
    public final void h0(final Exception exc) {
        final j1.b E1 = E1();
        P2(E1, j1.f20797a0, new v.a() { // from class: com.google.android.exoplayer2.analytics.m0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).i0(j1.b.this, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void i(final int i4) {
        final j1.b y12 = y1();
        P2(y12, 9, new v.a() { // from class: com.google.android.exoplayer2.analytics.e
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).W(j1.b.this, i4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.u
    public /* synthetic */ void i0(Format format) {
        com.google.android.exoplayer2.audio.j.f(this, format);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void j(s2 s2Var, final int i4) {
        this.f20773d.l((v1) com.google.android.exoplayer2.util.a.g(this.f20776g));
        final j1.b y12 = y1();
        P2(y12, 0, new v.a() { // from class: com.google.android.exoplayer2.analytics.d
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).C(j1.b.this, i4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void j0(int i4, @Nullable z.a aVar, final com.google.android.exoplayer2.source.o oVar, final com.google.android.exoplayer2.source.s sVar) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, 1001, new v.a() { // from class: com.google.android.exoplayer2.analytics.a0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).k0(j1.b.this, oVar, sVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
    public final void k(final int i4) {
        final j1.b E1 = E1();
        P2(E1, 1015, new v.a() { // from class: com.google.android.exoplayer2.analytics.c
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).q(j1.b.this, i4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void k0(int i4, @Nullable z.a aVar, final int i10) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, j1.T, new v.a() { // from class: com.google.android.exoplayer2.analytics.b
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.X1(j1.b.this, i10, (j1) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void l(final int i4) {
        final j1.b y12 = y1();
        P2(y12, 5, new v.a() { // from class: com.google.android.exoplayer2.analytics.g1
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).p(j1.b.this, i4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void l0(int i4, @Nullable z.a aVar) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, j1.Y, new v.a() { // from class: com.google.android.exoplayer2.analytics.s0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).Q(j1.b.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public void m(final com.google.android.exoplayer2.f1 f1Var) {
        final j1.b y12 = y1();
        P2(y12, 15, new v.a() { // from class: com.google.android.exoplayer2.analytics.r
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).h(j1.b.this, f1Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.u
    public final void m0(final int i4, final long j4, final long j10) {
        final j1.b E1 = E1();
        P2(E1, 1012, new v.a() { // from class: com.google.android.exoplayer2.analytics.i
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).S(j1.b.this, i4, j4, j10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void n(final boolean z9) {
        final j1.b y12 = y1();
        P2(y12, 10, new v.a() { // from class: com.google.android.exoplayer2.analytics.x0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).u(j1.b.this, z9);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void n0(int i4, @Nullable z.a aVar, final com.google.android.exoplayer2.source.o oVar, final com.google.android.exoplayer2.source.s sVar, final IOException iOException, final boolean z9) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, 1003, new v.a() { // from class: com.google.android.exoplayer2.analytics.d0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).j(j1.b.this, oVar, sVar, iOException, z9);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.metadata.e
    public final void o(final Metadata metadata) {
        final j1.b y12 = y1();
        P2(y12, 1007, new v.a() { // from class: com.google.android.exoplayer2.analytics.z
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).m(j1.b.this, metadata);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.z
    public final void o0(final long j4, final int i4) {
        final j1.b D1 = D1();
        P2(D1, j1.P, new v.a() { // from class: com.google.android.exoplayer2.analytics.m
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).b(j1.b.this, j4, i4);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.device.d
    public /* synthetic */ void p(int i4, boolean z9) {
        x1.f(this, i4, z9);
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void p0(int i4, @Nullable z.a aVar) {
        final j1.b C1 = C1(i4, aVar);
        P2(C1, j1.W, new v.a() { // from class: com.google.android.exoplayer2.analytics.l
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).e(j1.b.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n
    public /* synthetic */ void q() {
        x1.s(this);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.text.j
    public /* synthetic */ void r(List list) {
        x1.d(this, list);
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void s(final TrackGroupArray trackGroupArray, final com.google.android.exoplayer2.trackselection.m mVar) {
        final j1.b y12 = y1();
        P2(y12, 2, new v.a() { // from class: com.google.android.exoplayer2.analytics.g0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).g0(j1.b.this, trackGroupArray, mVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.video.n
    public void t(final int i4, final int i10) {
        final j1.b E1 = E1();
        P2(E1, j1.S, new v.a() { // from class: com.google.android.exoplayer2.analytics.f
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).t(j1.b.this, i4, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void u(final ExoPlaybackException exoPlaybackException) {
        final j1.b y12;
        com.google.android.exoplayer2.source.x xVar = exoPlaybackException.mediaPeriodId;
        if (xVar != null) {
            y12 = A1(new z.a(xVar));
        } else {
            y12 = y1();
        }
        P2(y12, 11, new v.a() { // from class: com.google.android.exoplayer2.analytics.n
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).I(j1.b.this, exoPlaybackException);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public final void v(final boolean z9) {
        final j1.b y12 = y1();
        P2(y12, 4, new v.a() { // from class: com.google.android.exoplayer2.analytics.u0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.b2(j1.b.this, z9, (j1) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.audio.i
    public final void w(final float f10) {
        final j1.b E1 = E1();
        P2(E1, 1019, new v.a() { // from class: com.google.android.exoplayer2.analytics.e1
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).e0(j1.b.this, f10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.z
    public final void x(final String str) {
        final j1.b E1 = E1();
        P2(E1, 1024, new v.a() { // from class: com.google.android.exoplayer2.analytics.p0
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                ((j1) obj).a(j1.b.this, str);
            }
        });
    }

    @CallSuper
    public void x1(j1 j1Var) {
        com.google.android.exoplayer2.util.a.g(j1Var);
        this.f20775f.c(j1Var);
    }

    @Override // com.google.android.exoplayer2.audio.u
    public final void y(final com.google.android.exoplayer2.decoder.d dVar) {
        final j1.b E1 = E1();
        P2(E1, 1008, new v.a() { // from class: com.google.android.exoplayer2.analytics.v
            @Override // com.google.android.exoplayer2.util.v.a
            public final void invoke(Object obj) {
                h1.M1(j1.b.this, dVar, (j1) obj);
            }
        });
    }

    protected final j1.b y1() {
        return A1(this.f20773d.d());
    }

    @Override // com.google.android.exoplayer2.v1.h, com.google.android.exoplayer2.v1.f
    public /* synthetic */ void z(v1 v1Var, v1.g gVar) {
        x1.g(this, v1Var, gVar);
    }

    @RequiresNonNull({com.ksyun.media.player.d.d.an})
    protected final j1.b z1(s2 s2Var, int i4, @Nullable z.a aVar) {
        long o12;
        z.a aVar2 = s2Var.v() ? null : aVar;
        long b10 = this.f20770a.b();
        boolean z9 = true;
        boolean z10 = s2Var.equals(this.f20776g.A0()) && i4 == this.f20776g.j0();
        long j4 = 0;
        if (aVar2 != null && aVar2.c()) {
            if ((z10 && this.f20776g.s0() == aVar2.f25222b && this.f20776g.d1() == aVar2.f25223c) ? false : false) {
                j4 = this.f20776g.getCurrentPosition();
            }
        } else if (z10) {
            o12 = this.f20776g.o1();
            return new j1.b(b10, s2Var, i4, aVar2, o12, this.f20776g.A0(), this.f20776g.j0(), this.f20773d.d(), this.f20776g.getCurrentPosition(), this.f20776g.L());
        } else if (!s2Var.v()) {
            j4 = s2Var.r(i4, this.f20772c).d();
        }
        o12 = j4;
        return new j1.b(b10, s2Var, i4, aVar2, o12, this.f20776g.A0(), this.f20776g.j0(), this.f20773d.d(), this.f20776g.getCurrentPosition(), this.f20776g.L());
    }
}
