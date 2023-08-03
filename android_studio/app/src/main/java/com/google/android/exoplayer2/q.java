package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.l;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.z1;
import java.util.List;

/* compiled from: ExoPlayer.java */
/* loaded from: classes2.dex */
public interface q extends v1 {

    /* renamed from: a  reason: collision with root package name */
    public static final long f24489a = 500;

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes2.dex */
    public interface a {
        float B();

        boolean F();

        void F0();

        void G0(com.google.android.exoplayer2.audio.e eVar, boolean z9);

        void J(boolean z9);

        @Deprecated
        void b1(com.google.android.exoplayer2.audio.i iVar);

        void f(float f10);

        com.google.android.exoplayer2.audio.e getAudioAttributes();

        int getAudioSessionId();

        void l(int i4);

        void u(com.google.android.exoplayer2.audio.y yVar);

        @Deprecated
        void w1(com.google.android.exoplayer2.audio.i iVar);
    }

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes2.dex */
    public interface b {
        void O(boolean z9);

        void c0(boolean z9);
    }

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes2.dex */
    public interface d {
        com.google.android.exoplayer2.device.b C();

        @Deprecated
        void E1(com.google.android.exoplayer2.device.d dVar);

        boolean H();

        void I(int i4);

        @Deprecated
        void a1(com.google.android.exoplayer2.device.d dVar);

        void m();

        void r(boolean z9);

        void s();

        int w();
    }

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes2.dex */
    public interface e {
        @Deprecated
        void J1(com.google.android.exoplayer2.metadata.e eVar);

        @Deprecated
        void n0(com.google.android.exoplayer2.metadata.e eVar);
    }

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes2.dex */
    public interface f {
        @Deprecated
        void B1(com.google.android.exoplayer2.text.j jVar);

        @Deprecated
        void g1(com.google.android.exoplayer2.text.j jVar);

        List<com.google.android.exoplayer2.text.a> q();
    }

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes2.dex */
    public interface g {
        com.google.android.exoplayer2.video.b0 A();

        void D();

        @Deprecated
        void E0(com.google.android.exoplayer2.video.n nVar);

        int F1();

        void G(@Nullable SurfaceView surfaceView);

        void M0(com.google.android.exoplayer2.video.spherical.a aVar);

        void P0(com.google.android.exoplayer2.video.j jVar);

        void W0(com.google.android.exoplayer2.video.spherical.a aVar);

        void h(@Nullable Surface surface);

        void i(@Nullable Surface surface);

        @Deprecated
        void l1(com.google.android.exoplayer2.video.n nVar);

        void n(@Nullable SurfaceView surfaceView);

        void o(@Nullable SurfaceHolder surfaceHolder);

        void p(int i4);

        void r0(com.google.android.exoplayer2.video.j jVar);

        void t(@Nullable TextureView textureView);

        void v(@Nullable SurfaceHolder surfaceHolder);

        void z(@Nullable TextureView textureView);
    }

    int D0(int i4);

    z1 G1(z1.b bVar);

    @Nullable
    f H0();

    void I0(com.google.android.exoplayer2.source.z zVar, long j4);

    @Deprecated
    void J0(com.google.android.exoplayer2.source.z zVar, boolean z9, boolean z10);

    boolean K0();

    void K1(com.google.android.exoplayer2.source.z zVar, boolean z9);

    com.google.android.exoplayer2.util.d O();

    @Nullable
    com.google.android.exoplayer2.trackselection.o P();

    void Q(com.google.android.exoplayer2.source.z zVar);

    void S0(@Nullable j2 j2Var);

    int T0();

    void V(com.google.android.exoplayer2.source.z zVar);

    void V0(int i4, List<com.google.android.exoplayer2.source.z> list);

    void Z(boolean z9);

    void a0(int i4, com.google.android.exoplayer2.source.z zVar);

    void f0(b bVar);

    void f1(List<com.google.android.exoplayer2.source.z> list);

    void h0(List<com.google.android.exoplayer2.source.z> list);

    @Nullable
    d i1();

    void j1(b bVar);

    @Nullable
    a k1();

    @Nullable
    g m0();

    void p0(List<com.google.android.exoplayer2.source.z> list, boolean z9);

    void q0(boolean z9);

    @Deprecated
    void retry();

