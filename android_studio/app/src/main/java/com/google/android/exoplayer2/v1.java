package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.m;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* compiled from: Player.java */
/* loaded from: classes2.dex */
public interface v1 {
    public static final int A = 3;
    public static final int B = 0;
    public static final int C = 1;
    public static final int D = 2;
    public static final int E = 3;
    public static final int F = 4;
    public static final int G = 5;
    public static final int H = 6;
    public static final int I = 7;
    public static final int J = 8;
    public static final int K = 9;
    public static final int L = 10;
    public static final int M = 11;
    public static final int N = 12;
    public static final int O = 13;
    public static final int P = 14;
    public static final int Q = 15;
    public static final int R = 1;
    public static final int S = 2;
    public static final int T = 3;
    public static final int U = 4;
    public static final int V = 5;
    public static final int W = 6;
    public static final int X = 7;
    public static final int Y = 8;
    public static final int Z = 9;

    /* renamed from: a0  reason: collision with root package name */
    public static final int f27764a0 = 10;

    /* renamed from: b  reason: collision with root package name */
    public static final int f27765b = 1;

    /* renamed from: b0  reason: collision with root package name */
    public static final int f27766b0 = 11;

    /* renamed from: c  reason: collision with root package name */
    public static final int f27767c = 2;

    /* renamed from: c0  reason: collision with root package name */
    public static final int f27768c0 = 12;

    /* renamed from: d  reason: collision with root package name */
    public static final int f27769d = 3;

    /* renamed from: d0  reason: collision with root package name */
    public static final int f27770d0 = 13;

    /* renamed from: e  reason: collision with root package name */
    public static final int f27771e = 4;

    /* renamed from: e0  reason: collision with root package name */
    public static final int f27772e0 = 14;

    /* renamed from: f  reason: collision with root package name */
    public static final int f27773f = 1;

    /* renamed from: f0  reason: collision with root package name */
    public static final int f27774f0 = 15;

    /* renamed from: g  reason: collision with root package name */
    public static final int f27775g = 2;

    /* renamed from: g0  reason: collision with root package name */
    public static final int f27776g0 = 16;

    /* renamed from: h  reason: collision with root package name */
    public static final int f27777h = 3;

    /* renamed from: h0  reason: collision with root package name */
    public static final int f27778h0 = 17;

    /* renamed from: i  reason: collision with root package name */
    public static final int f27779i = 4;

    /* renamed from: i0  reason: collision with root package name */
    public static final int f27780i0 = 18;

    /* renamed from: j  reason: collision with root package name */
    public static final int f27781j = 5;

    /* renamed from: j0  reason: collision with root package name */
    public static final int f27782j0 = 19;

    /* renamed from: k  reason: collision with root package name */
    public static final int f27783k = 0;

    /* renamed from: k0  reason: collision with root package name */
    public static final int f27784k0 = 20;

    /* renamed from: l  reason: collision with root package name */
    public static final int f27785l = 1;

    /* renamed from: l0  reason: collision with root package name */
    public static final int f27786l0 = 21;

    /* renamed from: m  reason: collision with root package name */
    public static final int f27787m = 0;

    /* renamed from: m0  reason: collision with root package name */
    public static final int f27788m0 = 22;

    /* renamed from: n  reason: collision with root package name */
    public static final int f27789n = 1;

    /* renamed from: o  reason: collision with root package name */
    public static final int f27790o = 2;

    /* renamed from: p  reason: collision with root package name */
    public static final int f27791p = 0;

    /* renamed from: q  reason: collision with root package name */
    public static final int f27792q = 1;

    /* renamed from: r  reason: collision with root package name */
    public static final int f27793r = 2;

    /* renamed from: s  reason: collision with root package name */
    public static final int f27794s = 3;

    /* renamed from: t  reason: collision with root package name */
    public static final int f27795t = 4;

    /* renamed from: u  reason: collision with root package name */
    public static final int f27796u = 5;

    /* renamed from: v  reason: collision with root package name */
    public static final int f27797v = 0;

    /* renamed from: w  reason: collision with root package name */
    public static final int f27798w = 1;

    /* renamed from: x  reason: collision with root package name */
    public static final int f27799x = 0;

    /* renamed from: y  reason: collision with root package name */
    public static final int f27800y = 1;

    /* renamed from: z  reason: collision with root package name */
    public static final int f27801z = 2;

    /* compiled from: Player.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* compiled from: Player.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: b  reason: collision with root package name */
        public static final c f27802b = new a().e();

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.m f27803a;

