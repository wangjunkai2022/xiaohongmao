package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.io.IOException;

/* compiled from: BaseRenderer.java */
/* loaded from: classes2.dex */
public abstract class f implements e2, g2 {

    /* renamed from: a  reason: collision with root package name */
    private final int f23545a;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private h2 f23547c;

    /* renamed from: d  reason: collision with root package name */
    private int f23548d;

    /* renamed from: e  reason: collision with root package name */
    private int f23549e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.exoplayer2.source.x0 f23550f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Format[] f23551g;

    /* renamed from: h  reason: collision with root package name */
    private long f23552h;

    /* renamed from: i  reason: collision with root package name */
    private long f23553i;

    /* renamed from: k  reason: collision with root package name */
    private boolean f23555k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f23556l;

    /* renamed from: b  reason: collision with root package name */
    private final v0 f23546b = new v0();

    /* renamed from: j  reason: collision with root package name */
    private long f23554j = Long.MIN_VALUE;

    public f(int i4) {
        this.f23545a = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final v0 A() {
        this.f23546b.a();
        return this.f23546b;
    }

    protected final int B() {
        return this.f23548d;
    }

    protected final long C() {
        return this.f23553i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Format[] D() {
        return (Format[]) com.google.android.exoplayer2.util.a.g(this.f23551g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean E() {
        return i() ? this.f23555k : ((com.google.android.exoplayer2.source.x0) com.google.android.exoplayer2.util.a.g(this.f23550f)).f();
    }

    protected void F() {
    }

    protected void G(boolean z9, boolean z10) throws ExoPlaybackException {
    }

    protected void H(long j4, boolean z9) throws ExoPlaybackException {
    }

    protected void I() {
    }

    protected void J() throws ExoPlaybackException {
    }

    protected void K() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void L(Format[] formatArr, long j4, long j10) throws ExoPlaybackException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int M(v0 v0Var, DecoderInputBuffer decoderInputBuffer, int i4) {
        int q9 = ((com.google.android.exoplayer2.source.x0) com.google.android.exoplayer2.util.a.g(this.f23550f)).q(v0Var, decoderInputBuffer, i4);
        if (q9 == -4) {
            if (decoderInputBuffer.l()) {
                this.f23554j = Long.MIN_VALUE;
                return this.f23555k ? -4 : -3;
            }
            long j4 = decoderInputBuffer.f21574e + this.f23552h;
            decoderInputBuffer.f21574e = j4;
            this.f23554j = Math.max(this.f23554j, j4);
        } else if (q9 == -5) {
            Format format = (Format) com.google.android.exoplayer2.util.a.g(v0Var.f27763b);
            if (format.subsampleOffsetUs != Long.MAX_VALUE) {
                v0Var.f27763b = format.buildUpon().i0(format.subsampleOffsetUs + this.f23552h).E();
            }
        }
        return q9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int N(long j4) {
        return ((com.google.android.exoplayer2.source.x0) com.google.android.exoplayer2.util.a.g(this.f23550f)).t(j4 - this.f23552h);
    }

    @Override // com.google.android.exoplayer2.e2
    public final void c() {
        com.google.android.exoplayer2.util.a.i(this.f23549e == 1);
        this.f23546b.a();
        this.f23549e = 0;
        this.f23550f = null;
        this.f23551g = null;
        this.f23555k = false;
        F();
    }

    @Override // com.google.android.exoplayer2.z1.b
    public void d(int i4, @Nullable Object obj) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.e2
    public final int getState() {
        return this.f23549e;
    }

    @Override // com.google.android.exoplayer2.e2, com.google.android.exoplayer2.g2
    public final int getTrackType() {
        return this.f23545a;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void h(int i4) {
        this.f23548d = i4;
    }

    @Override // com.google.android.exoplayer2.e2
    public final boolean i() {
        return this.f23554j == Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void j() {
        this.f23555k = true;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void k() throws IOException {
        ((com.google.android.exoplayer2.source.x0) com.google.android.exoplayer2.util.a.g(this.f23550f)).a();
    }

    @Override // com.google.android.exoplayer2.e2
    public final boolean l() {
        return this.f23555k;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void m(Format[] formatArr, com.google.android.exoplayer2.source.x0 x0Var, long j4, long j10) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.i(!this.f23555k);
        this.f23550f = x0Var;
        this.f23554j = j10;
        this.f23551g = formatArr;
        this.f23552h = j10;
        L(formatArr, j4, j10);
    }

    @Override // com.google.android.exoplayer2.e2
    public final g2 n() {
        return this;
    }

    @Override // com.google.android.exoplayer2.e2
    public /* synthetic */ void p(float f10, float f11) {
        d2.a(this, f10, f11);
    }

    @Override // com.google.android.exoplayer2.e2
    public final void q(h2 h2Var, Format[] formatArr, com.google.android.exoplayer2.source.x0 x0Var, long j4, boolean z9, boolean z10, long j10, long j11) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.i(this.f23549e == 0);
        this.f23547c = h2Var;
        this.f23549e = 1;
        this.f23553i = j4;
        G(z9, z10);
        m(formatArr, x0Var, j10, j11);
        H(j4, z9);
    }

    @Override // com.google.android.exoplayer2.g2
    public int r() throws ExoPlaybackException {
        return 0;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void reset() {
        com.google.android.exoplayer2.util.a.i(this.f23549e == 0);
        this.f23546b.a();
        I();
    }

    @Override // com.google.android.exoplayer2.e2
    public final void start() throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.i(this.f23549e == 1);
        this.f23549e = 2;
        J();
    }

    @Override // com.google.android.exoplayer2.e2
    public final void stop() {
        com.google.android.exoplayer2.util.a.i(this.f23549e == 2);
        this.f23549e = 1;
        K();
    }

    @Override // com.google.android.exoplayer2.e2
    @Nullable
    public final com.google.android.exoplayer2.source.x0 t() {
        return this.f23550f;
    }

    @Override // com.google.android.exoplayer2.e2
    public final long u() {
        return this.f23554j;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void v(long j4) throws ExoPlaybackException {
        this.f23555k = false;
        this.f23553i = j4;
        this.f23554j = j4;
        H(j4, false);
    }

    @Override // com.google.android.exoplayer2.e2
    @Nullable
    public com.google.android.exoplayer2.util.y w() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ExoPlaybackException x(Throwable th, @Nullable Format format) {
        return y(th, format, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ExoPlaybackException y(Throwable th, @Nullable Format format, boolean z9) {
        int i4;
        if (format != null && !this.f23556l) {
            this.f23556l = true;
            try {
                int d4 = f2.d(a(format));
                this.f23556l = false;
                i4 = d4;
            } catch (ExoPlaybackException unused) {
                this.f23556l = false;
            } catch (Throwable th2) {
                this.f23556l = false;
                throw th2;
            }
            return ExoPlaybackException.createForRenderer(th, getName(), B(), format, i4, z9);
        }
        i4 = 4;
        return ExoPlaybackException.createForRenderer(th, getName(), B(), format, i4, z9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final h2 z() {
        return (h2) com.google.android.exoplayer2.util.a.g(this.f23547c);
    }
}
