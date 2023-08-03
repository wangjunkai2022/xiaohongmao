package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import java.io.IOException;

/* compiled from: NoSampleRenderer.java */
/* loaded from: classes2.dex */
public abstract class o1 implements e2, g2 {

    /* renamed from: a  reason: collision with root package name */
    private h2 f24226a;

    /* renamed from: b  reason: collision with root package name */
    private int f24227b;

    /* renamed from: c  reason: collision with root package name */
    private int f24228c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.source.x0 f24229d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f24230e;

    protected void A() {
    }

    protected void B() throws ExoPlaybackException {
    }

    protected void C() {
    }

    @Override // com.google.android.exoplayer2.g2
    public int a(Format format) throws ExoPlaybackException {
        return f2.a(0);
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean b() {
        return true;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void c() {
        com.google.android.exoplayer2.util.a.i(this.f24228c == 1);
        this.f24228c = 0;
        this.f24229d = null;
        this.f24230e = false;
        o();
    }

    @Override // com.google.android.exoplayer2.z1.b
    public void d(int i4, @Nullable Object obj) throws ExoPlaybackException {
    }

    @Nullable
    protected final h2 e() {
        return this.f24226a;
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean f() {
        return true;
    }

    protected final int g() {
        return this.f24227b;
    }

    @Override // com.google.android.exoplayer2.e2
    public final int getState() {
        return this.f24228c;
    }

    @Override // com.google.android.exoplayer2.e2, com.google.android.exoplayer2.g2
    public final int getTrackType() {
        return 7;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void h(int i4) {
        this.f24227b = i4;
    }

    @Override // com.google.android.exoplayer2.e2
    public final boolean i() {
        return true;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void j() {
        this.f24230e = true;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void k() throws IOException {
    }

    @Override // com.google.android.exoplayer2.e2
    public final boolean l() {
        return this.f24230e;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void m(Format[] formatArr, com.google.android.exoplayer2.source.x0 x0Var, long j4, long j10) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.i(!this.f24230e);
        this.f24229d = x0Var;
        z(j10);
    }

    @Override // com.google.android.exoplayer2.e2
    public final g2 n() {
        return this;
    }

    protected void o() {
    }

    @Override // com.google.android.exoplayer2.e2
    public /* synthetic */ void p(float f10, float f11) {
        d2.a(this, f10, f11);
    }

    @Override // com.google.android.exoplayer2.e2
    public final void q(h2 h2Var, Format[] formatArr, com.google.android.exoplayer2.source.x0 x0Var, long j4, boolean z9, boolean z10, long j10, long j11) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.i(this.f24228c == 0);
        this.f24226a = h2Var;
        this.f24228c = 1;
        x(z9);
        m(formatArr, x0Var, j10, j11);
        y(j4, z9);
    }

    @Override // com.google.android.exoplayer2.g2
    public int r() throws ExoPlaybackException {
        return 0;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void reset() {
        com.google.android.exoplayer2.util.a.i(this.f24228c == 0);
        A();
    }

    @Override // com.google.android.exoplayer2.e2
    public final void start() throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.i(this.f24228c == 1);
        this.f24228c = 2;
        B();
    }

    @Override // com.google.android.exoplayer2.e2
    public final void stop() {
        com.google.android.exoplayer2.util.a.i(this.f24228c == 2);
        this.f24228c = 1;
        C();
    }

    @Override // com.google.android.exoplayer2.e2
    @Nullable
    public final com.google.android.exoplayer2.source.x0 t() {
        return this.f24229d;
    }

    @Override // com.google.android.exoplayer2.e2
    public long u() {
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.e2
    public final void v(long j4) throws ExoPlaybackException {
        this.f24230e = false;
        y(j4, false);
    }

    @Override // com.google.android.exoplayer2.e2
    @Nullable
    public com.google.android.exoplayer2.util.y w() {
        return null;
    }

    protected void x(boolean z9) throws ExoPlaybackException {
    }

    protected void y(long j4, boolean z9) throws ExoPlaybackException {
    }

    protected void z(long j4) throws ExoPlaybackException {
    }
}