        /* compiled from: Player.java */
        /* loaded from: classes2.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private final m.b f27804a = new m.b();

            public a a(int i4) {
                this.f27804a.a(i4);
                return this;
            }

            public a b(c cVar) {
                this.f27804a.b(cVar.f27803a);
                return this;
            }

            public a c(int... iArr) {
                this.f27804a.c(iArr);
                return this;
            }

            public a d(int i4, boolean z9) {
                this.f27804a.d(i4, z9);
                return this;
            }

            public c e() {
                return new c(this.f27804a.e());
            }
        }

        public boolean b(int i4) {
            return this.f27803a.a(i4);
        }

        public int c(int i4) {
            return this.f27803a.c(i4);
        }

        public int d() {
            return this.f27803a.d();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.f27803a.equals(((c) obj).f27803a);
            }
            return false;
        }

        public int hashCode() {
            return this.f27803a.hashCode();
        }

        private c(com.google.android.exoplayer2.util.m mVar) {
            this.f27803a = mVar;
        }
    }

    /* compiled from: Player.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface d {
    }

    /* compiled from: Player.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface e {
    }

    /* compiled from: Player.java */
    @Deprecated
    /* loaded from: classes2.dex */
    public interface f {
        void B(@Nullable b1 b1Var, int i4);

        void C(boolean z9, int i4);

        void E(boolean z9);

        @Deprecated
        void G(boolean z9);

        @Deprecated
        void U(int i4);

        @Deprecated
        void X();

        @Deprecated
        void a0(boolean z9, int i4);

        void c(t1 t1Var);

        void e(l lVar, l lVar2, int i4);

        @Deprecated
        void e0(s2 s2Var, @Nullable Object obj, int i4);

        void f(int i4);

        void g(List<Metadata> list);

        void h(c cVar);

        void i(int i4);

        void j(s2 s2Var, int i4);

        void l(int i4);

        void m(f1 f1Var);

        void n(boolean z9);

        void s(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar);

        void u(ExoPlaybackException exoPlaybackException);

        void v(boolean z9);

        void z(v1 v1Var, g gVar);
    }

    /* compiled from: Player.java */
    /* loaded from: classes2.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.m f27805a;

        public g(com.google.android.exoplayer2.util.m mVar) {
            this.f27805a = mVar;
        }

        public boolean a(int i4) {
            return this.f27805a.a(i4);
        }

        public boolean b(int... iArr) {
            return this.f27805a.b(iArr);
        }

        public int c(int i4) {
            return this.f27805a.c(i4);
        }

        public int d() {
            return this.f27805a.d();
        }
    }

    /* compiled from: Player.java */
    /* loaded from: classes2.dex */
    public interface h extends com.google.android.exoplayer2.video.n, com.google.android.exoplayer2.audio.i, com.google.android.exoplayer2.text.j, com.google.android.exoplayer2.metadata.e, com.google.android.exoplayer2.device.d, f {
        void A(com.google.android.exoplayer2.audio.e eVar);

        void B(@Nullable b1 b1Var, int i4);

        void C(boolean z9, int i4);

        void D(com.google.android.exoplayer2.device.b bVar);

        void E(boolean z9);

        void a(boolean z9);

        @Override // com.google.android.exoplayer2.video.n, com.google.android.exoplayer2.video.z
        void b(com.google.android.exoplayer2.video.b0 b0Var);

        void c(t1 t1Var);

        void e(l lVar, l lVar2, int i4);

        void f(int i4);

        void g(List<Metadata> list);

        void h(c cVar);

        void i(int i4);

        void j(s2 s2Var, int i4);

        void k(int i4);

        void l(int i4);

        void m(f1 f1Var);

        void n(boolean z9);

        void o(Metadata metadata);

        void p(int i4, boolean z9);

        @Override // com.google.android.exoplayer2.video.n
        void q();

        void r(List<com.google.android.exoplayer2.text.a> list);

        void s(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar);

        @Override // com.google.android.exoplayer2.video.n
        void t(int i4, int i10);

        void u(ExoPlaybackException exoPlaybackException);

        void v(boolean z9);

        void w(float f10);

        void z(v1 v1Var, g gVar);
    }

    /* compiled from: Player.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface i {
    }

    /* compiled from: Player.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface j {
    }

    /* compiled from: Player.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface k {
    }

    /* compiled from: Player.java */
    /* loaded from: classes2.dex */
    public static final class l implements com.google.android.exoplayer2.h {

        /* renamed from: i  reason: collision with root package name */
        private static final int f27806i = 0;

        /* renamed from: j  reason: collision with root package name */
        private static final int f27807j = 1;

        /* renamed from: k  reason: collision with root package name */
        private static final int f27808k = 2;

        /* renamed from: l  reason: collision with root package name */
        private static final int f27809l = 3;

        /* renamed from: m  reason: collision with root package name */
        private static final int f27810m = 4;

        /* renamed from: n  reason: collision with root package name */
        private static final int f27811n = 5;

        /* renamed from: o  reason: collision with root package name */
        public static final h.a<l> f27812o = y1.f28143a;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Object f27813a;

        /* renamed from: b  reason: collision with root package name */
        public final int f27814b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Object f27815c;

        /* renamed from: d  reason: collision with root package name */
        public final int f27816d;

        /* renamed from: e  reason: collision with root package name */
        public final long f27817e;

        /* renamed from: f  reason: collision with root package name */
        public final long f27818f;

        /* renamed from: g  reason: collision with root package name */
        public final int f27819g;

        /* renamed from: h  reason: collision with root package name */
        public final int f27820h;

