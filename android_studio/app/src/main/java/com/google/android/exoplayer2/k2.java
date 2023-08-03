package com.google.android.exoplayer2;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.b;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.l;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.z1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* compiled from: SimpleExoPlayer.java */
/* loaded from: classes2.dex */
public class k2 extends e implements q, q.a, q.g, q.f, q.e, q.d {

    /* renamed from: i1  reason: collision with root package name */
    public static final long f23783i1 = 2000;

    /* renamed from: j1  reason: collision with root package name */
    private static final String f23784j1 = "SimpleExoPlayer";
    private final com.google.android.exoplayer2.b A0;
    private final com.google.android.exoplayer2.d B0;
    private final n2 C0;
    private final v2 D0;
    private final w2 E0;
    private final long F0;
    @Nullable
    private Format G0;
    @Nullable
    private Format H0;
    @Nullable
    private AudioTrack I0;
    @Nullable
    private Object J0;
    @Nullable
    private Surface K0;
    @Nullable
    private SurfaceHolder L0;
    @Nullable
    private SphericalGLSurfaceView M0;
    private boolean N0;
    @Nullable
    private TextureView O0;
    private int P0;
    private int Q0;
    private int R0;
    @Nullable
    private com.google.android.exoplayer2.decoder.d S0;
    @Nullable
    private com.google.android.exoplayer2.decoder.d T0;
    private int U0;
    private com.google.android.exoplayer2.audio.e V0;
    private float W0;
    private boolean X0;
    private List<com.google.android.exoplayer2.text.a> Y0;
    @Nullable
    private com.google.android.exoplayer2.video.j Z0;
    @Nullable

    /* renamed from: a1  reason: collision with root package name */
    private com.google.android.exoplayer2.video.spherical.a f23785a1;

    /* renamed from: b1  reason: collision with root package name */
    private boolean f23786b1;

    /* renamed from: c1  reason: collision with root package name */
    private boolean f23787c1;
    @Nullable

    /* renamed from: d1  reason: collision with root package name */
    private PriorityTaskManager f23788d1;

    /* renamed from: e1  reason: collision with root package name */
    private boolean f23789e1;

    /* renamed from: f1  reason: collision with root package name */
    private boolean f23790f1;

    /* renamed from: g1  reason: collision with root package name */
    private com.google.android.exoplayer2.device.b f23791g1;

    /* renamed from: h1  reason: collision with root package name */
    private com.google.android.exoplayer2.video.b0 f23792h1;

    /* renamed from: o0  reason: collision with root package name */
    protected final e2[] f23793o0;

    /* renamed from: p0  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g f23794p0;

    /* renamed from: q0  reason: collision with root package name */
    private final Context f23795q0;

    /* renamed from: r0  reason: collision with root package name */
    private final p0 f23796r0;

    /* renamed from: s0  reason: collision with root package name */
    private final c f23797s0;

    /* renamed from: t0  reason: collision with root package name */
    private final d f23798t0;

    /* renamed from: u0  reason: collision with root package name */
    private final CopyOnWriteArraySet<com.google.android.exoplayer2.video.n> f23799u0;

    /* renamed from: v0  reason: collision with root package name */
    private final CopyOnWriteArraySet<com.google.android.exoplayer2.audio.i> f23800v0;

    /* renamed from: w0  reason: collision with root package name */
    private final CopyOnWriteArraySet<com.google.android.exoplayer2.text.j> f23801w0;

    /* renamed from: x0  reason: collision with root package name */
    private final CopyOnWriteArraySet<com.google.android.exoplayer2.metadata.e> f23802x0;

    /* renamed from: y0  reason: collision with root package name */
    private final CopyOnWriteArraySet<com.google.android.exoplayer2.device.d> f23803y0;

    /* renamed from: z0  reason: collision with root package name */
    private final com.google.android.exoplayer2.analytics.h1 f23804z0;

    /* compiled from: SimpleExoPlayer.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Context f23805a;

        /* renamed from: b  reason: collision with root package name */
        private final i2 f23806b;

        /* renamed from: c  reason: collision with root package name */
        private com.google.android.exoplayer2.util.d f23807c;

        /* renamed from: d  reason: collision with root package name */
        private long f23808d;

        /* renamed from: e  reason: collision with root package name */
        private com.google.android.exoplayer2.trackselection.o f23809e;

        /* renamed from: f  reason: collision with root package name */
        private com.google.android.exoplayer2.source.j0 f23810f;

        /* renamed from: g  reason: collision with root package name */
        private z0 f23811g;

        /* renamed from: h  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.e f23812h;

        /* renamed from: i  reason: collision with root package name */
        private com.google.android.exoplayer2.analytics.h1 f23813i;

        /* renamed from: j  reason: collision with root package name */
        private Looper f23814j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private PriorityTaskManager f23815k;

        /* renamed from: l  reason: collision with root package name */
        private com.google.android.exoplayer2.audio.e f23816l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f23817m;

        /* renamed from: n  reason: collision with root package name */
        private int f23818n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f23819o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f23820p;

        /* renamed from: q  reason: collision with root package name */
        private int f23821q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f23822r;

        /* renamed from: s  reason: collision with root package name */
        private j2 f23823s;

        /* renamed from: t  reason: collision with root package name */
        private y0 f23824t;

        /* renamed from: u  reason: collision with root package name */
        private long f23825u;

        /* renamed from: v  reason: collision with root package name */
        private long f23826v;

        /* renamed from: w  reason: collision with root package name */
        private boolean f23827w;

        /* renamed from: x  reason: collision with root package name */
        private boolean f23828x;

        public b(Context context) {
            this(context, new o(context), new com.google.android.exoplayer2.extractor.h());
        }

