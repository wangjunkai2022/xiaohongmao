package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.util.t0;
import com.google.android.exoplayer2.v0;
import com.google.android.exoplayer2.video.z;

/* compiled from: DecoderVideoRenderer.java */
/* loaded from: classes2.dex */
public abstract class b extends com.google.android.exoplayer2.f {
    private static final String V = "DecoderVideoRenderer";
    private static final int W = 0;

    /* renamed from: b1  reason: collision with root package name */
    private static final int f27859b1 = 1;

    /* renamed from: g1  reason: collision with root package name */
    private static final int f27860g1 = 2;
    @Nullable
    private j A;
    @Nullable
    private DrmSession B;
    @Nullable
    private DrmSession C;
    private int D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private long I;
    private long J;
    private boolean K;
    private boolean L;
    private boolean M;
    @Nullable
    private b0 N;
    private long O;
    private int P;
    private int Q;
    private int R;
    private long S;
    private long T;
    protected com.google.android.exoplayer2.decoder.d U;

    /* renamed from: m  reason: collision with root package name */
    private final long f27861m;

    /* renamed from: n  reason: collision with root package name */
    private final int f27862n;

    /* renamed from: o  reason: collision with root package name */
    private final z.a f27863o;

    /* renamed from: p  reason: collision with root package name */
    private final t0<Format> f27864p;

    /* renamed from: q  reason: collision with root package name */
    private final DecoderInputBuffer f27865q;

    /* renamed from: r  reason: collision with root package name */
    private Format f27866r;

    /* renamed from: s  reason: collision with root package name */
    private Format f27867s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private com.google.android.exoplayer2.decoder.c<g, ? extends h, ? extends DecoderException> f27868t;

    /* renamed from: u  reason: collision with root package name */
    private g f27869u;

    /* renamed from: v  reason: collision with root package name */
    private h f27870v;

    /* renamed from: w  reason: collision with root package name */
    private int f27871w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private Object f27872x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private Surface f27873y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private i f27874z;

    protected b(long j4, @Nullable Handler handler, @Nullable z zVar, int i4) {
        super(2);
        this.f27861m = j4;
        this.f27862n = i4;
        this.J = com.google.android.exoplayer2.i.f23649b;
        Q();
        this.f27864p = new t0<>();
        this.f27865q = DecoderInputBuffer.s();
        this.f27863o = new z.a(handler, zVar);
        this.D = 0;
        this.f27871w = -1;
    }

    private void P() {
        this.F = false;
    }

    private void Q() {
        this.N = null;
    }

    private boolean S(long j4, long j10) throws ExoPlaybackException, DecoderException {
        if (this.f27870v == null) {
            h b10 = this.f27868t.b();
            this.f27870v = b10;
            if (b10 == null) {
                return false;
            }
            com.google.android.exoplayer2.decoder.d dVar = this.U;
            int i4 = dVar.f21596f;
            int i10 = b10.f21627c;
            dVar.f21596f = i4 + i10;
            this.R -= i10;
        }
        if (this.f27870v.l()) {
            if (this.D == 2) {
                n0();
                a0();
            } else {
                this.f27870v.o();
                this.f27870v = null;
                this.M = true;
            }
            return false;
        }
        boolean m02 = m0(j4, j10);
        if (m02) {
            k0(this.f27870v.f21626b);
            this.f27870v = null;
        }
        return m02;
    }

    private boolean U() throws DecoderException, ExoPlaybackException {
        com.google.android.exoplayer2.decoder.c<g, ? extends h, ? extends DecoderException> cVar = this.f27868t;
        if (cVar == null || this.D == 2 || this.L) {
            return false;
        }
        if (this.f27869u == null) {
            g d4 = cVar.d();
            this.f27869u = d4;
            if (d4 == null) {
                return false;
            }
        }
        if (this.D == 1) {
            this.f27869u.n(4);
            this.f27868t.c(this.f27869u);
            this.f27869u = null;
            this.D = 2;
            return false;
        }
        v0 A = A();
        int M = M(A, this.f27869u, 0);
        if (M == -5) {
            g0(A);
            return true;
        } else if (M != -4) {
            if (M == -3) {
                return false;
            }
            throw new IllegalStateException();
        } else if (this.f27869u.l()) {
            this.L = true;
            this.f27868t.c(this.f27869u);
            this.f27869u = null;
            return false;
        } else {
            if (this.K) {
                this.f27864p.a(this.f27869u.f21574e, this.f27866r);
                this.K = false;
            }
            this.f27869u.q();
            g gVar = this.f27869u;
            gVar.f27931l = this.f27866r;
            l0(gVar);
            this.f27868t.c(this.f27869u);
            this.R++;
            this.E = true;
            this.U.f21593c++;
            this.f27869u = null;
            return true;
        }
    }