        public l(@Nullable Object obj, int i4, @Nullable Object obj2, int i10, long j4, long j10, int i11, int i12) {
            this.f27813a = obj;
            this.f27814b = i4;
            this.f27815c = obj2;
            this.f27816d = i10;
            this.f27817e = j4;
            this.f27818f = j10;
            this.f27819g = i11;
            this.f27820h = i12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static l b(Bundle bundle) {
            return new l(null, bundle.getInt(c(0), -1), null, bundle.getInt(c(1), -1), bundle.getLong(c(2), com.google.android.exoplayer2.i.f23649b), bundle.getLong(c(3), com.google.android.exoplayer2.i.f23649b), bundle.getInt(c(4), -1), bundle.getInt(c(5), -1));
        }

        private static String c(int i4) {
            return Integer.toString(i4, 36);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || l.class != obj.getClass()) {
                return false;
            }
            l lVar = (l) obj;
            return this.f27814b == lVar.f27814b && this.f27816d == lVar.f27816d && this.f27817e == lVar.f27817e && this.f27818f == lVar.f27818f && this.f27819g == lVar.f27819g && this.f27820h == lVar.f27820h && com.google.common.base.w.a(this.f27813a, lVar.f27813a) && com.google.common.base.w.a(this.f27815c, lVar.f27815c);
        }

        public int hashCode() {
            return com.google.common.base.w.b(this.f27813a, Integer.valueOf(this.f27814b), this.f27815c, Integer.valueOf(this.f27816d), Integer.valueOf(this.f27814b), Long.valueOf(this.f27817e), Long.valueOf(this.f27818f), Integer.valueOf(this.f27819g), Integer.valueOf(this.f27820h));
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(c(0), this.f27814b);
            bundle.putInt(c(1), this.f27816d);
            bundle.putLong(c(2), this.f27817e);
            bundle.putLong(c(3), this.f27818f);
            bundle.putInt(c(4), this.f27819g);
            bundle.putInt(c(5), this.f27820h);
            return bundle;
        }
    }

    /* compiled from: Player.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface m {
    }

    /* compiled from: Player.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface n {
    }

    /* compiled from: Player.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface o {
    }

    com.google.android.exoplayer2.video.b0 A();

    s2 A0();

    boolean A1();

    float B();

    Looper B0();

    com.google.android.exoplayer2.device.b C();

    com.google.android.exoplayer2.trackselection.m C0();

    void C1(int i4, int i10, int i11);

    void D();

    void D1(List<b1> list);

    void E(float f10);

    void G(@Nullable SurfaceView surfaceView);

    boolean H();

    boolean H1();

    void I(int i4);

    long I1();

    boolean K();

    long L();

    long L0();

    f1 L1();

    void M();

    void M1(int i4, b1 b1Var);

    @Nullable
    b1 N();

    c N0();

    void N1(List<b1> list);

    void O0(b1 b1Var);

    boolean Q0();

    int R();

    void R0(boolean z9);

    List<Metadata> S();

    @Nullable
    @Deprecated
    ExoPlaybackException T();

    boolean U();

    b1 U0(int i4);

    void W(h hVar);

    void X();

    long X0();

    void Y(List<b1> list, boolean z9);

    int Y0();

    void Z0(b1 b1Var);

    void a();

    boolean b();

    boolean b0();

    int c();

    @Nullable
    @Deprecated
    Object c0();

    @Deprecated
    void c1(f fVar);

    void d();

    void d0(int i4);

    int d1();

    t1 e();

    int e0();

    void e1(b1 b1Var, long j4);

    void f(float f10);

    void g(t1 t1Var);

    @Deprecated
    void g0(f fVar);

    com.google.android.exoplayer2.audio.e getAudioAttributes();

    long getCurrentPosition();

    long getDuration();

    void h(@Nullable Surface surface);

    void h1(b1 b1Var, boolean z9);

    boolean hasNext();

    boolean hasPrevious();

    void i(@Nullable Surface surface);

    void i0(int i4, int i10);

    boolean isPlaying();

    void j(int i4);

    int j0();

    int k();

    @Nullable
    ExoPlaybackException k0();

    void l0(boolean z9);

    void m();

    void m1(List<b1> list, int i4, long j4);

    void n(@Nullable SurfaceView surfaceView);

    void n1(int i4);

    void next();

    void o(@Nullable SurfaceHolder surfaceHolder);

    @Nullable
    Object o0();

    long o1();

    void p1(h hVar);

    void pause();

    void previous();

    List<com.google.android.exoplayer2.text.a> q();

    void q1(int i4, List<b1> list);

    void r(boolean z9);

    int r1();

    void release();

    void s();

    int s0();

    long s1();

    void seekTo(long j4);

    void stop();

    void t(@Nullable TextureView textureView);

    boolean t0(int i4);

    void v(@Nullable SurfaceHolder surfaceHolder);

    int w();

    void x(int i4, long j4);

    int x1();

    @Deprecated
    void y(boolean z9);

    int y0();

    void z(@Nullable TextureView textureView);

    TrackGroupArray z0();

    void z1(int i4, int i10);
}