    Looper t1();

    @Deprecated
    void u0(com.google.android.exoplayer2.source.z zVar);

    void u1(com.google.android.exoplayer2.source.z0 z0Var);

    void v0(boolean z9);

    boolean v1();

    void w0(List<com.google.android.exoplayer2.source.z> list, int i4, long j4);

    @Nullable
    e x0();

    j2 y1();

    /* compiled from: ExoPlayer.java */
    @Deprecated
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final e2[] f24490a;

        /* renamed from: b  reason: collision with root package name */
        private com.google.android.exoplayer2.util.d f24491b;

        /* renamed from: c  reason: collision with root package name */
        private com.google.android.exoplayer2.trackselection.o f24492c;

        /* renamed from: d  reason: collision with root package name */
        private com.google.android.exoplayer2.source.j0 f24493d;

        /* renamed from: e  reason: collision with root package name */
        private z0 f24494e;

        /* renamed from: f  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.e f24495f;

        /* renamed from: g  reason: collision with root package name */
        private Looper f24496g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private com.google.android.exoplayer2.analytics.h1 f24497h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f24498i;

        /* renamed from: j  reason: collision with root package name */
        private j2 f24499j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f24500k;

        /* renamed from: l  reason: collision with root package name */
        private long f24501l;

        /* renamed from: m  reason: collision with root package name */
        private y0 f24502m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f24503n;

        /* renamed from: o  reason: collision with root package name */
        private long f24504o;

        public c(Context context, e2... e2VarArr) {
            this(e2VarArr, new DefaultTrackSelector(context), new com.google.android.exoplayer2.source.k(context), new m(), com.google.android.exoplayer2.upstream.r.m(context));
        }

        public q a() {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24503n = true;
            p0 p0Var = new p0(this.f24490a, this.f24492c, this.f24493d, this.f24494e, this.f24495f, this.f24497h, this.f24498i, this.f24499j, this.f24502m, this.f24501l, this.f24500k, this.f24491b, this.f24496g, null, v1.c.f27802b);
            long j4 = this.f24504o;
            if (j4 > 0) {
                p0Var.q2(j4);
            }
            return p0Var;
        }

        public c b(long j4) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24504o = j4;
            return this;
        }

        public c c(com.google.android.exoplayer2.analytics.h1 h1Var) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24497h = h1Var;
            return this;
        }

        public c d(com.google.android.exoplayer2.upstream.e eVar) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24495f = eVar;
            return this;
        }

        @VisibleForTesting
        public c e(com.google.android.exoplayer2.util.d dVar) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24491b = dVar;
            return this;
        }

        public c f(y0 y0Var) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24502m = y0Var;
            return this;
        }

        public c g(z0 z0Var) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24494e = z0Var;
            return this;
        }

        public c h(Looper looper) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24496g = looper;
            return this;
        }

        public c i(com.google.android.exoplayer2.source.j0 j0Var) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24493d = j0Var;
            return this;
        }

        public c j(boolean z9) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24500k = z9;
            return this;
        }

        public c k(long j4) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24501l = j4;
            return this;
        }

        public c l(j2 j2Var) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24499j = j2Var;
            return this;
        }

        public c m(com.google.android.exoplayer2.trackselection.o oVar) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24492c = oVar;
            return this;
        }

        public c n(boolean z9) {
            com.google.android.exoplayer2.util.a.i(!this.f24503n);
            this.f24498i = z9;
            return this;
        }

        public c(e2[] e2VarArr, com.google.android.exoplayer2.trackselection.o oVar, com.google.android.exoplayer2.source.j0 j0Var, z0 z0Var, com.google.android.exoplayer2.upstream.e eVar) {
            com.google.android.exoplayer2.util.a.a(e2VarArr.length > 0);
            this.f24490a = e2VarArr;
            this.f24492c = oVar;
            this.f24493d = j0Var;
            this.f24494e = z0Var;
            this.f24495f = eVar;
            this.f24496g = com.google.android.exoplayer2.util.z0.X();
            this.f24498i = true;
            this.f24499j = j2.f23772g;
            this.f24502m = new l.b().a();
            this.f24491b = com.google.android.exoplayer2.util.d.f27523a;
            this.f24501l = 500L;
        }
    }
}
