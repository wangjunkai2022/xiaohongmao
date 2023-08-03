package com.google.android.exoplayer2;

import com.google.android.exoplayer2.s2;

/* compiled from: DefaultControlDispatcher.java */
/* loaded from: classes2.dex */
public class k implements j {

    /* renamed from: d  reason: collision with root package name */
    public static final int f23775d = 15000;

    /* renamed from: e  reason: collision with root package name */
    public static final int f23776e = 5000;

    /* renamed from: f  reason: collision with root package name */
    private static final int f23777f = 3000;

    /* renamed from: a  reason: collision with root package name */
    private final s2.d f23778a;

    /* renamed from: b  reason: collision with root package name */
    private long f23779b;

    /* renamed from: c  reason: collision with root package name */
    private long f23780c;

    public k() {
        this(15000L, 5000L);
    }

    private static void p(v1 v1Var, long j4) {
        long currentPosition = v1Var.getCurrentPosition() + j4;
        long duration = v1Var.getDuration();
        if (duration != i.f23649b) {
            currentPosition = Math.min(currentPosition, duration);
        }
        v1Var.x(v1Var.j0(), Math.max(currentPosition, 0L));
    }

    @Override // com.google.android.exoplayer2.j
    public boolean a(v1 v1Var, t1 t1Var) {
        v1Var.g(t1Var);
        return true;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean b(v1 v1Var) {
        if (h() && v1Var.U()) {
            p(v1Var, -this.f23779b);
            return true;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean c(v1 v1Var, int i4, long j4) {
        v1Var.x(i4, j4);
        return true;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean d(v1 v1Var, boolean z9) {
        v1Var.R0(z9);
        return true;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean e(v1 v1Var, int i4) {
        v1Var.j(i4);
        return true;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean f(v1 v1Var, boolean z9) {
        v1Var.y(z9);
        return true;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean g(v1 v1Var) {
        if (l() && v1Var.U()) {
            p(v1Var, this.f23780c);
            return true;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean h() {
        return this.f23779b > 0;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean i(v1 v1Var) {
        v1Var.a();
        return true;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean j(v1 v1Var) {
        s2 A0 = v1Var.A0();
        if (!A0.v() && !v1Var.K()) {
            int j02 = v1Var.j0();
            A0.r(j02, this.f23778a);
            int r12 = v1Var.r1();
            boolean z9 = this.f23778a.j() && !this.f23778a.f24580h;
            if (r12 != -1 && (v1Var.getCurrentPosition() <= 3000 || z9)) {
                v1Var.x(r12, i.f23649b);
            } else if (!z9) {
                v1Var.x(j02, 0L);
            }
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean k(v1 v1Var) {
        s2 A0 = v1Var.A0();
        if (!A0.v() && !v1Var.K()) {
            int j02 = v1Var.j0();
            A0.r(j02, this.f23778a);
            int x12 = v1Var.x1();
            if (x12 != -1) {
                v1Var.x(x12, i.f23649b);
            } else if (this.f23778a.j() && this.f23778a.f24581i) {
                v1Var.x(j02, i.f23649b);
            }
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean l() {
        return this.f23780c > 0;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean m(v1 v1Var, boolean z9) {
        v1Var.l0(z9);
        return true;
    }

    public long n() {
        return this.f23780c;
    }

    public long o() {
        return this.f23779b;
    }

    @Deprecated
    public void q(long j4) {
        this.f23780c = j4;
    }

    @Deprecated
    public void r(long j4) {
        this.f23779b = j4;
    }

    public k(long j4, long j10) {
        this.f23780c = j4;
        this.f23779b = j10;
        this.f23778a = new s2.d();
    }
}
