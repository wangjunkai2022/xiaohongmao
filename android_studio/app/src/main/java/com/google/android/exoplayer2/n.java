package com.google.android.exoplayer2;

import androidx.annotation.Nullable;

/* compiled from: DefaultMediaClock.java */
/* loaded from: classes2.dex */
final class n implements com.google.android.exoplayer2.util.y {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.q0 f24171a;

    /* renamed from: b  reason: collision with root package name */
    private final a f24172b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private e2 f24173c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.util.y f24174d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f24175e = true;

    /* renamed from: f  reason: collision with root package name */
    private boolean f24176f;

    /* compiled from: DefaultMediaClock.java */
    /* loaded from: classes2.dex */
    public interface a {
        void c(t1 t1Var);
    }

    public n(a aVar, com.google.android.exoplayer2.util.d dVar) {
        this.f24172b = aVar;
        this.f24171a = new com.google.android.exoplayer2.util.q0(dVar);
    }

    private boolean d(boolean z9) {
        e2 e2Var = this.f24173c;
        return e2Var == null || e2Var.b() || (!this.f24173c.f() && (z9 || this.f24173c.i()));
    }

    private void j(boolean z9) {
        if (d(z9)) {
            this.f24175e = true;
            if (this.f24176f) {
                this.f24171a.b();
                return;
            }
            return;
        }
        com.google.android.exoplayer2.util.y yVar = (com.google.android.exoplayer2.util.y) com.google.android.exoplayer2.util.a.g(this.f24174d);
        long o9 = yVar.o();
        if (this.f24175e) {
            if (o9 < this.f24171a.o()) {
                this.f24171a.c();
                return;
            }
            this.f24175e = false;
            if (this.f24176f) {
                this.f24171a.b();
            }
        }
        this.f24171a.a(o9);
        t1 e4 = yVar.e();
        if (e4.equals(this.f24171a.e())) {
            return;
        }
        this.f24171a.g(e4);
        this.f24172b.c(e4);
    }

    public void a(e2 e2Var) {
        if (e2Var == this.f24173c) {
            this.f24174d = null;
            this.f24173c = null;
            this.f24175e = true;
        }
    }

    public void b(e2 e2Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.y yVar;
        com.google.android.exoplayer2.util.y w9 = e2Var.w();
        if (w9 == null || w9 == (yVar = this.f24174d)) {
            return;
        }
        if (yVar == null) {
            this.f24174d = w9;
            this.f24173c = e2Var;
            w9.g(this.f24171a.e());
            return;
        }
        throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."));
    }

    public void c(long j4) {
        this.f24171a.a(j4);
    }

    @Override // com.google.android.exoplayer2.util.y
    public t1 e() {
        com.google.android.exoplayer2.util.y yVar = this.f24174d;
        if (yVar != null) {
            return yVar.e();
        }
        return this.f24171a.e();
    }

    public void f() {
        this.f24176f = true;
        this.f24171a.b();
    }

    @Override // com.google.android.exoplayer2.util.y
    public void g(t1 t1Var) {
        com.google.android.exoplayer2.util.y yVar = this.f24174d;
        if (yVar != null) {
            yVar.g(t1Var);
            t1Var = this.f24174d.e();
        }
        this.f24171a.g(t1Var);
    }

    public void h() {
        this.f24176f = false;
        this.f24171a.c();
    }

    public long i(boolean z9) {
        j(z9);
        return o();
    }

    @Override // com.google.android.exoplayer2.util.y
    public long o() {
        if (this.f24175e) {
            return this.f24171a.o();
        }
        return ((com.google.android.exoplayer2.util.y) com.google.android.exoplayer2.util.a.g(this.f24174d)).o();
    }
}
