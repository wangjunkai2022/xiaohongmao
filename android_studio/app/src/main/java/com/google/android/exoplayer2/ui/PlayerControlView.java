package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.ui.q;
import com.google.android.exoplayer2.ui.u0;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.w1;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class PlayerControlView extends FrameLayout {
    public static final int T1 = 5000;
    public static final int V1 = 0;

    /* renamed from: b2  reason: collision with root package name */
    public static final int f26135b2 = 200;

    /* renamed from: g2  reason: collision with root package name */
    public static final int f26136g2 = 100;

    /* renamed from: p2  reason: collision with root package name */
    private static final int f26137p2 = 1000;
    private final Drawable A;
    private final Drawable B;
    private final float C;
    private final float D;
    private final String E;
    private final String F;
    @Nullable
    private v1 G;
    private com.google.android.exoplayer2.j H;
    @Nullable
    private c I;
    @Nullable
    private u1 J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private int O;
    private int P;
    private int Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private long W;

    /* renamed from: a  reason: collision with root package name */
    private final b f26138a;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<d> f26139b;

    /* renamed from: b1  reason: collision with root package name */
    private long[] f26140b1;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f26141c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f26142d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final View f26143e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final View f26144f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final View f26145g;

    /* renamed from: g1  reason: collision with root package name */
    private boolean[] f26146g1;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final View f26147h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final ImageView f26148i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final ImageView f26149j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final View f26150k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final TextView f26151l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final TextView f26152m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final u0 f26153n;

    /* renamed from: o  reason: collision with root package name */
    private final StringBuilder f26154o;

    /* renamed from: p  reason: collision with root package name */
    private final Formatter f26155p;

    /* renamed from: p1  reason: collision with root package name */
    private long[] f26156p1;

    /* renamed from: q  reason: collision with root package name */
    private final s2.b f26157q;

    /* renamed from: r  reason: collision with root package name */
    private final s2.d f26158r;

    /* renamed from: s  reason: collision with root package name */
    private final Runnable f26159s;

    /* renamed from: t  reason: collision with root package name */
    private final Runnable f26160t;

    /* renamed from: u  reason: collision with root package name */
    private final Drawable f26161u;

    /* renamed from: v  reason: collision with root package name */
    private final Drawable f26162v;

    /* renamed from: w  reason: collision with root package name */
    private final Drawable f26163w;

    /* renamed from: x  reason: collision with root package name */
    private final String f26164x;

    /* renamed from: x1  reason: collision with root package name */
    private boolean[] f26165x1;

    /* renamed from: y  reason: collision with root package name */
    private final String f26166y;

    /* renamed from: y1  reason: collision with root package name */
    private long f26167y1;

    /* renamed from: z  reason: collision with root package name */
    private final String f26168z;

    /* loaded from: classes2.dex */
    private final class b implements v1.f, u0.a, View.OnClickListener {
        private b() {
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void B(b1 b1Var, int i4) {
            w1.f(this, b1Var, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void C(boolean z9, int i4) {
            w1.h(this, z9, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void E(boolean z9) {
            w1.d(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void G(boolean z9) {
            w1.e(this, z9);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void U(int i4) {
            w1.n(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void X() {
            w1.q(this);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void a0(boolean z9, int i4) {
            w1.m(this, z9, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void c(t1 t1Var) {
            w1.i(this, t1Var);
        }

        @Override // com.google.android.exoplayer2.ui.u0.a
        public void d(u0 u0Var, long j4) {
            if (PlayerControlView.this.f26152m != null) {
                PlayerControlView.this.f26152m.setText(com.google.android.exoplayer2.util.z0.n0(PlayerControlView.this.f26154o, PlayerControlView.this.f26155p, j4));
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

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void g(List list) {
            w1.s(this, list);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void h(v1.c cVar) {
            w1.a(this, cVar);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void i(int i4) {
            w1.p(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void j(s2 s2Var, int i4) {
            w1.t(this, s2Var, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void l(int i4) {
            w1.j(this, i4);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void m(f1 f1Var) {
            w1.g(this, f1Var);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void n(boolean z9) {
            w1.r(this, z9);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1 v1Var = PlayerControlView.this.G;
            if (v1Var == null) {
                return;
            }
            if (PlayerControlView.this.f26142d == view) {
                PlayerControlView.this.H.k(v1Var);
            } else if (PlayerControlView.this.f26141c == view) {
                PlayerControlView.this.H.j(v1Var);
            } else if (PlayerControlView.this.f26145g == view) {
                if (v1Var.c() != 4) {
                    PlayerControlView.this.H.g(v1Var);
                }
            } else if (PlayerControlView.this.f26147h == view) {
                PlayerControlView.this.H.b(v1Var);
            } else if (PlayerControlView.this.f26143e == view) {
                PlayerControlView.this.D(v1Var);
            } else if (PlayerControlView.this.f26144f == view) {
                PlayerControlView.this.C(v1Var);
            } else if (PlayerControlView.this.f26148i == view) {
                PlayerControlView.this.H.e(v1Var, com.google.android.exoplayer2.util.j0.a(v1Var.k(), PlayerControlView.this.Q));
            } else if (PlayerControlView.this.f26149j == view) {
                PlayerControlView.this.H.d(v1Var, !v1Var.H1());
            }
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void s(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar) {
            w1.v(this, trackGroupArray, mVar);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void u(ExoPlaybackException exoPlaybackException) {
            w1.l(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.v1.f
        public /* synthetic */ void v(boolean z9) {
            w1.c(this, z9);
        }

        @Override // com.google.android.exoplayer2.ui.u0.a
        public void x(u0 u0Var, long j4, boolean z9) {
            PlayerControlView.this.N = false;
            if (z9 || PlayerControlView.this.G == null) {
                return;
            }
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.N(playerControlView.G, j4);
        }

        @Override // com.google.android.exoplayer2.ui.u0.a
        public void y(u0 u0Var, long j4) {
            PlayerControlView.this.N = true;
            if (PlayerControlView.this.f26152m != null) {
                PlayerControlView.this.f26152m.setText(com.google.android.exoplayer2.util.z0.n0(PlayerControlView.this.f26154o, PlayerControlView.this.f26155p, j4));
            }
        }

        @Override // com.google.android.exoplayer2.v1.f
        public void z(v1 v1Var, v1.g gVar) {
            if (gVar.b(5, 6)) {
                PlayerControlView.this.U();
            }
            if (gVar.b(5, 6, 8)) {
                PlayerControlView.this.V();
            }
            if (gVar.a(9)) {
                PlayerControlView.this.W();
            }
            if (gVar.a(10)) {
                PlayerControlView.this.X();
            }
            if (gVar.b(9, 10, 12, 0)) {
                PlayerControlView.this.T();
            }
            if (gVar.b(12, 0)) {
                PlayerControlView.this.Y();
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(long j4, long j10);
    }

    /* loaded from: classes2.dex */
    public interface d {
        void d(int i4);
    }

    static {
        com.google.android.exoplayer2.u0.a("goog.exo.ui");
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    private static boolean A(s2 s2Var, s2.d dVar) {
        if (s2Var.u() > 100) {
            return false;
        }
        int u9 = s2Var.u();
        for (int i4 = 0; i4 < u9; i4++) {
            if (s2Var.r(i4, dVar).f24586n == com.google.android.exoplayer2.i.f23649b) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(v1 v1Var) {
        this.H.m(v1Var, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(v1 v1Var) {
        int c10 = v1Var.c();
        if (c10 == 1) {
            u1 u1Var = this.J;
            if (u1Var != null) {
                u1Var.a();
            } else {
                this.H.i(v1Var);
            }
        } else if (c10 == 4) {
            M(v1Var, v1Var.j0(), com.google.android.exoplayer2.i.f23649b);
        }
        this.H.m(v1Var, true);
    }

    private void E(v1 v1Var) {
        int c10 = v1Var.c();
        if (c10 != 1 && c10 != 4 && v1Var.Q0()) {
            C(v1Var);
        } else {
            D(v1Var);
        }
    }

    private static int F(TypedArray typedArray, int i4) {
        return typedArray.getInt(q.m.f26844q0, i4);
    }

    private void H() {
        removeCallbacks(this.f26160t);
        if (this.O > 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i4 = this.O;
            this.W = uptimeMillis + i4;
            if (this.K) {
                postDelayed(this.f26160t, i4);
                return;
            }
            return;
        }
        this.W = com.google.android.exoplayer2.i.f23649b;
    }

    @SuppressLint({"InlinedApi"})
    private static boolean I(int i4) {
        return i4 == 90 || i4 == 89 || i4 == 85 || i4 == 79 || i4 == 126 || i4 == 127 || i4 == 87 || i4 == 88;
    }

    private void L() {
        View view;
        View view2;
        boolean P = P();
        if (!P && (view2 = this.f26143e) != null) {
            view2.requestFocus();
        } else if (!P || (view = this.f26144f) == null) {
        } else {
            view.requestFocus();
        }
    }

    private boolean M(v1 v1Var, int i4, long j4) {
        return this.H.c(v1Var, i4, j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(v1 v1Var, long j4) {
        int j02;
        s2 A0 = v1Var.A0();
        if (this.M && !A0.v()) {
            int u9 = A0.u();
            j02 = 0;
            while (true) {
                long f10 = A0.r(j02, this.f26158r).f();
                if (j4 < f10) {
                    break;
                } else if (j02 == u9 - 1) {
                    j4 = f10;
                    break;
                } else {
                    j4 -= f10;
                    j02++;
                }
            }
        } else {
            j02 = v1Var.j0();
        }
        M(v1Var, j02, j4);
        V();
    }

    private boolean P() {
        v1 v1Var = this.G;
        return (v1Var == null || v1Var.c() == 4 || this.G.c() == 1 || !this.G.Q0()) ? false : true;
    }

    private void R() {
        U();
        T();
        W();
        X();
        Y();
    }

    private void S(boolean z9, boolean z10, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z10);
        view.setAlpha(z10 ? this.C : this.D);
        view.setVisibility(z9 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void T() {
        /*
            r8 = this;
            boolean r0 = r8.J()
            if (r0 == 0) goto L9f
            boolean r0 = r8.K
            if (r0 != 0) goto Lc
            goto L9f
        Lc:
            com.google.android.exoplayer2.v1 r0 = r8.G
            r1 = 0
            if (r0 == 0) goto L78
            com.google.android.exoplayer2.s2 r2 = r0.A0()
            boolean r3 = r2.v()
            if (r3 != 0) goto L78
            boolean r3 = r0.K()
            if (r3 != 0) goto L78
            r3 = 4
            boolean r3 = r0.t0(r3)
            int r4 = r0.j0()
            com.google.android.exoplayer2.s2$d r5 = r8.f26158r
            r2.r(r4, r5)
            r2 = 1
            if (r3 != 0) goto L44
            com.google.android.exoplayer2.s2$d r4 = r8.f26158r
            boolean r4 = r4.j()
            if (r4 == 0) goto L44
            r4 = 6
            boolean r4 = r0.t0(r4)
            if (r4 == 0) goto L42
            goto L44
        L42:
            r4 = 0
            goto L45
        L44:
            r4 = 1
        L45:
            if (r3 == 0) goto L51
            com.google.android.exoplayer2.j r5 = r8.H
            boolean r5 = r5.h()
            if (r5 == 0) goto L51
            r5 = 1
            goto L52
        L51:
            r5 = 0
        L52:
            if (r3 == 0) goto L5e
            com.google.android.exoplayer2.j r6 = r8.H
            boolean r6 = r6.l()
            if (r6 == 0) goto L5e
            r6 = 1
            goto L5f
        L5e:
            r6 = 0
        L5f:
            com.google.android.exoplayer2.s2$d r7 = r8.f26158r
            boolean r7 = r7.j()
            if (r7 == 0) goto L6d
            com.google.android.exoplayer2.s2$d r7 = r8.f26158r
            boolean r7 = r7.f24581i
            if (r7 != 0) goto L74
        L6d:
            r7 = 5
            boolean r0 = r0.t0(r7)
            if (r0 == 0) goto L75
        L74:
            r1 = 1
        L75:
            r0 = r1
            r1 = r4
            goto L7c
        L78:
            r0 = 0
            r3 = 0
            r5 = 0
            r6 = 0
        L7c:
            boolean r2 = r8.T
            android.view.View r4 = r8.f26141c
            r8.S(r2, r1, r4)
            boolean r1 = r8.R
            android.view.View r2 = r8.f26147h
            r8.S(r1, r5, r2)
            boolean r1 = r8.S
            android.view.View r2 = r8.f26145g
            r8.S(r1, r6, r2)
            boolean r1 = r8.U
            android.view.View r2 = r8.f26142d
            r8.S(r1, r0, r2)
            com.google.android.exoplayer2.ui.u0 r0 = r8.f26153n
            if (r0 == 0) goto L9f
            r0.setEnabled(r3)
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.PlayerControlView.T():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        boolean z9;
        if (J() && this.K) {
            boolean P = P();
            View view = this.f26143e;
            boolean z10 = true;
            if (view != null) {
                z9 = (P && view.isFocused()) | false;
                this.f26143e.setVisibility(P ? 8 : 0);
            } else {
                z9 = false;
            }
            View view2 = this.f26144f;
            if (view2 != null) {
                z9 |= (P || !view2.isFocused()) ? false : false;
                this.f26144f.setVisibility(P ? 0 : 8);
            }
            if (z9) {
                L();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        long j4;
        float f10;
        if (J() && this.K) {
            v1 v1Var = this.G;
            long j10 = 0;
            if (v1Var != null) {
                j10 = this.f26167y1 + v1Var.o1();
                j4 = this.f26167y1 + v1Var.I1();
            } else {
                j4 = 0;
            }
            TextView textView = this.f26152m;
            if (textView != null && !this.N) {
                textView.setText(com.google.android.exoplayer2.util.z0.n0(this.f26154o, this.f26155p, j10));
            }
            u0 u0Var = this.f26153n;
            if (u0Var != null) {
                u0Var.setPosition(j10);
                this.f26153n.setBufferedPosition(j4);
            }
            c cVar = this.I;
            if (cVar != null) {
                cVar.a(j10, j4);
            }
            removeCallbacks(this.f26159s);
            int c10 = v1Var == null ? 1 : v1Var.c();
            if (v1Var == null || !v1Var.isPlaying()) {
                if (c10 == 4 || c10 == 1) {
                    return;
                }
                postDelayed(this.f26159s, 1000L);
                return;
            }
            u0 u0Var2 = this.f26153n;
            long min = Math.min(u0Var2 != null ? u0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (j10 % 1000));
            postDelayed(this.f26159s, com.google.android.exoplayer2.util.z0.u(v1Var.e().f25300a > 0.0f ? ((float) min) / f10 : 1000L, this.P, 1000L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        ImageView imageView;
        if (J() && this.K && (imageView = this.f26148i) != null) {
            if (this.Q == 0) {
                S(false, false, imageView);
                return;
            }
            v1 v1Var = this.G;
            if (v1Var == null) {
                S(true, false, imageView);
                this.f26148i.setImageDrawable(this.f26161u);
                this.f26148i.setContentDescription(this.f26164x);
                return;
            }
            S(true, true, imageView);
            int k10 = v1Var.k();
            if (k10 == 0) {
                this.f26148i.setImageDrawable(this.f26161u);
                this.f26148i.setContentDescription(this.f26164x);
            } else if (k10 == 1) {
                this.f26148i.setImageDrawable(this.f26162v);
                this.f26148i.setContentDescription(this.f26166y);
            } else if (k10 == 2) {
                this.f26148i.setImageDrawable(this.f26163w);
                this.f26148i.setContentDescription(this.f26168z);
            }
            this.f26148i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        ImageView imageView;
        String str;
        if (J() && this.K && (imageView = this.f26149j) != null) {
            v1 v1Var = this.G;
            if (!this.V) {
                S(false, false, imageView);
            } else if (v1Var == null) {
                S(true, false, imageView);
                this.f26149j.setImageDrawable(this.B);
                this.f26149j.setContentDescription(this.F);
            } else {
                S(true, true, imageView);
                this.f26149j.setImageDrawable(v1Var.H1() ? this.A : this.B);
                ImageView imageView2 = this.f26149j;
                if (v1Var.H1()) {
                    str = this.E;
                } else {
                    str = this.F;
                }
                imageView2.setContentDescription(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        int i4;
        s2.d dVar;
        v1 v1Var = this.G;
        if (v1Var == null) {
            return;
        }
        boolean z9 = true;
        this.M = this.L && A(v1Var.A0(), this.f26158r);
        long j4 = 0;
        this.f26167y1 = 0L;
        s2 A0 = v1Var.A0();
        if (A0.v()) {
            i4 = 0;
        } else {
            int j02 = v1Var.j0();
            boolean z10 = this.M;
            int i10 = z10 ? 0 : j02;
            int u9 = z10 ? A0.u() - 1 : j02;
            long j10 = 0;
            i4 = 0;
            while (true) {
                if (i10 > u9) {
                    break;
                }
                if (i10 == j02) {
                    this.f26167y1 = com.google.android.exoplayer2.i.d(j10);
                }
                A0.r(i10, this.f26158r);
                s2.d dVar2 = this.f26158r;
                if (dVar2.f24586n == com.google.android.exoplayer2.i.f23649b) {
                    com.google.android.exoplayer2.util.a.i(this.M ^ z9);
                    break;
                }
                int i11 = dVar2.f24587o;
                while (true) {
                    dVar = this.f26158r;
                    if (i11 <= dVar.f24588p) {
                        A0.j(i11, this.f26157q);
                        int f10 = this.f26157q.f();
                        for (int i12 = 0; i12 < f10; i12++) {
                            long i13 = this.f26157q.i(i12);
                            if (i13 == Long.MIN_VALUE) {
                                long j11 = this.f26157q.f24556d;
                                if (j11 != com.google.android.exoplayer2.i.f23649b) {
                                    i13 = j11;
                                }
                            }
                            long q9 = i13 + this.f26157q.q();
                            if (q9 >= 0) {
                                long[] jArr = this.f26140b1;
                                if (i4 == jArr.length) {
                                    int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                    this.f26140b1 = Arrays.copyOf(jArr, length);
                                    this.f26146g1 = Arrays.copyOf(this.f26146g1, length);
                                }
                                this.f26140b1[i4] = com.google.android.exoplayer2.i.d(j10 + q9);
                                this.f26146g1[i4] = this.f26157q.r(i12);
                                i4++;
                            }
                        }
                        i11++;
                    }
                }
                j10 += dVar.f24586n;
                i10++;
                z9 = true;
            }
            j4 = j10;
        }
        long d4 = com.google.android.exoplayer2.i.d(j4);
        TextView textView = this.f26151l;
        if (textView != null) {
            textView.setText(com.google.android.exoplayer2.util.z0.n0(this.f26154o, this.f26155p, d4));
        }
        u0 u0Var = this.f26153n;
        if (u0Var != null) {
            u0Var.setDuration(d4);
            int length2 = this.f26156p1.length;
            int i14 = i4 + length2;
            long[] jArr2 = this.f26140b1;
            if (i14 > jArr2.length) {
                this.f26140b1 = Arrays.copyOf(jArr2, i14);
                this.f26146g1 = Arrays.copyOf(this.f26146g1, i14);
            }
            System.arraycopy(this.f26156p1, 0, this.f26140b1, i4, length2);
            System.arraycopy(this.f26165x1, 0, this.f26146g1, i4, length2);
            this.f26153n.c(this.f26140b1, this.f26146g1, i14);
        }
        V();
    }

    public boolean B(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        v1 v1Var = this.G;
        if (v1Var == null || !I(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode == 90) {
                if (v1Var.c() != 4) {
                    this.H.g(v1Var);
                    return true;
                }
                return true;
            } else if (keyCode == 89) {
                this.H.b(v1Var);
                return true;
            } else if (keyEvent.getRepeatCount() == 0) {
                if (keyCode == 79 || keyCode == 85) {
                    E(v1Var);
                    return true;
                } else if (keyCode == 87) {
                    this.H.k(v1Var);
                    return true;
                } else if (keyCode == 88) {
                    this.H.j(v1Var);
                    return true;
                } else if (keyCode == 126) {
                    D(v1Var);
                    return true;
                } else if (keyCode != 127) {
                    return true;
                } else {
                    C(v1Var);
                    return true;
                }
            } else {
                return true;
            }
        }
        return true;
    }

    public void G() {
        if (J()) {
            setVisibility(8);
            Iterator<d> it = this.f26139b.iterator();
            while (it.hasNext()) {
                it.next().d(getVisibility());
            }
            removeCallbacks(this.f26159s);
            removeCallbacks(this.f26160t);
            this.W = com.google.android.exoplayer2.i.f23649b;
        }
    }

    public boolean J() {
        return getVisibility() == 0;
    }

    public void K(d dVar) {
        this.f26139b.remove(dVar);
    }

    public void O(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.f26156p1 = new long[0];
            this.f26165x1 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) com.google.android.exoplayer2.util.a.g(zArr);
            com.google.android.exoplayer2.util.a.a(jArr.length == zArr2.length);
            this.f26156p1 = jArr;
            this.f26165x1 = zArr2;
        }
        Y();
    }

    public void Q() {
        if (!J()) {
            setVisibility(0);
            Iterator<d> it = this.f26139b.iterator();
            while (it.hasNext()) {
                it.next().d(getVisibility());
            }
            R();
            L();
        }
        H();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return B(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f26160t);
        } else if (motionEvent.getAction() == 1) {
            H();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public v1 getPlayer() {
        return this.G;
    }

    public int getRepeatToggleModes() {
        return this.Q;
    }

    public boolean getShowShuffleButton() {
        return this.V;
    }

    public int getShowTimeoutMs() {
        return this.O;
    }

    public boolean getShowVrButton() {
        View view = this.f26150k;
        return view != null && view.getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.K = true;
        long j4 = this.W;
        if (j4 != com.google.android.exoplayer2.i.f23649b) {
            long uptimeMillis = j4 - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                G();
            } else {
                postDelayed(this.f26160t, uptimeMillis);
            }
        } else if (J()) {
            H();
        }
        R();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.K = false;
        removeCallbacks(this.f26159s);
        removeCallbacks(this.f26160t);
    }

    public void setControlDispatcher(com.google.android.exoplayer2.j jVar) {
        if (this.H != jVar) {
            this.H = jVar;
            T();
        }
    }

    @Deprecated
    public void setFastForwardIncrementMs(int i4) {
        com.google.android.exoplayer2.j jVar = this.H;
        if (jVar instanceof com.google.android.exoplayer2.k) {
            ((com.google.android.exoplayer2.k) jVar).q(i4);
            T();
        }
    }

    @Deprecated
    public void setPlaybackPreparer(@Nullable u1 u1Var) {
        this.J = u1Var;
    }

    public void setPlayer(@Nullable v1 v1Var) {
        boolean z9 = true;
        com.google.android.exoplayer2.util.a.i(Looper.myLooper() == Looper.getMainLooper());
        if (v1Var != null && v1Var.B0() != Looper.getMainLooper()) {
            z9 = false;
        }
        com.google.android.exoplayer2.util.a.a(z9);
        v1 v1Var2 = this.G;
        if (v1Var2 == v1Var) {
            return;
        }
        if (v1Var2 != null) {
            v1Var2.g0(this.f26138a);
        }
        this.G = v1Var;
        if (v1Var != null) {
            v1Var.c1(this.f26138a);
        }
        R();
    }

    public void setProgressUpdateListener(@Nullable c cVar) {
        this.I = cVar;
    }

    public void setRepeatToggleModes(int i4) {
        this.Q = i4;
        v1 v1Var = this.G;
        if (v1Var != null) {
            int k10 = v1Var.k();
            if (i4 == 0 && k10 != 0) {
                this.H.e(this.G, 0);
            } else if (i4 == 1 && k10 == 2) {
                this.H.e(this.G, 1);
            } else if (i4 == 2 && k10 == 1) {
                this.H.e(this.G, 2);
            }
        }
        W();
    }

    @Deprecated
    public void setRewindIncrementMs(int i4) {
        com.google.android.exoplayer2.j jVar = this.H;
        if (jVar instanceof com.google.android.exoplayer2.k) {
            ((com.google.android.exoplayer2.k) jVar).r(i4);
            T();
        }
    }

    public void setShowFastForwardButton(boolean z9) {
        this.S = z9;
        T();
    }

    public void setShowMultiWindowTimeBar(boolean z9) {
        this.L = z9;
        Y();
    }

    public void setShowNextButton(boolean z9) {
        this.U = z9;
        T();
    }

    public void setShowPreviousButton(boolean z9) {
        this.T = z9;
        T();
    }

    public void setShowRewindButton(boolean z9) {
        this.R = z9;
        T();
    }

    public void setShowShuffleButton(boolean z9) {
        this.V = z9;
        X();
    }

    public void setShowTimeoutMs(int i4) {
        this.O = i4;
        if (J()) {
            H();
        }
    }

    public void setShowVrButton(boolean z9) {
        View view = this.f26150k;
        if (view != null) {
            view.setVisibility(z9 ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i4) {
        this.P = com.google.android.exoplayer2.util.z0.t(i4, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f26150k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            S(getShowVrButton(), onClickListener != null, this.f26150k);
        }
    }

    public void z(d dVar) {
        com.google.android.exoplayer2.util.a.g(dVar);
        this.f26139b.add(dVar);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, attributeSet);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i4, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i4);
        int i10 = q.i.f26701c;
        int i11 = 5000;
        this.O = 5000;
        this.Q = 0;
        this.P = 200;
        this.W = com.google.android.exoplayer2.i.f23649b;
        this.R = true;
        this.S = true;
        this.T = true;
        this.U = true;
        this.V = false;
        int i12 = com.google.android.exoplayer2.k.f23775d;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, q.m.f26804g0, 0, 0);
            try {
                i11 = obtainStyledAttributes.getInt(q.m.f26848r0, 5000);
                i12 = obtainStyledAttributes.getInt(q.m.f26832n0, com.google.android.exoplayer2.k.f23775d);
                this.O = obtainStyledAttributes.getInt(q.m.C0, this.O);
                i10 = obtainStyledAttributes.getResourceId(q.m.f26828m0, i10);
                this.Q = F(obtainStyledAttributes, this.Q);
                this.R = obtainStyledAttributes.getBoolean(q.m.A0, this.R);
                this.S = obtainStyledAttributes.getBoolean(q.m.f26872x0, this.S);
                this.T = obtainStyledAttributes.getBoolean(q.m.f26880z0, this.T);
                this.U = obtainStyledAttributes.getBoolean(q.m.f26876y0, this.U);
                this.V = obtainStyledAttributes.getBoolean(q.m.B0, this.V);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(q.m.D0, this.P));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f26139b = new CopyOnWriteArrayList<>();
        this.f26157q = new s2.b();
        this.f26158r = new s2.d();
        StringBuilder sb = new StringBuilder();
        this.f26154o = sb;
        this.f26155p = new Formatter(sb, Locale.getDefault());
        this.f26140b1 = new long[0];
        this.f26146g1 = new boolean[0];
        this.f26156p1 = new long[0];
        this.f26165x1 = new boolean[0];
        b bVar = new b();
        this.f26138a = bVar;
        this.H = new com.google.android.exoplayer2.k(i12, i11);
        this.f26159s = new Runnable() { // from class: com.google.android.exoplayer2.ui.l
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.V();
            }
        };
        this.f26160t = new Runnable() { // from class: com.google.android.exoplayer2.ui.k
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.G();
            }
        };
        LayoutInflater.from(context).inflate(i10, this);
        setDescendantFocusability(262144);
        int i13 = q.g.D0;
        u0 u0Var = (u0) findViewById(i13);
        View findViewById = findViewById(q.g.E0);
        if (u0Var != null) {
            this.f26153n = u0Var;
        } else if (findViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(i13);
            defaultTimeBar.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f26153n = defaultTimeBar;
        } else {
            this.f26153n = null;
        }
        this.f26151l = (TextView) findViewById(q.g.f26642i0);
        this.f26152m = (TextView) findViewById(q.g.B0);
        u0 u0Var2 = this.f26153n;
        if (u0Var2 != null) {
            u0Var2.b(bVar);
        }
        View findViewById2 = findViewById(q.g.f26690y0);
        this.f26143e = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(bVar);
        }
        View findViewById3 = findViewById(q.g.f26687x0);
        this.f26144f = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(bVar);
        }
        View findViewById4 = findViewById(q.g.C0);
        this.f26141c = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(bVar);
        }
        View findViewById5 = findViewById(q.g.f26675t0);
        this.f26142d = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(bVar);
        }
        View findViewById6 = findViewById(q.g.G0);
        this.f26147h = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(bVar);
        }
        View findViewById7 = findViewById(q.g.f26654m0);
        this.f26145g = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(bVar);
        }
        ImageView imageView = (ImageView) findViewById(q.g.F0);
        this.f26148i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(bVar);
        }
        ImageView imageView2 = (ImageView) findViewById(q.g.K0);
        this.f26149j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(bVar);
        }
        View findViewById8 = findViewById(q.g.S0);
        this.f26150k = findViewById8;
        setShowVrButton(false);
        S(false, false, findViewById8);
        Resources resources = context.getResources();
        this.C = resources.getInteger(q.h.f26697c) / 100.0f;
        this.D = resources.getInteger(q.h.f26696b) / 100.0f;
        this.f26161u = resources.getDrawable(q.e.f26580i);
        this.f26162v = resources.getDrawable(q.e.f26582j);
        this.f26163w = resources.getDrawable(q.e.f26578h);
        this.A = resources.getDrawable(q.e.f26588m);
        this.B = resources.getDrawable(q.e.f26586l);
        this.f26164x = resources.getString(q.k.f26743q);
        this.f26166y = resources.getString(q.k.f26744r);
        this.f26168z = resources.getString(q.k.f26742p);
        this.E = resources.getString(q.k.f26750x);
        this.F = resources.getString(q.k.f26749w);
    }
}
