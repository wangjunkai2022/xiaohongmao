package com.google.android.exoplayer2.analytics;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.v1;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* compiled from: AnalyticsListener.java */
/* loaded from: classes2.dex */
public interface j1 {
    public static final int A = 1011;
    public static final int B = 1012;
    public static final int C = 1013;
    public static final int D = 1014;
    public static final int E = 1015;
    public static final int F = 1016;
    public static final int G = 1017;
    public static final int H = 1018;
    public static final int I = 1019;
    public static final int J = 1020;
    public static final int K = 1021;
    public static final int L = 1022;
    public static final int M = 1023;
    public static final int N = 1024;
    public static final int O = 1025;
    public static final int P = 1026;
    public static final int Q = 1027;
    public static final int R = 1028;
    public static final int S = 1029;
    public static final int T = 1030;
    public static final int U = 1031;
    public static final int V = 1032;
    public static final int W = 1033;
    public static final int X = 1034;
    public static final int Y = 1035;
    public static final int Z = 1036;

    /* renamed from: a  reason: collision with root package name */
    public static final int f20796a = 0;

    /* renamed from: a0  reason: collision with root package name */
    public static final int f20797a0 = 1037;

    /* renamed from: b  reason: collision with root package name */
    public static final int f20798b = 1;

    /* renamed from: b0  reason: collision with root package name */
    public static final int f20799b0 = 1038;

    /* renamed from: c  reason: collision with root package name */
    public static final int f20800c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f20801d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f20802e = 4;

    /* renamed from: f  reason: collision with root package name */
    public static final int f20803f = 5;

    /* renamed from: g  reason: collision with root package name */
    public static final int f20804g = 6;

    /* renamed from: h  reason: collision with root package name */
    public static final int f20805h = 7;

    /* renamed from: i  reason: collision with root package name */
    public static final int f20806i = 8;

    /* renamed from: j  reason: collision with root package name */
    public static final int f20807j = 9;

    /* renamed from: k  reason: collision with root package name */
    public static final int f20808k = 10;

    /* renamed from: l  reason: collision with root package name */
    public static final int f20809l = 11;

    /* renamed from: m  reason: collision with root package name */
    public static final int f20810m = 12;

    /* renamed from: n  reason: collision with root package name */
    public static final int f20811n = 13;

    /* renamed from: o  reason: collision with root package name */
    public static final int f20812o = 15;

    /* renamed from: p  reason: collision with root package name */
    public static final int f20813p = 1000;

    /* renamed from: q  reason: collision with root package name */
    public static final int f20814q = 1001;

    /* renamed from: r  reason: collision with root package name */
    public static final int f20815r = 1002;

    /* renamed from: s  reason: collision with root package name */
    public static final int f20816s = 1003;

    /* renamed from: t  reason: collision with root package name */
    public static final int f20817t = 1004;

    /* renamed from: u  reason: collision with root package name */
    public static final int f20818u = 1005;

    /* renamed from: v  reason: collision with root package name */
    public static final int f20819v = 1006;

    /* renamed from: w  reason: collision with root package name */
    public static final int f20820w = 1007;

    /* renamed from: x  reason: collision with root package name */
    public static final int f20821x = 1008;

    /* renamed from: y  reason: collision with root package name */
    public static final int f20822y = 1009;

    /* renamed from: z  reason: collision with root package name */
    public static final int f20823z = 1010;

    /* compiled from: AnalyticsListener.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* compiled from: AnalyticsListener.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long f20824a;

        /* renamed from: b  reason: collision with root package name */
        public final s2 f20825b;

        /* renamed from: c  reason: collision with root package name */
        public final int f20826c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final z.a f20827d;

        /* renamed from: e  reason: collision with root package name */
        public final long f20828e;

        /* renamed from: f  reason: collision with root package name */
        public final s2 f20829f;

        /* renamed from: g  reason: collision with root package name */
        public final int f20830g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final z.a f20831h;

        /* renamed from: i  reason: collision with root package name */
        public final long f20832i;

        /* renamed from: j  reason: collision with root package name */
        public final long f20833j;

        public b(long j4, s2 s2Var, int i4, @Nullable z.a aVar, long j10, s2 s2Var2, int i10, @Nullable z.a aVar2, long j11, long j12) {
            this.f20824a = j4;
            this.f20825b = s2Var;
            this.f20826c = i4;
            this.f20827d = aVar;
            this.f20828e = j10;
            this.f20829f = s2Var2;
            this.f20830g = i10;
            this.f20831h = aVar2;
            this.f20832i = j11;
            this.f20833j = j12;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f20824a == bVar.f20824a && this.f20826c == bVar.f20826c && this.f20828e == bVar.f20828e && this.f20830g == bVar.f20830g && this.f20832i == bVar.f20832i && this.f20833j == bVar.f20833j && com.google.common.base.w.a(this.f20825b, bVar.f20825b) && com.google.common.base.w.a(this.f20827d, bVar.f20827d) && com.google.common.base.w.a(this.f20829f, bVar.f20829f) && com.google.common.base.w.a(this.f20831h, bVar.f20831h);
        }