    private boolean W() {
        return this.f27871w != -1;
    }

    private static boolean X(long j4) {
        return j4 < -30000;
    }

    private static boolean Y(long j4) {
        return j4 < -500000;
    }

    private void a0() throws ExoPlaybackException {
        if (this.f27868t != null) {
            return;
        }
        q0(this.C);
        com.google.android.exoplayer2.drm.a0 a0Var = null;
        DrmSession drmSession = this.B;
        if (drmSession != null && (a0Var = drmSession.j()) == null && this.B.e() == null) {
            return;
        }
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f27868t = R(this.f27866r, a0Var);
            r0(this.f27871w);
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            this.f27863o.k(this.f27868t.getName(), elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            this.U.f21591a++;
        } catch (DecoderException e4) {
            com.google.android.exoplayer2.util.w.e(V, "Video codec error", e4);
            this.f27863o.C(e4);
            throw x(e4, this.f27866r);
        } catch (OutOfMemoryError e10) {
            throw x(e10, this.f27866r);
        }
    }

    private void b0() {
        if (this.P > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f27863o.n(this.P, elapsedRealtime - this.O);
            this.P = 0;
            this.O = elapsedRealtime;
        }
    }

    private void c0() {
        this.H = true;
        if (this.F) {
            return;
        }
        this.F = true;
        this.f27863o.A(this.f27872x);
    }

    private void d0(int i4, int i10) {
        b0 b0Var = this.N;
        if (b0Var != null && b0Var.f27885a == i4 && b0Var.f27886b == i10) {
            return;
        }
        b0 b0Var2 = new b0(i4, i10);
        this.N = b0Var2;
        this.f27863o.D(b0Var2);
    }

    private void e0() {
        if (this.F) {
            this.f27863o.A(this.f27872x);
        }
    }

    private void f0() {
        b0 b0Var = this.N;
        if (b0Var != null) {
            this.f27863o.D(b0Var);
        }
    }

    private void h0() {
        f0();
        P();
        if (getState() == 2) {
            s0();
        }
    }

    private void i0() {
        Q();
        P();
    }

    private void j0() {
        f0();
        e0();
    }

    private boolean m0(long j4, long j10) throws ExoPlaybackException, DecoderException {
        if (this.I == com.google.android.exoplayer2.i.f23649b) {
            this.I = j4;
        }
        long j11 = this.f27870v.f21626b - j4;
        if (!W()) {
            if (X(j11)) {
                y0(this.f27870v);
                return true;
            }
            return false;
        }
        long j12 = this.f27870v.f21626b - this.T;
        Format j13 = this.f27864p.j(j12);
        if (j13 != null) {
            this.f27867s = j13;
        }
        long elapsedRealtime = (SystemClock.elapsedRealtime() * 1000) - this.S;
        boolean z9 = getState() == 2;
        if (!(this.H ? !this.F : z9 || this.G) && (!z9 || !x0(j11, elapsedRealtime))) {
            if (!z9 || j4 == this.I || (v0(j11, j10) && Z(j4))) {
                return false;
            }
            if (w0(j11, j10)) {
                T(this.f27870v);
                return true;
            }
            if (j11 < 30000) {
                o0(this.f27870v, j12, this.f27867s);
                return true;
            }
            return false;
        }
        o0(this.f27870v, j12, this.f27867s);
        return true;
    }

    private void q0(@Nullable DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.b(this.B, drmSession);
        this.B = drmSession;
    }

    private void s0() {
        this.J = this.f27861m > 0 ? SystemClock.elapsedRealtime() + this.f27861m : com.google.android.exoplayer2.i.f23649b;
    }

