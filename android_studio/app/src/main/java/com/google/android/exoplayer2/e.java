package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.v1;
import java.util.Collections;
import java.util.List;

/* compiled from: BasePlayer.java */
/* loaded from: classes2.dex */
public abstract class e implements v1 {

    /* renamed from: n0  reason: collision with root package name */
    protected final s2.d f21823n0 = new s2.d();

    private int P1() {
        int k10 = k();
        if (k10 == 1) {
            return 0;
        }
        return k10;
    }

    @Override // com.google.android.exoplayer2.v1
    public final boolean A1() {
        s2 A0 = A0();
        return !A0.v() && A0.r(j0(), this.f21823n0).j();
    }

    @Override // com.google.android.exoplayer2.v1
    public final void D1(List<b1> list) {
        q1(Integer.MAX_VALUE, list);
    }

    @Override // com.google.android.exoplayer2.v1
    public final void E(float f10) {
        g(e().e(f10));
    }

    @Override // com.google.android.exoplayer2.v1
    public final long L0() {
        s2 A0 = A0();
        return (A0.v() || A0.r(j0(), this.f21823n0).f24578f == i.f23649b) ? i.f23649b : (this.f21823n0.c() - this.f21823n0.f24578f) - o1();
    }

    @Override // com.google.android.exoplayer2.v1
    public final void M() {
        i0(0, Integer.MAX_VALUE);
    }

    @Override // com.google.android.exoplayer2.v1
    public final void M1(int i4, b1 b1Var) {
        q1(i4, Collections.singletonList(b1Var));
    }

    @Override // com.google.android.exoplayer2.v1
    @Nullable
    public final b1 N() {
        s2 A0 = A0();
        if (A0.v()) {
            return null;
        }
        return A0.r(j0(), this.f21823n0).f24575c;
    }

    @Override // com.google.android.exoplayer2.v1
    public final void N1(List<b1> list) {
        Y(list, true);
    }

    @Override // com.google.android.exoplayer2.v1
    public final void O0(b1 b1Var) {
        N1(Collections.singletonList(b1Var));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public v1.c O1(v1.c cVar) {
        boolean z9 = false;
        v1.c.a d4 = new v1.c.a().b(cVar).d(3, !K()).d(4, U() && !K()).d(5, hasNext() && !K());
        if (hasPrevious() && !K()) {
            z9 = true;
        }
        return d4.d(6, z9).d(7, true ^ K()).e();
    }

    @Override // com.google.android.exoplayer2.v1
    public final int R() {
        long s12 = s1();
        long duration = getDuration();
        if (s12 == i.f23649b || duration == i.f23649b) {
            return 0;
        }
        if (duration == 0) {
            return 100;
        }
        return com.google.android.exoplayer2.util.z0.t((int) ((s12 * 100) / duration), 0, 100);
    }

    @Override // com.google.android.exoplayer2.v1
    @Nullable
    @Deprecated
    public final ExoPlaybackException T() {
        return k0();
    }

    @Override // com.google.android.exoplayer2.v1
    public final boolean U() {
        s2 A0 = A0();
        return !A0.v() && A0.r(j0(), this.f21823n0).f24580h;
    }

    @Override // com.google.android.exoplayer2.v1
    public final b1 U0(int i4) {
        return A0().r(i4, this.f21823n0).f24575c;
    }

    @Override // com.google.android.exoplayer2.v1
    public final void X() {
        n1(j0());
    }

    @Override // com.google.android.exoplayer2.v1
    public final long X0() {
        s2 A0 = A0();
        return A0.v() ? i.f23649b : A0.r(j0(), this.f21823n0).f();
    }

    @Override // com.google.android.exoplayer2.v1
    public final void Z0(b1 b1Var) {
        D1(Collections.singletonList(b1Var));
    }

    @Override // com.google.android.exoplayer2.v1
    public final boolean b0() {
        s2 A0 = A0();
        return !A0.v() && A0.r(j0(), this.f21823n0).f24581i;
    }

    @Override // com.google.android.exoplayer2.v1
    @Nullable
    @Deprecated
    public final Object c0() {
        b1.g gVar;
        s2 A0 = A0();
        if (A0.v() || (gVar = A0.r(j0(), this.f21823n0).f24575c.f21439b) == null) {
            return null;
        }
        return gVar.f21509h;
    }

    @Override // com.google.android.exoplayer2.v1
    public final void d() {
        l0(true);
    }

    @Override // com.google.android.exoplayer2.v1
    public final void d0(int i4) {
        i0(i4, i4 + 1);
    }

    @Override // com.google.android.exoplayer2.v1
    public final int e0() {
        return A0().u();
    }

    @Override // com.google.android.exoplayer2.v1
    public final void e1(b1 b1Var, long j4) {
        m1(Collections.singletonList(b1Var), 0, j4);
    }

    @Override // com.google.android.exoplayer2.v1
    public final void h1(b1 b1Var, boolean z9) {
        Y(Collections.singletonList(b1Var), z9);
    }

    @Override // com.google.android.exoplayer2.v1
    public final boolean hasNext() {
        return x1() != -1;
    }

    @Override // com.google.android.exoplayer2.v1
    public final boolean hasPrevious() {
        return r1() != -1;
    }

    @Override // com.google.android.exoplayer2.v1
    public final boolean isPlaying() {
        return c() == 3 && Q0() && y0() == 0;
    }

    @Override // com.google.android.exoplayer2.v1
    public final void n1(int i4) {
        x(i4, i.f23649b);
    }

    @Override // com.google.android.exoplayer2.v1
    public final void next() {
        int x12 = x1();
        if (x12 != -1) {
            n1(x12);
        }
    }

    @Override // com.google.android.exoplayer2.v1
    @Nullable
    public final Object o0() {
        s2 A0 = A0();
        if (A0.v()) {
            return null;
        }
        return A0.r(j0(), this.f21823n0).f24576d;
    }

    @Override // com.google.android.exoplayer2.v1
    public final void pause() {
        l0(false);
    }

    @Override // com.google.android.exoplayer2.v1
    public final void previous() {
        int r12 = r1();
        if (r12 != -1) {
            n1(r12);
        }
    }

    @Override // com.google.android.exoplayer2.v1
    public final int r1() {
        s2 A0 = A0();
        if (A0.v()) {
            return -1;
        }
        return A0.p(j0(), P1(), H1());
    }

    @Override // com.google.android.exoplayer2.v1
    public final void seekTo(long j4) {
        x(j0(), j4);
    }

    @Override // com.google.android.exoplayer2.v1
    public final void stop() {
        y(false);
    }

    @Override // com.google.android.exoplayer2.v1
    public final boolean t0(int i4) {
        return N0().b(i4);
    }

    @Override // com.google.android.exoplayer2.v1
    public final int x1() {
        s2 A0 = A0();
        if (A0.v()) {
            return -1;
        }
        return A0.i(j0(), P1(), H1());
    }

    @Override // com.google.android.exoplayer2.v1
    public final void z1(int i4, int i10) {
        if (i4 != i10) {
            C1(i4, i4 + 1, i10);
        }
    }
}
