package com.google.android.exoplayer2.audio;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.u;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.c;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.f2;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.v0;

/* compiled from: DecoderAudioRenderer.java */
/* loaded from: classes2.dex */
public abstract class b0<T extends com.google.android.exoplayer2.decoder.c<DecoderInputBuffer, ? extends com.google.android.exoplayer2.decoder.h, ? extends DecoderException>> extends com.google.android.exoplayer2.f implements com.google.android.exoplayer2.util.y {
    private static final String H = "DecoderAudioRenderer";
    private static final int I = 0;
    private static final int J = 1;
    private static final int K = 2;
    private boolean A;
    private boolean B;
    private long C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;

    /* renamed from: m  reason: collision with root package name */
    private final u.a f21142m;

    /* renamed from: n  reason: collision with root package name */
    private final AudioSink f21143n;

    /* renamed from: o  reason: collision with root package name */
    private final DecoderInputBuffer f21144o;

    /* renamed from: p  reason: collision with root package name */
    private com.google.android.exoplayer2.decoder.d f21145p;

    /* renamed from: q  reason: collision with root package name */
    private Format f21146q;

    /* renamed from: r  reason: collision with root package name */
    private int f21147r;

    /* renamed from: s  reason: collision with root package name */
    private int f21148s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f21149t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private T f21150u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private DecoderInputBuffer f21151v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private com.google.android.exoplayer2.decoder.h f21152w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private DrmSession f21153x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private DrmSession f21154y;

    /* renamed from: z  reason: collision with root package name */
    private int f21155z;