        public b A(com.google.android.exoplayer2.audio.e eVar, boolean z9) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23816l = eVar;
            this.f23817m = z9;
            return this;
        }

        public b B(com.google.android.exoplayer2.upstream.e eVar) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23812h = eVar;
            return this;
        }

        @VisibleForTesting
        public b C(com.google.android.exoplayer2.util.d dVar) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23807c = dVar;
            return this;
        }

        public b D(long j4) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23826v = j4;
            return this;
        }

        public b E(boolean z9) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23819o = z9;
            return this;
        }

        public b F(y0 y0Var) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23824t = y0Var;
            return this;
        }

        public b G(z0 z0Var) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23811g = z0Var;
            return this;
        }

        public b H(Looper looper) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23814j = looper;
            return this;
        }

        public b I(com.google.android.exoplayer2.source.j0 j0Var) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23810f = j0Var;
            return this;
        }

        public b J(boolean z9) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23827w = z9;
            return this;
        }

        public b K(@Nullable PriorityTaskManager priorityTaskManager) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23815k = priorityTaskManager;
            return this;
        }

        public b L(long j4) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23825u = j4;
            return this;
        }

        public b M(j2 j2Var) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23823s = j2Var;
            return this;
        }

        public b N(boolean z9) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23820p = z9;
            return this;
        }

        public b O(com.google.android.exoplayer2.trackselection.o oVar) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23809e = oVar;
            return this;
        }

        public b P(boolean z9) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23822r = z9;
            return this;
        }

        public b Q(int i4) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23821q = i4;
            return this;
        }

        public b R(int i4) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23818n = i4;
            return this;
        }

        public k2 x() {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23828x = true;
            return new k2(this);
        }

        public b y(long j4) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23808d = j4;
            return this;
        }

        public b z(com.google.android.exoplayer2.analytics.h1 h1Var) {
            com.google.android.exoplayer2.util.a.i(!this.f23828x);
            this.f23813i = h1Var;
            return this;
        }

        public b(Context context, i2 i2Var) {
            this(context, i2Var, new com.google.android.exoplayer2.extractor.h());
        }

        public b(Context context, com.google.android.exoplayer2.extractor.q qVar) {
            this(context, new o(context), qVar);
        }

        public b(Context context, i2 i2Var, com.google.android.exoplayer2.extractor.q qVar) {
            this(context, i2Var, new DefaultTrackSelector(context), new com.google.android.exoplayer2.source.k(context, qVar), new m(), com.google.android.exoplayer2.upstream.r.m(context), new com.google.android.exoplayer2.analytics.h1(com.google.android.exoplayer2.util.d.f27523a));
        }

        public b(Context context, i2 i2Var, com.google.android.exoplayer2.trackselection.o oVar, com.google.android.exoplayer2.source.j0 j0Var, z0 z0Var, com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.analytics.h1 h1Var) {
            this.f23805a = context;
            this.f23806b = i2Var;
            this.f23809e = oVar;
            this.f23810f = j0Var;
            this.f23811g = z0Var;
            this.f23812h = eVar;
            this.f23813i = h1Var;
            this.f23814j = com.google.android.exoplayer2.util.z0.X();
            this.f23816l = com.google.android.exoplayer2.audio.e.f21185f;
            this.f23818n = 0;
            this.f23821q = 1;
            this.f23822r = true;
            this.f23823s = j2.f23772g;
            this.f23824t = new l.b().a();
            this.f23807c = com.google.android.exoplayer2.util.d.f27523a;
            this.f23825u = 500L;
            this.f23826v = k2.f23783i1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SimpleExoPlayer.java */
    /* loaded from: classes2.dex */
    public final class c implements com.google.android.exoplayer2.video.z, com.google.android.exoplayer2.audio.u, com.google.android.exoplayer2.text.j, com.google.android.exoplayer2.metadata.e, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.b, d.c, b.InterfaceC0156b, n2.b, v1.f, q.b {
        private c() {
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void B(b1 b1Var, int i4) {
            w1.f(this, b1Var, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public void C(boolean z9, int i4) {
            k2.this.T2();
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void E(boolean z9) {
            w1.d(this, z9);
        }

        @Override // com.google.android.exoplayer2.video.z
        public void F(String str, long j4, long j10) {
            k2.this.f23804z0.F(str, j4, j10);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void G(boolean z9) {
            w1.e(this, z9);
        }

        @Override // com.google.android.exoplayer2.n2.b
        public void H(int i4) {
            com.google.android.exoplayer2.device.b w22 = k2.w2(k2.this.C0);
            if (w22.equals(k2.this.f23791g1)) {
                return;
            }
            k2.this.f23791g1 = w22;
            Iterator it = k2.this.f23803y0.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.device.d) it.next()).D(w22);
            }
        }

        @Override // com.google.android.exoplayer2.b.InterfaceC0156b
        public void I() {
            k2.this.S2(false, -1, 3);
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.b
        public void J(Surface surface) {
            k2.this.Q2(null);
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.b
        public void K(Surface surface) {
            k2.this.Q2(surface);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public void L(String str) {
            k2.this.f23804z0.L(str);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public void M(String str, long j4, long j10) {
            k2.this.f23804z0.M(str, j4, j10);
        }

        @Override // com.google.android.exoplayer2.n2.b
        public void N(int i4, boolean z9) {
            Iterator it = k2.this.f23803y0.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.device.d) it.next()).p(i4, z9);
            }
        }

        @Override // com.google.android.exoplayer2.q.b
        public void O(boolean z9) {
            k2.this.T2();
        }

        @Override // com.google.android.exoplayer2.video.z
        public /* synthetic */ void P(Format format) {
            com.google.android.exoplayer2.video.o.i(this, format);
        }

        @Override // com.google.android.exoplayer2.video.z
        public void Q(Format format, @Nullable com.google.android.exoplayer2.decoder.e eVar) {
            k2.this.G0 = format;
            k2.this.f23804z0.Q(format, eVar);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public void R(long j4) {
            k2.this.f23804z0.R(j4);
        }

        @Override // com.google.android.exoplayer2.video.z
        public void S(Exception exc) {
            k2.this.f23804z0.S(exc);
        }

        @Override // com.google.android.exoplayer2.video.z
        public void T(com.google.android.exoplayer2.decoder.d dVar) {
            k2.this.f23804z0.T(dVar);
            k2.this.G0 = null;
            k2.this.S0 = null;
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void U(int i4) {
            w1.n(this, i4);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public void V(com.google.android.exoplayer2.decoder.d dVar) {
            k2.this.f23804z0.V(dVar);
            k2.this.H0 = null;
            k2.this.T0 = null;
        }

        @Override // com.google.android.exoplayer2.d.c
        public void W(float f10) {
            k2.this.J2();
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void X() {
            w1.q(this);
        }

        @Override // com.google.android.exoplayer2.d.c
        public void Y(int i4) {
            boolean Q0 = k2.this.Q0();
            k2.this.S2(Q0, i4, k2.A2(Q0, i4));
        }

        @Override // com.google.android.exoplayer2.video.z
        public void Z(int i4, long j4) {
            k2.this.f23804z0.Z(i4, j4);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public void a(boolean z9) {
            if (k2.this.X0 == z9) {
                return;
            }
            k2.this.X0 = z9;
            k2.this.F2();
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void a0(boolean z9, int i4) {
            w1.m(this, z9, i4);
        }

        @Override // com.google.android.exoplayer2.video.z
        public void b(com.google.android.exoplayer2.video.b0 b0Var) {
            k2.this.f23792h1 = b0Var;
            k2.this.f23804z0.b(b0Var);
            Iterator it = k2.this.f23799u0.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.video.n nVar = (com.google.android.exoplayer2.video.n) it.next();
                nVar.b(b0Var);
                nVar.c0(b0Var.f27885a, b0Var.f27886b, b0Var.f27887c, b0Var.f27888d);
            }
        }

        @Override // com.google.android.exoplayer2.audio.u
        public void b0(Format format, @Nullable com.google.android.exoplayer2.decoder.e eVar) {
            k2.this.H0 = format;
            k2.this.f23804z0.b0(format, eVar);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void c(t1 t1Var) {
            w1.i(this, t1Var);
        }

        @Override // com.google.android.exoplayer2.q.b
        public /* synthetic */ void c0(boolean z9) {
            r.a(this, z9);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public void d(Exception exc) {
            k2.this.f23804z0.d(exc);
        }

        @Override // com.google.android.exoplayer2.video.z
        public void d0(Object obj, long j4) {
            k2.this.f23804z0.d0(obj, j4);
            if (k2.this.J0 == obj) {
                Iterator it = k2.this.f23799u0.iterator();
                while (it.hasNext()) {
                    ((com.google.android.exoplayer2.video.n) it.next()).q();
                }
            }
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void e(v1.l lVar, v1.l lVar2, int i4) {
            w1.o(this, lVar, lVar2, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void e0(s2 s2Var, Object obj, int i4) {
            w1.u(this, s2Var, obj, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void f(int i4) {
            w1.k(this, i4);
        }

        @Override // com.google.android.exoplayer2.video.z
        public void f0(com.google.android.exoplayer2.decoder.d dVar) {
            k2.this.S0 = dVar;
            k2.this.f23804z0.f0(dVar);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void g(List list) {
            w1.s(this, list);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void h(v1.c cVar) {
            w1.a(this, cVar);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public void h0(Exception exc) {
            k2.this.f23804z0.h0(exc);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void i(int i4) {
            w1.p(this, i4);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public /* synthetic */ void i0(Format format) {
            com.google.android.exoplayer2.audio.j.f(this, format);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void j(s2 s2Var, int i4) {
            w1.t(this, s2Var, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public void l(int i4) {
            k2.this.T2();
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void m(f1 f1Var) {
            w1.g(this, f1Var);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public void m0(int i4, long j4, long j10) {
            k2.this.f23804z0.m0(i4, j4, j10);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void n(boolean z9) {
            w1.r(this, z9);
        }

        @Override // com.google.android.exoplayer2.metadata.e
        public void o(Metadata metadata) {
            k2.this.f23804z0.o(metadata);
            k2.this.f23796r0.Y2(metadata);
            Iterator it = k2.this.f23802x0.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.metadata.e) it.next()).o(metadata);
            }
        }

        @Override // com.google.android.exoplayer2.video.z
        public void o0(long j4, int i4) {
            k2.this.f23804z0.o0(j4, i4);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i10) {
            k2.this.O2(surfaceTexture);
            k2.this.E2(i4, i10);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            k2.this.Q2(null);
            k2.this.E2(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i10) {
            k2.this.E2(i4, i10);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // com.google.android.exoplayer2.text.j
        public void r(List<com.google.android.exoplayer2.text.a> list) {
            k2.this.Y0 = list;
            Iterator it = k2.this.f23801w0.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.text.j) it.next()).r(list);
            }
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void s(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar) {
            w1.v(this, trackGroupArray, mVar);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i10, int i11) {
            k2.this.E2(i10, i11);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (k2.this.N0) {
                k2.this.Q2(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (k2.this.N0) {
                k2.this.Q2(null);
            }
            k2.this.E2(0, 0);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void u(ExoPlaybackException exoPlaybackException) {
            w1.l(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public void v(boolean z9) {
            if (k2.this.f23788d1 != null) {
                if (z9 && !k2.this.f23789e1) {
                    k2.this.f23788d1.a(0);
                    k2.this.f23789e1 = true;
                } else if (z9 || !k2.this.f23789e1) {
                } else {
                    k2.this.f23788d1.e(0);
                    k2.this.f23789e1 = false;
                }
            }
        }

        @Override // com.google.android.exoplayer2.video.z
        public void x(String str) {
            k2.this.f23804z0.x(str);
        }

        @Override // com.google.android.exoplayer2.audio.u
        public void y(com.google.android.exoplayer2.decoder.d dVar) {
            k2.this.T0 = dVar;
            k2.this.f23804z0.y(dVar);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void z(v1 v1Var, v1.g gVar) {
            w1.b(this, v1Var, gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SimpleExoPlayer.java */
    /* loaded from: classes2.dex */
    public static final class d implements com.google.android.exoplayer2.video.j, com.google.android.exoplayer2.video.spherical.a, z1.b {

        /* renamed from: e  reason: collision with root package name */
        public static final int f23830e = 6;

        /* renamed from: f  reason: collision with root package name */
        public static final int f23831f = 7;

        /* renamed from: g  reason: collision with root package name */
        public static final int f23832g = 10000;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private com.google.android.exoplayer2.video.j f23833a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private com.google.android.exoplayer2.video.spherical.a f23834b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private com.google.android.exoplayer2.video.j f23835c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private com.google.android.exoplayer2.video.spherical.a f23836d;

        private d() {
        }

        @Override // com.google.android.exoplayer2.video.j
        public void a(long j4, long j10, Format format, @Nullable MediaFormat mediaFormat) {
            com.google.android.exoplayer2.video.j jVar = this.f23835c;
            if (jVar != null) {
                jVar.a(j4, j10, format, mediaFormat);
            }
            com.google.android.exoplayer2.video.j jVar2 = this.f23833a;
            if (jVar2 != null) {
                jVar2.a(j4, j10, format, mediaFormat);
            }
        }

        @Override // com.google.android.exoplayer2.z1.b
        public void d(int i4, @Nullable Object obj) {
            if (i4 == 6) {
                this.f23833a = (com.google.android.exoplayer2.video.j) obj;
            } else if (i4 == 7) {
                this.f23834b = (com.google.android.exoplayer2.video.spherical.a) obj;
            } else if (i4 != 10000) {
            } else {
                SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
                if (sphericalGLSurfaceView == null) {
                    this.f23835c = null;
                    this.f23836d = null;
                    return;
                }
                this.f23835c = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.f23836d = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.a
        public void e(long j4, float[] fArr) {
            com.google.android.exoplayer2.video.spherical.a aVar = this.f23836d;
            if (aVar != null) {
                aVar.e(j4, fArr);
            }
            com.google.android.exoplayer2.video.spherical.a aVar2 = this.f23834b;
            if (aVar2 != null) {
                aVar2.e(j4, fArr);
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.a
        public void g() {
            com.google.android.exoplayer2.video.spherical.a aVar = this.f23836d;
            if (aVar != null) {
                aVar.g();
            }
            com.google.android.exoplayer2.video.spherical.a aVar2 = this.f23834b;
            if (aVar2 != null) {
                aVar2.g();
            }
        }
    }

    @Deprecated
    protected k2(Context context, i2 i2Var, com.google.android.exoplayer2.trackselection.o oVar, com.google.android.exoplayer2.source.j0 j0Var, z0 z0Var, com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.analytics.h1 h1Var, boolean z9, com.google.android.exoplayer2.util.d dVar, Looper looper) {
        this(new b(context, i2Var).O(oVar).I(j0Var).G(z0Var).B(eVar).z(h1Var).P(z9).C(dVar).H(looper));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int A2(boolean z9, int i4) {
        return (!z9 || i4 == 1) ? 1 : 2;
    }

    private int D2(int i4) {
        AudioTrack audioTrack = this.I0;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i4) {
            this.I0.release();
            this.I0 = null;
        }
        if (this.I0 == null) {
            this.I0 = new AudioTrack(3, 4000, 4, 2, 2, 0, i4);
        }
        return this.I0.getAudioSessionId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E2(int i4, int i10) {
        if (i4 == this.Q0 && i10 == this.R0) {
            return;
        }
        this.Q0 = i4;
        this.R0 = i10;
        this.f23804z0.t(i4, i10);
        Iterator<com.google.android.exoplayer2.video.n> it = this.f23799u0.iterator();
        while (it.hasNext()) {
            it.next().t(i4, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F2() {
        this.f23804z0.a(this.X0);
        Iterator<com.google.android.exoplayer2.audio.i> it = this.f23800v0.iterator();
        while (it.hasNext()) {
            it.next().a(this.X0);
        }
    }

    private void H2() {
        if (this.M0 != null) {
            this.f23796r0.G1(this.f23798t0).u(10000).r(null).n();
            this.M0.i(this.f23797s0);
            this.M0 = null;
        }
        TextureView textureView = this.O0;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f23797s0) {
                com.google.android.exoplayer2.util.w.n(f23784j1, "SurfaceTextureListener already unset or replaced.");
            } else {
                this.O0.setSurfaceTextureListener(null);
            }
            this.O0 = null;
        }
        SurfaceHolder surfaceHolder = this.L0;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f23797s0);
            this.L0 = null;
        }
    }

    private void I2(int i4, int i10, @Nullable Object obj) {
        e2[] e2VarArr;
        for (e2 e2Var : this.f23793o0) {
            if (e2Var.getTrackType() == i4) {
                this.f23796r0.G1(e2Var).u(i10).r(obj).n();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J2() {
        I2(1, 2, Float.valueOf(this.W0 * this.B0.h()));
    }

    private void M2(SurfaceHolder surfaceHolder) {
        this.N0 = false;
        this.L0 = surfaceHolder;
        surfaceHolder.addCallback(this.f23797s0);
        Surface surface = this.L0.getSurface();
        if (surface != null && surface.isValid()) {
            Rect surfaceFrame = this.L0.getSurfaceFrame();
            E2(surfaceFrame.width(), surfaceFrame.height());
            return;
        }
        E2(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O2(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        Q2(surface);
        this.K0 = surface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q2(@Nullable Object obj) {
        e2[] e2VarArr;
        ArrayList<z1> arrayList = new ArrayList();
        for (e2 e2Var : this.f23793o0) {
            if (e2Var.getTrackType() == 2) {
                arrayList.add(this.f23796r0.G1(e2Var).u(1).r(obj).n());
            }
        }
        Object obj2 = this.J0;
        if (obj2 != null && obj2 != obj) {
            try {
                for (z1 z1Var : arrayList) {
                    z1Var.b(this.F0);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                this.f23796r0.e3(false, ExoPlaybackException.createForRenderer(new ExoTimeoutException(3)));
            }
            Object obj3 = this.J0;
            Surface surface = this.K0;
            if (obj3 == surface) {
                surface.release();
                this.K0 = null;
            }
        }
        this.J0 = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S2(boolean z9, int i4, int i10) {
        int i11 = 0;
        boolean z10 = z9 && i4 != -1;
        if (z10 && i4 != 1) {
            i11 = 1;
        }
        this.f23796r0.d3(z10, i11, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T2() {
        int c10 = c();
        boolean z9 = true;
        if (c10 != 1) {
            if (c10 == 2 || c10 == 3) {
                this.D0.b((!Q0() || v1()) ? false : false);
                this.E0.b(Q0());
                return;
            } else if (c10 != 4) {
                throw new IllegalStateException();
            }
        }
        this.D0.b(false);
        this.E0.b(false);
    }

    private void U2() {
        this.f23794p0.c();
        if (Thread.currentThread() != B0().getThread()) {
            String I = com.google.android.exoplayer2.util.z0.I("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), B0().getThread().getName());
            if (!this.f23786b1) {
                com.google.android.exoplayer2.util.w.o(f23784j1, I, this.f23787c1 ? null : new IllegalStateException());
                this.f23787c1 = true;
                return;
            }
            throw new IllegalStateException(I);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.google.android.exoplayer2.device.b w2(n2 n2Var) {
        return new com.google.android.exoplayer2.device.b(0, n2Var.e(), n2Var.d());
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public com.google.android.exoplayer2.video.b0 A() {
        return this.f23792h1;
    }

    @Override // com.google.android.exoplayer2.v1
    public s2 A0() {
        U2();
        return this.f23796r0.A0();
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.a
    public float B() {
        return this.W0;
    }

    @Override // com.google.android.exoplayer2.v1
    public Looper B0() {
        return this.f23796r0.B0();
    }

    @Override // com.google.android.exoplayer2.q.f
    @Deprecated
    public void B1(com.google.android.exoplayer2.text.j jVar) {
        com.google.android.exoplayer2.util.a.g(jVar);
        this.f23801w0.add(jVar);
    }

    @Nullable
    public com.google.android.exoplayer2.decoder.d B2() {
        return this.S0;
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public com.google.android.exoplayer2.device.b C() {
        U2();
        return this.f23791g1;
    }

    @Override // com.google.android.exoplayer2.v1
    public com.google.android.exoplayer2.trackselection.m C0() {
        U2();
        return this.f23796r0.C0();
    }

    @Override // com.google.android.exoplayer2.v1
    public void C1(int i4, int i10, int i11) {
        U2();
        this.f23796r0.C1(i4, i10, i11);
    }

    @Nullable
    public Format C2() {
        return this.G0;
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void D() {
        U2();
        H2();
        Q2(null);
        E2(0, 0);
    }

    @Override // com.google.android.exoplayer2.q
    public int D0(int i4) {
        U2();
        return this.f23796r0.D0(i4);
    }

    @Override // com.google.android.exoplayer2.q.g
    @Deprecated
    public void E0(com.google.android.exoplayer2.video.n nVar) {
        this.f23799u0.remove(nVar);
    }

    @Override // com.google.android.exoplayer2.q.d
    @Deprecated
    public void E1(com.google.android.exoplayer2.device.d dVar) {
        this.f23803y0.remove(dVar);
    }

    @Override // com.google.android.exoplayer2.q.a
    public boolean F() {
        return this.X0;
    }

    @Override // com.google.android.exoplayer2.q.a
    public void F0() {
        u(new com.google.android.exoplayer2.audio.y(0, 0.0f));
    }

    @Override // com.google.android.exoplayer2.q.g
    public int F1() {
        return this.P0;
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void G(@Nullable SurfaceView surfaceView) {
        U2();
        v(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // com.google.android.exoplayer2.q.a
    public void G0(com.google.android.exoplayer2.audio.e eVar, boolean z9) {
        U2();
        if (this.f23790f1) {
            return;
        }
        if (!com.google.android.exoplayer2.util.z0.c(this.V0, eVar)) {
            this.V0 = eVar;
            I2(1, 3, eVar);
            this.C0.m(com.google.android.exoplayer2.util.z0.m0(eVar.f21193c));
            this.f23804z0.A(eVar);
            Iterator<com.google.android.exoplayer2.audio.i> it = this.f23800v0.iterator();
            while (it.hasNext()) {
                it.next().A(eVar);
            }
        }
        com.google.android.exoplayer2.d dVar = this.B0;
        if (!z9) {
            eVar = null;
        }
        dVar.n(eVar);
        boolean Q0 = Q0();
        int q9 = this.B0.q(Q0, c());
        S2(Q0, q9, A2(Q0, q9));
    }

    @Override // com.google.android.exoplayer2.q
    public z1 G1(z1.b bVar) {
        U2();
        return this.f23796r0.G1(bVar);
    }

    public void G2(com.google.android.exoplayer2.analytics.j1 j1Var) {
        this.f23804z0.O2(j1Var);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public boolean H() {
        U2();
        return this.C0.j();
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public q.f H0() {
        return this;
    }

    @Override // com.google.android.exoplayer2.v1
    public boolean H1() {
        U2();
        return this.f23796r0.H1();
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public void I(int i4) {
        U2();
        this.C0.n(i4);
    }

    @Override // com.google.android.exoplayer2.q
    public void I0(com.google.android.exoplayer2.source.z zVar, long j4) {
        U2();
        this.f23796r0.I0(zVar, j4);
    }

    @Override // com.google.android.exoplayer2.v1
    public long I1() {
        U2();
        return this.f23796r0.I1();
    }

    @Override // com.google.android.exoplayer2.q.a
    public void J(boolean z9) {
        U2();
        if (this.X0 == z9) {
            return;
        }
        this.X0 = z9;
        I2(1, 101, Boolean.valueOf(z9));
        F2();
    }

    @Override // com.google.android.exoplayer2.q
    @Deprecated
    public void J0(com.google.android.exoplayer2.source.z zVar, boolean z9, boolean z10) {
        U2();
        p0(Collections.singletonList(zVar), z9);
        a();
    }

    @Override // com.google.android.exoplayer2.q.e
    @Deprecated
    public void J1(com.google.android.exoplayer2.metadata.e eVar) {
        com.google.android.exoplayer2.util.a.g(eVar);
        this.f23802x0.add(eVar);
    }

    @Override // com.google.android.exoplayer2.v1
    public boolean K() {
        U2();
        return this.f23796r0.K();
    }

    @Override // com.google.android.exoplayer2.q
    public boolean K0() {
        U2();
        return this.f23796r0.K0();
    }

    @Override // com.google.android.exoplayer2.q
    public void K1(com.google.android.exoplayer2.source.z zVar, boolean z9) {
        U2();
        this.f23796r0.K1(zVar, z9);
    }

    public void K2(boolean z9) {
        U2();
        if (this.f23790f1) {
            return;
        }
        this.A0.b(z9);
    }

    @Override // com.google.android.exoplayer2.v1
    public long L() {
        U2();
        return this.f23796r0.L();
    }

    @Override // com.google.android.exoplayer2.v1
    public f1 L1() {
        return this.f23796r0.L1();
    }

    @Deprecated
    public void L2(boolean z9) {
        R2(z9 ? 1 : 0);
    }

    @Override // com.google.android.exoplayer2.q.g
    public void M0(com.google.android.exoplayer2.video.spherical.a aVar) {
        U2();
        this.f23785a1 = aVar;
        this.f23796r0.G1(this.f23798t0).u(7).r(aVar).n();
    }

    @Override // com.google.android.exoplayer2.v1
    public v1.c N0() {
        U2();
        return this.f23796r0.N0();
    }

    public void N2(@Nullable PriorityTaskManager priorityTaskManager) {
        U2();
        if (com.google.android.exoplayer2.util.z0.c(this.f23788d1, priorityTaskManager)) {
            return;
        }
        if (this.f23789e1) {
            ((PriorityTaskManager) com.google.android.exoplayer2.util.a.g(this.f23788d1)).e(0);
        }
        if (priorityTaskManager != null && b()) {
            priorityTaskManager.a(0);
            this.f23789e1 = true;
        } else {
            this.f23789e1 = false;
        }
        this.f23788d1 = priorityTaskManager;
    }

    @Override // com.google.android.exoplayer2.q
    public com.google.android.exoplayer2.util.d O() {
        return this.f23796r0.O();
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public com.google.android.exoplayer2.trackselection.o P() {
        U2();
        return this.f23796r0.P();
    }

    @Override // com.google.android.exoplayer2.q.g
    public void P0(com.google.android.exoplayer2.video.j jVar) {
        U2();
        this.Z0 = jVar;
        this.f23796r0.G1(this.f23798t0).u(6).r(jVar).n();
    }

    @Deprecated
    public void P2(boolean z9) {
        this.f23786b1 = z9;
    }

    @Override // com.google.android.exoplayer2.q
    public void Q(com.google.android.exoplayer2.source.z zVar) {
        U2();
        this.f23796r0.Q(zVar);
    }

    @Override // com.google.android.exoplayer2.v1
    public boolean Q0() {
        U2();
        return this.f23796r0.Q0();
    }

    @Override // com.google.android.exoplayer2.v1
    public void R0(boolean z9) {
        U2();
        this.f23796r0.R0(z9);
    }

    public void R2(int i4) {
        U2();
        if (i4 == 0) {
            this.D0.a(false);
            this.E0.a(false);
        } else if (i4 == 1) {
            this.D0.a(true);
            this.E0.a(false);
        } else if (i4 != 2) {
        } else {
            this.D0.a(true);
            this.E0.a(true);
        }
    }

    @Override // com.google.android.exoplayer2.v1
    public List<Metadata> S() {
        U2();
        return this.f23796r0.S();
    }

    @Override // com.google.android.exoplayer2.q
    public void S0(@Nullable j2 j2Var) {
        U2();
        this.f23796r0.S0(j2Var);
    }

    @Override // com.google.android.exoplayer2.q
    public int T0() {
        U2();
        return this.f23796r0.T0();
    }

    @Override // com.google.android.exoplayer2.q
    public void V(com.google.android.exoplayer2.source.z zVar) {
        U2();
        this.f23796r0.V(zVar);
    }

    @Override // com.google.android.exoplayer2.q
    public void V0(int i4, List<com.google.android.exoplayer2.source.z> list) {
        U2();
        this.f23796r0.V0(i4, list);
    }

    @Override // com.google.android.exoplayer2.v1
    public void W(v1.h hVar) {
        com.google.android.exoplayer2.util.a.g(hVar);
        w1(hVar);
        E0(hVar);
        g1(hVar);
        n0(hVar);
        E1(hVar);
        g0(hVar);
    }

    @Override // com.google.android.exoplayer2.q.g
    public void W0(com.google.android.exoplayer2.video.spherical.a aVar) {
        U2();
        if (this.f23785a1 != aVar) {
            return;
        }
        this.f23796r0.G1(this.f23798t0).u(7).r(null).n();
    }

    @Override // com.google.android.exoplayer2.v1
    public void Y(List<b1> list, boolean z9) {
        U2();
        this.f23796r0.Y(list, z9);
    }

    @Override // com.google.android.exoplayer2.v1
    public int Y0() {
        U2();
        return this.f23796r0.Y0();
    }

    @Override // com.google.android.exoplayer2.q
    public void Z(boolean z9) {
        U2();
        this.f23796r0.Z(z9);
    }

    @Override // com.google.android.exoplayer2.v1
    public void a() {
        U2();
        boolean Q0 = Q0();
        int q9 = this.B0.q(Q0, 2);
        S2(Q0, q9, A2(Q0, q9));
        this.f23796r0.a();
    }

    @Override // com.google.android.exoplayer2.q
    public void a0(int i4, com.google.android.exoplayer2.source.z zVar) {
        U2();
        this.f23796r0.a0(i4, zVar);
    }

    @Override // com.google.android.exoplayer2.q.d
    @Deprecated
    public void a1(com.google.android.exoplayer2.device.d dVar) {
        com.google.android.exoplayer2.util.a.g(dVar);
        this.f23803y0.add(dVar);
    }

    @Override // com.google.android.exoplayer2.v1
    public boolean b() {
        U2();
        return this.f23796r0.b();
    }

    @Override // com.google.android.exoplayer2.q.a
    @Deprecated
    public void b1(com.google.android.exoplayer2.audio.i iVar) {
        com.google.android.exoplayer2.util.a.g(iVar);
        this.f23800v0.add(iVar);
    }

    @Override // com.google.android.exoplayer2.v1
    public int c() {
        U2();
        return this.f23796r0.c();
    }

    @Override // com.google.android.exoplayer2.v1
    @Deprecated
    public void c1(v1.f fVar) {
        com.google.android.exoplayer2.util.a.g(fVar);
        this.f23796r0.c1(fVar);
    }

    @Override // com.google.android.exoplayer2.v1
    public int d1() {
        U2();
        return this.f23796r0.d1();
    }

    @Override // com.google.android.exoplayer2.v1
    public t1 e() {
        U2();
        return this.f23796r0.e();
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.a
    public void f(float f10) {
        U2();
        float s9 = com.google.android.exoplayer2.util.z0.s(f10, 0.0f, 1.0f);
        if (this.W0 == s9) {
            return;
        }
        this.W0 = s9;
        J2();
        this.f23804z0.w(s9);
        Iterator<com.google.android.exoplayer2.audio.i> it = this.f23800v0.iterator();
        while (it.hasNext()) {
            it.next().w(s9);
        }
    }

    @Override // com.google.android.exoplayer2.q
    public void f0(q.b bVar) {
        this.f23796r0.f0(bVar);
    }

    @Override // com.google.android.exoplayer2.q
    public void f1(List<com.google.android.exoplayer2.source.z> list) {
        U2();
        this.f23796r0.f1(list);
    }

    @Override // com.google.android.exoplayer2.v1
    public void g(t1 t1Var) {
        U2();
        this.f23796r0.g(t1Var);
    }

    @Override // com.google.android.exoplayer2.v1
    @Deprecated
    public void g0(v1.f fVar) {
        this.f23796r0.g0(fVar);
    }

    @Override // com.google.android.exoplayer2.q.f
    @Deprecated
    public void g1(com.google.android.exoplayer2.text.j jVar) {
        this.f23801w0.remove(jVar);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.a
    public com.google.android.exoplayer2.audio.e getAudioAttributes() {
        return this.V0;
    }

    @Override // com.google.android.exoplayer2.q.a
    public int getAudioSessionId() {
        return this.U0;
    }

    @Override // com.google.android.exoplayer2.v1
    public long getCurrentPosition() {
        U2();
        return this.f23796r0.getCurrentPosition();
    }

    @Override // com.google.android.exoplayer2.v1
    public long getDuration() {
        U2();
        return this.f23796r0.getDuration();
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void h(@Nullable Surface surface) {
        U2();
        H2();
        Q2(surface);
        int i4 = surface == null ? 0 : -1;
        E2(i4, i4);
    }

    @Override // com.google.android.exoplayer2.q
    public void h0(List<com.google.android.exoplayer2.source.z> list) {
        U2();
        this.f23796r0.h0(list);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void i(@Nullable Surface surface) {
        U2();
        if (surface == null || surface != this.J0) {
            return;
        }
        D();
    }

    @Override // com.google.android.exoplayer2.v1
    public void i0(int i4, int i10) {
        U2();
        this.f23796r0.i0(i4, i10);
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public q.d i1() {
        return this;
    }

    @Override // com.google.android.exoplayer2.v1
    public void j(int i4) {
        U2();
        this.f23796r0.j(i4);
    }

    @Override // com.google.android.exoplayer2.v1
    public int j0() {
        U2();
        return this.f23796r0.j0();
    }

    @Override // com.google.android.exoplayer2.q
    public void j1(q.b bVar) {
        this.f23796r0.j1(bVar);
    }

    @Override // com.google.android.exoplayer2.v1
    public int k() {
        U2();
        return this.f23796r0.k();
    }

    @Override // com.google.android.exoplayer2.v1
    @Nullable
    public ExoPlaybackException k0() {
        U2();
        return this.f23796r0.k0();
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public q.a k1() {
        return this;
    }

    @Override // com.google.android.exoplayer2.q.a
    public void l(int i4) {
        U2();
        if (this.U0 == i4) {
            return;
        }
        if (i4 == 0) {
            if (com.google.android.exoplayer2.util.z0.f27743a < 21) {
                i4 = D2(0);
            } else {
                i4 = i.a(this.f23795q0);
            }
        } else if (com.google.android.exoplayer2.util.z0.f27743a < 21) {
            D2(i4);
        }
        this.U0 = i4;
        I2(1, 102, Integer.valueOf(i4));
        I2(2, 102, Integer.valueOf(i4));
        this.f23804z0.k(i4);
        Iterator<com.google.android.exoplayer2.audio.i> it = this.f23800v0.iterator();
        while (it.hasNext()) {
            it.next().k(i4);
        }
    }

    @Override // com.google.android.exoplayer2.v1
    public void l0(boolean z9) {
        U2();
        int q9 = this.B0.q(z9, c());
        S2(z9, q9, A2(z9, q9));
    }

    @Override // com.google.android.exoplayer2.q.g
    @Deprecated
    public void l1(com.google.android.exoplayer2.video.n nVar) {
        com.google.android.exoplayer2.util.a.g(nVar);
        this.f23799u0.add(nVar);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public void m() {
        U2();
        this.C0.c();
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public q.g m0() {
        return this;
    }

    @Override // com.google.android.exoplayer2.v1
    public void m1(List<b1> list, int i4, long j4) {
        U2();
        this.f23796r0.m1(list, i4, j4);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void n(@Nullable SurfaceView surfaceView) {
        U2();
        if (surfaceView instanceof com.google.android.exoplayer2.video.i) {
            H2();
            Q2(surfaceView);
            M2(surfaceView.getHolder());
        } else if (surfaceView instanceof SphericalGLSurfaceView) {
            H2();
            this.M0 = (SphericalGLSurfaceView) surfaceView;
            this.f23796r0.G1(this.f23798t0).u(10000).r(this.M0).n();
            this.M0.d(this.f23797s0);
            Q2(this.M0.getVideoSurface());
            M2(surfaceView.getHolder());
        } else {
            o(surfaceView == null ? null : surfaceView.getHolder());
        }
    }

    @Override // com.google.android.exoplayer2.q.e
    @Deprecated
    public void n0(com.google.android.exoplayer2.metadata.e eVar) {
        this.f23802x0.remove(eVar);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void o(@Nullable SurfaceHolder surfaceHolder) {
        U2();
        if (surfaceHolder == null) {
            D();
            return;
        }
        H2();
        this.N0 = true;
        this.L0 = surfaceHolder;
        surfaceHolder.addCallback(this.f23797s0);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            Q2(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            E2(surfaceFrame.width(), surfaceFrame.height());
            return;
        }
        Q2(null);
        E2(0, 0);
    }

    @Override // com.google.android.exoplayer2.v1
    public long o1() {
        U2();
        return this.f23796r0.o1();
    }

    @Override // com.google.android.exoplayer2.q.g
    public void p(int i4) {
        U2();
        this.P0 = i4;
        I2(2, 4, Integer.valueOf(i4));
    }

    @Override // com.google.android.exoplayer2.q
    public void p0(List<com.google.android.exoplayer2.source.z> list, boolean z9) {
        U2();
        this.f23796r0.p0(list, z9);
    }

    @Override // com.google.android.exoplayer2.v1
    public void p1(v1.h hVar) {
        com.google.android.exoplayer2.util.a.g(hVar);
        b1(hVar);
        l1(hVar);
        B1(hVar);
        J1(hVar);
        a1(hVar);
        c1(hVar);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.f
    public List<com.google.android.exoplayer2.text.a> q() {
        U2();
        return this.Y0;
    }

    @Override // com.google.android.exoplayer2.q
    public void q0(boolean z9) {
        U2();
        this.f23796r0.q0(z9);
    }

    @Override // com.google.android.exoplayer2.v1
    public void q1(int i4, List<b1> list) {
        U2();
        this.f23796r0.q1(i4, list);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public void r(boolean z9) {
        U2();
        this.C0.l(z9);
    }

    @Override // com.google.android.exoplayer2.q.g
    public void r0(com.google.android.exoplayer2.video.j jVar) {
        U2();
        if (this.Z0 != jVar) {
            return;
        }
        this.f23796r0.G1(this.f23798t0).u(6).r(null).n();
    }

    @Override // com.google.android.exoplayer2.v1
    public void release() {
        AudioTrack audioTrack;
        U2();
        if (com.google.android.exoplayer2.util.z0.f27743a < 21 && (audioTrack = this.I0) != null) {
            audioTrack.release();
            this.I0 = null;
        }
        this.A0.b(false);
        this.C0.k();
        this.D0.b(false);
        this.E0.b(false);
        this.B0.j();
        this.f23796r0.release();
        this.f23804z0.N2();
        H2();
        Surface surface = this.K0;
        if (surface != null) {
            surface.release();
            this.K0 = null;
        }
        if (this.f23789e1) {
            ((PriorityTaskManager) com.google.android.exoplayer2.util.a.g(this.f23788d1)).e(0);
            this.f23789e1 = false;
        }
        this.Y0 = Collections.emptyList();
        this.f23790f1 = true;
    }

    @Override // com.google.android.exoplayer2.q
    @Deprecated
    public void retry() {
        U2();
        a();
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public void s() {
        U2();
        this.C0.i();
    }

    @Override // com.google.android.exoplayer2.v1
    public int s0() {
        U2();
        return this.f23796r0.s0();
    }

    @Override // com.google.android.exoplayer2.v1
    public long s1() {
        U2();
        return this.f23796r0.s1();
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void t(@Nullable TextureView textureView) {
        U2();
        if (textureView == null) {
            D();
            return;
        }
        H2();
        this.O0 = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            com.google.android.exoplayer2.util.w.n(f23784j1, "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f23797s0);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            Q2(null);
            E2(0, 0);
            return;
        }
        O2(surfaceTexture);
        E2(textureView.getWidth(), textureView.getHeight());
    }

    @Override // com.google.android.exoplayer2.q
    public Looper t1() {
        return this.f23796r0.t1();
    }

    @Override // com.google.android.exoplayer2.q.a
    public void u(com.google.android.exoplayer2.audio.y yVar) {
        U2();
        I2(1, 5, yVar);
    }

    @Override // com.google.android.exoplayer2.q
    @Deprecated
    public void u0(com.google.android.exoplayer2.source.z zVar) {
        J0(zVar, true, true);
    }

    @Override // com.google.android.exoplayer2.q
    public void u1(com.google.android.exoplayer2.source.z0 z0Var) {
        U2();
        this.f23796r0.u1(z0Var);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void v(@Nullable SurfaceHolder surfaceHolder) {
        U2();
        if (surfaceHolder == null || surfaceHolder != this.L0) {
            return;
        }
        D();
    }

    @Override // com.google.android.exoplayer2.q
    public void v0(boolean z9) {
        U2();
        this.f23796r0.v0(z9);
    }

    @Override // com.google.android.exoplayer2.q
    public boolean v1() {
        U2();
        return this.f23796r0.v1();
    }

    public void v2(com.google.android.exoplayer2.analytics.j1 j1Var) {
        com.google.android.exoplayer2.util.a.g(j1Var);
        this.f23804z0.x1(j1Var);
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.d
    public int w() {
        U2();
        return this.C0.g();
    }

    @Override // com.google.android.exoplayer2.q
    public void w0(List<com.google.android.exoplayer2.source.z> list, int i4, long j4) {
        U2();
        this.f23796r0.w0(list, i4, j4);
    }

    @Override // com.google.android.exoplayer2.q.a
    @Deprecated
    public void w1(com.google.android.exoplayer2.audio.i iVar) {
        this.f23800v0.remove(iVar);
    }

    @Override // com.google.android.exoplayer2.v1
    public void x(int i4, long j4) {
        U2();
        this.f23804z0.M2();
        this.f23796r0.x(i4, j4);
    }

    @Override // com.google.android.exoplayer2.q
    @Nullable
    public q.e x0() {
        return this;
    }

    public com.google.android.exoplayer2.analytics.h1 x2() {
        return this.f23804z0;
    }

    @Override // com.google.android.exoplayer2.v1
    @Deprecated
    public void y(boolean z9) {
        U2();
        this.B0.q(Q0(), 1);
        this.f23796r0.y(z9);
        this.Y0 = Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.v1
    public int y0() {
        U2();
        return this.f23796r0.y0();
    }

    @Override // com.google.android.exoplayer2.q
    public j2 y1() {
        U2();
        return this.f23796r0.y1();
    }

    @Nullable
    public com.google.android.exoplayer2.decoder.d y2() {
        return this.T0;
    }

    @Override // com.google.android.exoplayer2.v1, com.google.android.exoplayer2.q.g
    public void z(@Nullable TextureView textureView) {
        U2();
        if (textureView == null || textureView != this.O0) {
            return;
        }
        D();
    }

    @Override // com.google.android.exoplayer2.v1
    public TrackGroupArray z0() {
        U2();
        return this.f23796r0.z0();
    }

    @Nullable
    public Format z2() {
        return this.H0;
    }

    protected k2(b bVar) {
        k2 k2Var;
        p0 p0Var;
        com.google.android.exoplayer2.util.g gVar = new com.google.android.exoplayer2.util.g();
        this.f23794p0 = gVar;
        try {
            Context applicationContext = bVar.f23805a.getApplicationContext();
            this.f23795q0 = applicationContext;
            com.google.android.exoplayer2.analytics.h1 h1Var = bVar.f23813i;
            this.f23804z0 = h1Var;
            this.f23788d1 = bVar.f23815k;
            this.V0 = bVar.f23816l;
            this.P0 = bVar.f23821q;
            this.X0 = bVar.f23820p;
            this.F0 = bVar.f23826v;
            c cVar = new c();
            this.f23797s0 = cVar;
            d dVar = new d();
            this.f23798t0 = dVar;
            this.f23799u0 = new CopyOnWriteArraySet<>();
            this.f23800v0 = new CopyOnWriteArraySet<>();
            this.f23801w0 = new CopyOnWriteArraySet<>();
            this.f23802x0 = new CopyOnWriteArraySet<>();
            this.f23803y0 = new CopyOnWriteArraySet<>();
            Handler handler = new Handler(bVar.f23814j);
            e2[] a10 = bVar.f23806b.a(handler, cVar, cVar, cVar, cVar);
            this.f23793o0 = a10;
            this.W0 = 1.0f;
            if (com.google.android.exoplayer2.util.z0.f27743a < 21) {
                this.U0 = D2(0);
            } else {
                this.U0 = i.a(applicationContext);
            }
            this.Y0 = Collections.emptyList();
            this.f23786b1 = true;
            try {
                p0Var = new p0(a10, bVar.f23809e, bVar.f23810f, bVar.f23811g, bVar.f23812h, h1Var, bVar.f23822r, bVar.f23823s, bVar.f23824t, bVar.f23825u, bVar.f23827w, bVar.f23807c, bVar.f23814j, this, new v1.c.a().c(15, 16, 17, 18, 19, 20, 21, 22).e());
                k2Var = this;
            } catch (Throwable th) {
                th = th;
                k2Var = this;
            }
            try {
                k2Var.f23796r0 = p0Var;
                p0Var.c1(cVar);
                p0Var.f0(cVar);
                if (bVar.f23808d > 0) {
                    p0Var.q2(bVar.f23808d);
                }
                com.google.android.exoplayer2.b bVar2 = new com.google.android.exoplayer2.b(bVar.f23805a, handler, cVar);
                k2Var.A0 = bVar2;
                bVar2.b(bVar.f23819o);
                com.google.android.exoplayer2.d dVar2 = new com.google.android.exoplayer2.d(bVar.f23805a, handler, cVar);
                k2Var.B0 = dVar2;
                dVar2.n(bVar.f23817m ? k2Var.V0 : null);
                n2 n2Var = new n2(bVar.f23805a, handler, cVar);
                k2Var.C0 = n2Var;
                n2Var.m(com.google.android.exoplayer2.util.z0.m0(k2Var.V0.f21193c));
                v2 v2Var = new v2(bVar.f23805a);
                k2Var.D0 = v2Var;
                v2Var.a(bVar.f23818n != 0);
                w2 w2Var = new w2(bVar.f23805a);
                k2Var.E0 = w2Var;
                w2Var.a(bVar.f23818n == 2);
                k2Var.f23791g1 = w2(n2Var);
                k2Var.f23792h1 = com.google.android.exoplayer2.video.b0.f27879i;
                k2Var.I2(1, 102, Integer.valueOf(k2Var.U0));
                k2Var.I2(2, 102, Integer.valueOf(k2Var.U0));
                k2Var.I2(1, 3, k2Var.V0);
                k2Var.I2(2, 4, Integer.valueOf(k2Var.P0));
                k2Var.I2(1, 101, Boolean.valueOf(k2Var.X0));
                k2Var.I2(2, 6, dVar);
                k2Var.I2(6, 7, dVar);
                gVar.f();
            } catch (Throwable th2) {
                th = th2;
                k2Var.f23794p0.f();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            k2Var = this;
        }
    }
}