        public int hashCode() {
            return com.google.common.base.w.b(Long.valueOf(this.f20824a), this.f20825b, Integer.valueOf(this.f20826c), this.f20827d, Long.valueOf(this.f20828e), this.f20829f, Integer.valueOf(this.f20830g), this.f20831h, Long.valueOf(this.f20832i), Long.valueOf(this.f20833j));
        }
    }

    /* compiled from: AnalyticsListener.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.m f20834a;

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<b> f20835b;

        public c(com.google.android.exoplayer2.util.m mVar, SparseArray<b> sparseArray) {
            this.f20834a = mVar;
            SparseArray<b> sparseArray2 = new SparseArray<>(mVar.d());
            for (int i4 = 0; i4 < mVar.d(); i4++) {
                int c10 = mVar.c(i4);
                sparseArray2.append(c10, (b) com.google.android.exoplayer2.util.a.g(sparseArray.get(c10)));
            }
            this.f20835b = sparseArray2;
        }

        public boolean a(int i4) {
            return this.f20834a.a(i4);
        }

        public boolean b(int... iArr) {
            return this.f20834a.b(iArr);
        }

        public int c(int i4) {
            return this.f20834a.c(i4);
        }

        public b d(int i4) {
            return (b) com.google.android.exoplayer2.util.a.g(this.f20835b.get(i4));
        }

        public int e() {
            return this.f20834a.d();
        }
    }

    void A(b bVar, Format format, @Nullable com.google.android.exoplayer2.decoder.e eVar);

    void B(b bVar, Exception exc);

    void C(b bVar, int i4);

    @Deprecated
    void D(b bVar);

    void E(b bVar, @Nullable com.google.android.exoplayer2.b1 b1Var, int i4);

    @Deprecated
    void F(b bVar);

    void G(b bVar, com.google.android.exoplayer2.decoder.d dVar);

    void H(b bVar);

    void I(b bVar, ExoPlaybackException exoPlaybackException);

    void J(b bVar, int i4, long j4, long j10);

    @Deprecated
    void K(b bVar, int i4, int i10, int i11, float f10);

    @Deprecated
    void L(b bVar, int i4, Format format);

    @Deprecated
    void M(b bVar);

    void N(b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar);

    @Deprecated
    void O(b bVar, int i4, String str, long j4);

    @Deprecated
    void P(b bVar, int i4);

    void Q(b bVar);

    void R(b bVar, t1 t1Var);

    void S(b bVar, int i4, long j4, long j10);

    void T(b bVar, com.google.android.exoplayer2.decoder.d dVar);

    void U(b bVar, com.google.android.exoplayer2.decoder.d dVar);

    void V(b bVar, String str, long j4, long j10);

    void W(b bVar, int i4);

    void X(b bVar, com.google.android.exoplayer2.audio.e eVar);

    void Y(b bVar);

    void Z(b bVar, com.google.android.exoplayer2.video.b0 b0Var);

    void a(b bVar, String str);

    void b(b bVar, long j4, int i4);

    void c(b bVar, int i4);

    @Deprecated
    void c0(b bVar, Format format);

    void d(b bVar, Exception exc);

    void d0(b bVar);

    void e(b bVar);

    void e0(b bVar, float f10);

    void f(b bVar, int i4);

    void f0(b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar);

    @Deprecated
    void g(b bVar, boolean z9);

    void g0(b bVar, TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar);

    void h(b bVar, com.google.android.exoplayer2.f1 f1Var);

    void h0(b bVar, boolean z9);

    void i(b bVar, com.google.android.exoplayer2.decoder.d dVar);

    void i0(b bVar, Exception exc);

    void j(b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar, IOException iOException, boolean z9);

    void j0(b bVar, com.google.android.exoplayer2.source.s sVar);

    @Deprecated
    void k(b bVar, int i4, com.google.android.exoplayer2.decoder.d dVar);

    void k0(b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar);

    @Deprecated
    void l(b bVar, String str, long j4);

    void l0(b bVar, com.google.android.exoplayer2.source.s sVar);

    void m(b bVar, Metadata metadata);

    void m0(b bVar, v1.l lVar, v1.l lVar2, int i4);

    void n(v1 v1Var, c cVar);

    void n0(b bVar, String str);

    @Deprecated
    void o(b bVar, boolean z9, int i4);

    void p(b bVar, int i4);

    @Deprecated
    void p0(b bVar, String str, long j4);

    void q(b bVar, int i4);

    void q0(b bVar, Format format, @Nullable com.google.android.exoplayer2.decoder.e eVar);

    @Deprecated
    void r(b bVar, Format format);

    void r0(b bVar, Object obj, long j4);

    void s(b bVar, long j4);

    @Deprecated
    void s0(b bVar, int i4, com.google.android.exoplayer2.decoder.d dVar);

    void t(b bVar, int i4, int i10);

    void t0(b bVar, List<Metadata> list);

    void u(b bVar, boolean z9);

    void u0(b bVar, boolean z9);

    void v(b bVar, int i4, long j4);

    void w(b bVar, Exception exc);

    void x(b bVar, boolean z9);

    void y(b bVar, boolean z9, int i4);

    void z(b bVar, String str, long j4, long j10);
}