    /* compiled from: DecoderAudioRenderer.java */
    /* loaded from: classes2.dex */
    private final class b implements AudioSink.a {
        private b() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void a(boolean z9) {
            b0.this.f21142m.C(z9);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void b(long j4) {
            b0.this.f21142m.B(j4);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public /* synthetic */ void c(long j4) {
            v.c(this, j4);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void d(Exception exc) {
            com.google.android.exoplayer2.util.w.e(b0.H, "Audio sink error", exc);
            b0.this.f21142m.l(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void e(int i4, long j4, long j10) {
            b0.this.f21142m.D(i4, j4, j10);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void f() {
            b0.this.Z();
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public /* synthetic */ void g() {
            v.b(this);
        }
    }

    public b0() {
        this((Handler) null, (u) null, new AudioProcessor[0]);
    }

    private boolean R() throws ExoPlaybackException, DecoderException, AudioSink.ConfigurationException, AudioSink.InitializationException, AudioSink.WriteException {
        if (this.f21152w == null) {
            com.google.android.exoplayer2.decoder.h hVar = (com.google.android.exoplayer2.decoder.h) this.f21150u.b();
            this.f21152w = hVar;
            if (hVar == null) {
                return false;
            }
            int i4 = hVar.f21627c;
            if (i4 > 0) {
                this.f21145p.f21596f += i4;
                this.f21143n.q();
            }
        }
        if (this.f21152w.l()) {
            if (this.f21155z == 2) {
                c0();
                X();
                this.B = true;
            } else {
                this.f21152w.o();
                this.f21152w = null;
                try {
                    b0();
                } catch (AudioSink.WriteException e4) {
                    throw y(e4, e4.format, e4.isRecoverable);
                }
            }
            return false;
        }
        if (this.B) {
            this.f21143n.s(V(this.f21150u).buildUpon().M(this.f21147r).N(this.f21148s).E(), 0, null);
            this.B = false;
        }
        AudioSink audioSink = this.f21143n;
        com.google.android.exoplayer2.decoder.h hVar2 = this.f21152w;
        if (audioSink.j(hVar2.f21643e, hVar2.f21626b, 1)) {
            this.f21145p.f21595e++;
            this.f21152w.o();
            this.f21152w = null;
            return true;
        }
        return false;
    }

    private boolean T() throws DecoderException, ExoPlaybackException {
        T t9 = this.f21150u;
        if (t9 == null || this.f21155z == 2 || this.F) {
            return false;
        }
        if (this.f21151v == null) {
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) t9.d();
            this.f21151v = decoderInputBuffer;
            if (decoderInputBuffer == null) {
                return false;
            }
        }
        if (this.f21155z == 1) {
            this.f21151v.n(4);
            this.f21150u.c(this.f21151v);
            this.f21151v = null;
            this.f21155z = 2;
            return false;
        }
        v0 A = A();
        int M = M(A, this.f21151v, 0);
        if (M == -5) {
            Y(A);
            return true;
        } else if (M != -4) {
            if (M == -3) {
                return false;
            }
            throw new IllegalStateException();
        } else if (this.f21151v.l()) {
            this.F = true;
            this.f21150u.c(this.f21151v);
            this.f21151v = null;
            return false;
        } else {
            this.f21151v.q();
            a0(this.f21151v);
            this.f21150u.c(this.f21151v);
            this.A = true;
            this.f21145p.f21593c++;
            this.f21151v = null;
            return true;
        }
    }

    private void U() throws ExoPlaybackException {
        if (this.f21155z != 0) {
            c0();
            X();
            return;
        }
        this.f21151v = null;
        com.google.android.exoplayer2.decoder.h hVar = this.f21152w;
        if (hVar != null) {
            hVar.o();
            this.f21152w = null;
        }
        this.f21150u.flush();
        this.A = false;
    }

    private void X() throws ExoPlaybackException {
        if (this.f21150u != null) {
            return;
        }
        d0(this.f21154y);
        com.google.android.exoplayer2.drm.a0 a0Var = null;
        DrmSession drmSession = this.f21153x;
        if (drmSession != null && (a0Var = drmSession.j()) == null && this.f21153x.e() == null) {
            return;
        }
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            com.google.android.exoplayer2.util.v0.a("createAudioDecoder");
            this.f21150u = Q(this.f21146q, a0Var);
            com.google.android.exoplayer2.util.v0.c();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            this.f21142m.m(this.f21150u.getName(), elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            this.f21145p.f21591a++;
        } catch (DecoderException e4) {
            com.google.android.exoplayer2.util.w.e(H, "Audio codec error", e4);
            this.f21142m.k(e4);
            throw x(e4, this.f21146q);
        } catch (OutOfMemoryError e10) {
            throw x(e10, this.f21146q);
        }
    }

    private void Y(v0 v0Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.e P;
        Format format = (Format) com.google.android.exoplayer2.util.a.g(v0Var.f27763b);
        e0(v0Var.f27762a);
        Format format2 = this.f21146q;
        this.f21146q = format;
        this.f21147r = format.encoderDelay;
        this.f21148s = format.encoderPadding;
        T t9 = this.f21150u;
        if (t9 == null) {
            X();
            this.f21142m.q(this.f21146q, null);
            return;
        }
        if (this.f21154y != this.f21153x) {
            P = new com.google.android.exoplayer2.decoder.e(t9.getName(), format2, format, 0, 128);
        } else {
            P = P(t9.getName(), format2, format);
        }
        if (P.f21624d == 0) {
            if (this.A) {
                this.f21155z = 1;
            } else {
                c0();
                X();
                this.B = true;
            }
        }
        this.f21142m.q(this.f21146q, P);
    }

    private void b0() throws AudioSink.WriteException {
        this.G = true;
        this.f21143n.o();
    }

    private void c0() {
        this.f21151v = null;
        this.f21152w = null;
        this.f21155z = 0;
        this.A = false;
        T t9 = this.f21150u;
        if (t9 != null) {
            this.f21145p.f21592b++;
            t9.release();
            this.f21142m.n(this.f21150u.getName());
            this.f21150u = null;
        }
        d0(null);
    }

    private void d0(@Nullable DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.b(this.f21153x, drmSession);
        this.f21153x = drmSession;
    }

    private void e0(@Nullable DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.b(this.f21154y, drmSession);
        this.f21154y = drmSession;
    }

    private void h0() {
        long p9 = this.f21143n.p(b());
        if (p9 != Long.MIN_VALUE) {
            if (!this.E) {
                p9 = Math.max(this.C, p9);
            }
            this.C = p9;
            this.E = false;
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void F() {
        this.f21146q = null;
        this.B = true;
        try {
            e0(null);
            c0();
            this.f21143n.reset();
        } finally {
            this.f21142m.o(this.f21145p);
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void G(boolean z9, boolean z10) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.d dVar = new com.google.android.exoplayer2.decoder.d();
        this.f21145p = dVar;
        this.f21142m.p(dVar);
        if (z().f23644a) {
            this.f21143n.r();
        } else {
            this.f21143n.h();
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void H(long j4, boolean z9) throws ExoPlaybackException {
        if (this.f21149t) {
            this.f21143n.n();
        } else {
            this.f21143n.flush();
        }
        this.C = j4;
        this.D = true;
        this.E = true;
        this.F = false;
        this.G = false;
        if (this.f21150u != null) {
            U();
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void J() {
        this.f21143n.d();
    }

    @Override // com.google.android.exoplayer2.f
    protected void K() {
        h0();
        this.f21143n.pause();
    }

    protected com.google.android.exoplayer2.decoder.e P(String str, Format format, Format format2) {
        return new com.google.android.exoplayer2.decoder.e(str, format, format2, 0, 1);
    }

    protected abstract T Q(Format format, @Nullable com.google.android.exoplayer2.drm.a0 a0Var) throws DecoderException;

    public void S(boolean z9) {
        this.f21149t = z9;
    }

    protected abstract Format V(T t9);

    protected final int W(Format format) {
        return this.f21143n.m(format);
    }

    @CallSuper
    protected void Z() {
        this.E = true;
    }

    @Override // com.google.android.exoplayer2.g2
    public final int a(Format format) {
        if (!com.google.android.exoplayer2.util.a0.p(format.sampleMimeType)) {
            return f2.a(0);
        }
        int g02 = g0(format);
        if (g02 <= 2) {
            return f2.a(g02);
        }
        return f2.b(g02, 8, z0.f27743a >= 21 ? 32 : 0);
    }

    protected void a0(DecoderInputBuffer decoderInputBuffer) {
        if (!this.D || decoderInputBuffer.k()) {
            return;
        }
        if (Math.abs(decoderInputBuffer.f21574e - this.C) > 500000) {
            this.C = decoderInputBuffer.f21574e;
        }
        this.D = false;
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean b() {
        return this.G && this.f21143n.b();
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.z1.b
    public void d(int i4, @Nullable Object obj) throws ExoPlaybackException {
        if (i4 == 2) {
            this.f21143n.f(((Float) obj).floatValue());
        } else if (i4 == 3) {
            this.f21143n.i((e) obj);
        } else if (i4 == 5) {
            this.f21143n.u((y) obj);
        } else if (i4 == 101) {
            this.f21143n.J(((Boolean) obj).booleanValue());
        } else if (i4 != 102) {
            super.d(i4, obj);
        } else {
            this.f21143n.l(((Integer) obj).intValue());
        }
    }

    @Override // com.google.android.exoplayer2.util.y
    public t1 e() {
        return this.f21143n.e();
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean f() {
        return this.f21143n.c() || (this.f21146q != null && (E() || this.f21152w != null));
    }

    protected final boolean f0(Format format) {
        return this.f21143n.a(format);
    }

    @Override // com.google.android.exoplayer2.util.y
    public void g(t1 t1Var) {
        this.f21143n.g(t1Var);
    }

    protected abstract int g0(Format format);

    @Override // com.google.android.exoplayer2.util.y
    public long o() {
        if (getState() == 2) {
            h0();
        }
        return this.C;
    }

    @Override // com.google.android.exoplayer2.e2
    public void s(long j4, long j10) throws ExoPlaybackException {
        if (this.G) {
            try {
                this.f21143n.o();
                return;
            } catch (AudioSink.WriteException e4) {
                throw y(e4, e4.format, e4.isRecoverable);
            }
        }
        if (this.f21146q == null) {
            v0 A = A();
            this.f21144o.f();
            int M = M(A, this.f21144o, 2);
            if (M != -5) {
                if (M == -4) {
                    com.google.android.exoplayer2.util.a.i(this.f21144o.l());
                    this.F = true;
                    try {
                        b0();
                        return;
                    } catch (AudioSink.WriteException e10) {
                        throw x(e10, null);
                    }
                }
                return;
            }
            Y(A);
        }
        X();
        if (this.f21150u != null) {
            try {
                com.google.android.exoplayer2.util.v0.a("drainAndFeed");
                while (R()) {
                }
                while (T()) {
                }
                com.google.android.exoplayer2.util.v0.c();
                this.f21145p.c();
            } catch (AudioSink.ConfigurationException e11) {
                throw x(e11, e11.format);
            } catch (AudioSink.InitializationException e12) {
                throw y(e12, e12.format, e12.isRecoverable);
            } catch (AudioSink.WriteException e13) {
                throw y(e13, e13.format, e13.isRecoverable);
            } catch (DecoderException e14) {
                com.google.android.exoplayer2.util.w.e(H, "Audio codec error", e14);
                this.f21142m.k(e14);
                throw x(e14, this.f21146q);
            }
        }
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.e2
    @Nullable
    public com.google.android.exoplayer2.util.y w() {
        return this;
    }

    public b0(@Nullable Handler handler, @Nullable u uVar, AudioProcessor... audioProcessorArr) {
        this(handler, uVar, null, audioProcessorArr);
    }

    public b0(@Nullable Handler handler, @Nullable u uVar, @Nullable f fVar, AudioProcessor... audioProcessorArr) {
        this(handler, uVar, new DefaultAudioSink(fVar, audioProcessorArr));
    }

    public b0(@Nullable Handler handler, @Nullable u uVar, AudioSink audioSink) {
        super(1);
        this.f21142m = new u.a(handler, uVar);
        this.f21143n = audioSink;
        audioSink.k(new b());
        this.f21144o = DecoderInputBuffer.s();
        this.f21155z = 0;
        this.B = true;
    }
}