    private void u0(@Nullable DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.b(this.C, drmSession);
        this.C = drmSession;
    }

    @Override // com.google.android.exoplayer2.f
    protected void F() {
        this.f27866r = null;
        Q();
        P();
        try {
            u0(null);
            n0();
        } finally {
            this.f27863o.m(this.U);
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void G(boolean z9, boolean z10) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.d dVar = new com.google.android.exoplayer2.decoder.d();
        this.U = dVar;
        this.f27863o.o(dVar);
        this.G = z10;
        this.H = false;
    }

    @Override // com.google.android.exoplayer2.f
    protected void H(long j4, boolean z9) throws ExoPlaybackException {
        this.L = false;
        this.M = false;
        P();
        this.I = com.google.android.exoplayer2.i.f23649b;
        this.Q = 0;
        if (this.f27868t != null) {
            V();
        }
        if (z9) {
            s0();
        } else {
            this.J = com.google.android.exoplayer2.i.f23649b;
        }
        this.f27864p.c();
    }

    @Override // com.google.android.exoplayer2.f
    protected void J() {
        this.P = 0;
        this.O = SystemClock.elapsedRealtime();
        this.S = SystemClock.elapsedRealtime() * 1000;
    }

    @Override // com.google.android.exoplayer2.f
    protected void K() {
        this.J = com.google.android.exoplayer2.i.f23649b;
        b0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void L(Format[] formatArr, long j4, long j10) throws ExoPlaybackException {
        this.T = j10;
        super.L(formatArr, j4, j10);
    }

    protected com.google.android.exoplayer2.decoder.e O(String str, Format format, Format format2) {
        return new com.google.android.exoplayer2.decoder.e(str, format, format2, 0, 1);
    }

    protected abstract com.google.android.exoplayer2.decoder.c<g, ? extends h, ? extends DecoderException> R(Format format, @Nullable com.google.android.exoplayer2.drm.a0 a0Var) throws DecoderException;

    protected void T(h hVar) {
        z0(1);
        hVar.o();
    }

    @CallSuper
    protected void V() throws ExoPlaybackException {
        this.R = 0;
        if (this.D != 0) {
            n0();
            a0();
            return;
        }
        this.f27869u = null;
        h hVar = this.f27870v;
        if (hVar != null) {
            hVar.o();
            this.f27870v = null;
        }
        this.f27868t.flush();
        this.E = false;
    }

    protected boolean Z(long j4) throws ExoPlaybackException {
        int N = N(j4);
        if (N == 0) {
            return false;
        }
        this.U.f21599i++;
        z0(this.R + N);
        V();
        return true;
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean b() {
        return this.M;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.z1.b
    public void d(int i4, @Nullable Object obj) throws ExoPlaybackException {
        if (i4 == 1) {
            t0(obj);
        } else if (i4 == 6) {
            this.A = (j) obj;
        } else {
            super.d(i4, obj);
        }
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean f() {
        if (this.f27866r != null && ((E() || this.f27870v != null) && (this.F || !W()))) {
            this.J = com.google.android.exoplayer2.i.f23649b;
            return true;
        } else if (this.J == com.google.android.exoplayer2.i.f23649b) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.J) {
                return true;
            }
            this.J = com.google.android.exoplayer2.i.f23649b;
            return false;
        }
    }

    @CallSuper
    protected void g0(v0 v0Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.e O;
        this.K = true;
        Format format = (Format) com.google.android.exoplayer2.util.a.g(v0Var.f27763b);
        u0(v0Var.f27762a);
        Format format2 = this.f27866r;
        this.f27866r = format;
        com.google.android.exoplayer2.decoder.c<g, ? extends h, ? extends DecoderException> cVar = this.f27868t;
        if (cVar == null) {
            a0();
            this.f27863o.p(this.f27866r, null);
            return;
        }
        if (this.C != this.B) {
            O = new com.google.android.exoplayer2.decoder.e(cVar.getName(), format2, format, 0, 128);
        } else {
            O = O(cVar.getName(), format2, format);
        }
        if (O.f21624d == 0) {
            if (this.E) {
                this.D = 1;
            } else {
                n0();
                a0();
            }
        }
        this.f27863o.p(this.f27866r, O);
    }

    @CallSuper
    protected void k0(long j4) {
        this.R--;
    }

    protected void l0(g gVar) {
    }

    @CallSuper
    protected void n0() {
        this.f27869u = null;
        this.f27870v = null;
        this.D = 0;
        this.E = false;
        this.R = 0;
        com.google.android.exoplayer2.decoder.c<g, ? extends h, ? extends DecoderException> cVar = this.f27868t;
        if (cVar != null) {
            this.U.f21592b++;
            cVar.release();
            this.f27863o.l(this.f27868t.getName());
            this.f27868t = null;
        }
        q0(null);
    }

    protected void o0(h hVar, long j4, Format format) throws DecoderException {
        j jVar = this.A;
        if (jVar != null) {
            jVar.a(j4, System.nanoTime(), format, null);
        }
        this.S = com.google.android.exoplayer2.i.c(SystemClock.elapsedRealtime() * 1000);
        int i4 = hVar.f27937e;
        boolean z9 = i4 == 1 && this.f27873y != null;
        boolean z10 = i4 == 0 && this.f27874z != null;
        if (!z10 && !z9) {
            T(hVar);
            return;
        }
        d0(hVar.f27939g, hVar.f27940h);
        if (z10) {
            this.f27874z.setOutputBuffer(hVar);
        } else {
            p0(hVar, this.f27873y);
        }
        this.Q = 0;
        this.U.f21595e++;
        c0();
    }

    protected abstract void p0(h hVar, Surface surface) throws DecoderException;

    protected abstract void r0(int i4);

    @Override // com.google.android.exoplayer2.e2
    public void s(long j4, long j10) throws ExoPlaybackException {
        if (this.M) {
            return;
        }
        if (this.f27866r == null) {
            v0 A = A();
            this.f27865q.f();
            int M = M(A, this.f27865q, 2);
            if (M != -5) {
                if (M == -4) {
                    com.google.android.exoplayer2.util.a.i(this.f27865q.l());
                    this.L = true;
                    this.M = true;
                    return;
                }
                return;
            }
            g0(A);
        }
        a0();
        if (this.f27868t != null) {
            try {
                com.google.android.exoplayer2.util.v0.a("drainAndFeed");
                while (S(j4, j10)) {
                }
                while (U()) {
                }
                com.google.android.exoplayer2.util.v0.c();
                this.U.c();
            } catch (DecoderException e4) {
                com.google.android.exoplayer2.util.w.e(V, "Video codec error", e4);
                this.f27863o.C(e4);
                throw x(e4, this.f27866r);
            }
        }
    }

    protected final void t0(@Nullable Object obj) {
        if (obj instanceof Surface) {
            this.f27873y = (Surface) obj;
            this.f27874z = null;
            this.f27871w = 1;
        } else if (obj instanceof i) {
            this.f27873y = null;
            this.f27874z = (i) obj;
            this.f27871w = 0;
        } else {
            this.f27873y = null;
            this.f27874z = null;
            this.f27871w = -1;
            obj = null;
        }
        if (this.f27872x == obj) {
            if (obj != null) {
                j0();
                return;
            }
            return;
        }
        this.f27872x = obj;
        if (obj != null) {
            if (this.f27868t != null) {
                r0(this.f27871w);
            }
            h0();
            return;
        }
        i0();
    }

    protected boolean v0(long j4, long j10) {
        return Y(j4);
    }

    protected boolean w0(long j4, long j10) {
        return X(j4);
    }

    protected boolean x0(long j4, long j10) {
        return X(j4) && j10 > 100000;
    }

    protected void y0(h hVar) {
        this.U.f21596f++;
        hVar.o();
    }

    protected void z0(int i4) {
        com.google.android.exoplayer2.decoder.d dVar = this.U;
        dVar.f21597g += i4;
        this.P += i4;
        int i10 = this.Q + i4;
        this.Q = i10;
        dVar.f21598h = Math.max(i10, dVar.f21598h);
        int i11 = this.f27862n;
        if (i11 <= 0 || this.P < i11) {
            return;
        }
        b0();
    }
}
