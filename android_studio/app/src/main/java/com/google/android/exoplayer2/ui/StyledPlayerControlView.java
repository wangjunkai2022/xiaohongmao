package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.i;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import com.google.android.exoplayer2.ui.q;
import com.google.android.exoplayer2.ui.u0;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.w1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class StyledPlayerControlView extends FrameLayout {
    public static final int V2 = 5000;
    public static final int W2 = 0;
    public static final int X2 = 200;
    public static final int Y2 = 100;
    private static final int Z2 = 1000;

    /* renamed from: a3  reason: collision with root package name */
    private static final int f26199a3 = 0;

    /* renamed from: b3  reason: collision with root package name */
    private static final int f26200b3 = 1;
    private final Drawable A;
    private final Drawable B;
    private final float C;
    private final float D;
    private final String E;
    private Resources E2;
    private final String F;
    private RecyclerView F2;
    private final Drawable G;
    private h G2;
    private final Drawable H;
    private e H2;
    private final String I;
    private PopupWindow I2;
    private final String J;
    private boolean J2;
    private final Drawable K;
    private int K2;
    private final Drawable L;
    @Nullable
    private DefaultTrackSelector L2;
    private final String M;
    private l M2;
    private final String N;
    private l N2;
    @Nullable
    private v1 O;
    private v0 O2;
    private com.google.android.exoplayer2.j P;
    @Nullable
    private ImageView P2;
    @Nullable
    private f Q;
    @Nullable
    private ImageView Q2;
    @Nullable
    private u1 R;
    @Nullable
    private ImageView R2;
    @Nullable
    private d S;
    @Nullable
    private View S2;
    private boolean T;
    private boolean[] T1;
    @Nullable
    private View T2;
    private boolean U;
    @Nullable
    private View U2;
    private boolean V;
    private long[] V1;
    private boolean W;

    /* renamed from: a  reason: collision with root package name */
    private final c f26201a;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<m> f26202b;

    /* renamed from: b1  reason: collision with root package name */
    private boolean f26203b1;

    /* renamed from: b2  reason: collision with root package name */
    private boolean[] f26204b2;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final View f26205c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final View f26206d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final View f26207e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final View f26208f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final View f26209g;

    /* renamed from: g1  reason: collision with root package name */
    private int f26210g1;

    /* renamed from: g2  reason: collision with root package name */
    private long f26211g2;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final TextView f26212h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final TextView f26213i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final ImageView f26214j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final ImageView f26215k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final View f26216l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final TextView f26217m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final TextView f26218n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final u0 f26219o;

    /* renamed from: p  reason: collision with root package name */
    private final StringBuilder f26220p;

    /* renamed from: p1  reason: collision with root package name */
    private int f26221p1;

    /* renamed from: p2  reason: collision with root package name */
    private long f26222p2;

    /* renamed from: q  reason: collision with root package name */
    private final Formatter f26223q;

    /* renamed from: r  reason: collision with root package name */
    private final s2.b f26224r;

    /* renamed from: s  reason: collision with root package name */
    private final s2.d f26225s;

    /* renamed from: t  reason: collision with root package name */
    private final Runnable f26226t;

    /* renamed from: u  reason: collision with root package name */
    private final Drawable f26227u;

    /* renamed from: v  reason: collision with root package name */
    private final Drawable f26228v;

    /* renamed from: w  reason: collision with root package name */
    private final Drawable f26229w;

    /* renamed from: x  reason: collision with root package name */
    private final String f26230x;

    /* renamed from: x1  reason: collision with root package name */
    private int f26231x1;

    /* renamed from: x2  reason: collision with root package name */
    private long f26232x2;

    /* renamed from: y  reason: collision with root package name */
    private final String f26233y;

    /* renamed from: y1  reason: collision with root package name */
    private long[] f26234y1;

    /* renamed from: y2  reason: collision with root package name */
    private p0 f26235y2;

    /* renamed from: z  reason: collision with root package name */
    private final String f26236z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class b extends l {
        private b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(View view) {
            if (StyledPlayerControlView.this.L2 != null) {
                DefaultTrackSelector.d buildUpon = StyledPlayerControlView.this.L2.v().buildUpon();
                for (int i4 = 0; i4 < this.f26259a.size(); i4++) {
                    buildUpon = buildUpon.o(this.f26259a.get(i4).intValue());
                }
                ((DefaultTrackSelector) com.google.android.exoplayer2.util.a.g(StyledPlayerControlView.this.L2)).N(buildUpon);
            }
            StyledPlayerControlView.this.G2.f(1, StyledPlayerControlView.this.getResources().getString(q.k.P));
            StyledPlayerControlView.this.I2.dismiss();
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void f(List<Integer> list, List<k> list2, i.a aVar) {
            boolean z9;
            int i4 = 0;
            int i10 = 0;
            while (true) {
                if (i10 >= list.size()) {
                    z9 = false;
                    break;
                }
                int intValue = list.get(i10).intValue();
                TrackGroupArray g4 = aVar.g(intValue);
                if (StyledPlayerControlView.this.L2 != null && StyledPlayerControlView.this.L2.v().hasSelectionOverride(intValue, g4)) {
                    z9 = true;
                    break;
                }
                i10++;
            }
            if (!list2.isEmpty()) {
                if (z9) {
                    while (true) {
                        if (i4 >= list2.size()) {
                            break;
                        }
                        k kVar = list2.get(i4);
                        if (kVar.f26258e) {
                            StyledPlayerControlView.this.G2.f(1, kVar.f26257d);
                            break;
                        }
                        i4++;
                    }
                } else {
                    StyledPlayerControlView.this.G2.f(1, StyledPlayerControlView.this.getResources().getString(q.k.P));
                }
            } else {
                StyledPlayerControlView.this.G2.f(1, StyledPlayerControlView.this.getResources().getString(q.k.Q));
            }
            this.f26259a = list;
            this.f26260b = list2;
            this.f26261c = aVar;
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void i(i iVar) {
            boolean z9;
            iVar.f26251a.setText(q.k.P);
            DefaultTrackSelector.Parameters v9 = ((DefaultTrackSelector) com.google.android.exoplayer2.util.a.g(StyledPlayerControlView.this.L2)).v();
            int i4 = 0;
            while (true) {
                if (i4 >= this.f26259a.size()) {
                    z9 = false;
                    break;
                }
                int intValue = this.f26259a.get(i4).intValue();
                if (v9.hasSelectionOverride(intValue, ((i.a) com.google.android.exoplayer2.util.a.g(this.f26261c)).g(intValue))) {
                    z9 = true;
                    break;
                }
                i4++;
            }
            iVar.f26252b.setVisibility(z9 ? 4 : 0);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.b.this.m(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void k(String str) {
            StyledPlayerControlView.this.G2.f(1, str);
        }
    }

    /* loaded from: classes2.dex */
    private final class c implements v1.f, u0.a, View.OnClickListener, PopupWindow.OnDismissListener {
        private c() {
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
            if (StyledPlayerControlView.this.f26218n != null) {
                StyledPlayerControlView.this.f26218n.setText(com.google.android.exoplayer2.util.z0.n0(StyledPlayerControlView.this.f26220p, StyledPlayerControlView.this.f26223q, j4));
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
            v1 v1Var = StyledPlayerControlView.this.O;
            if (v1Var == null) {
                return;
            }
            StyledPlayerControlView.this.f26235y2.X();
            if (StyledPlayerControlView.this.f26206d == view) {
                StyledPlayerControlView.this.P.k(v1Var);
            } else if (StyledPlayerControlView.this.f26205c == view) {
                StyledPlayerControlView.this.P.j(v1Var);
            } else if (StyledPlayerControlView.this.f26208f == view) {
                if (v1Var.c() != 4) {
                    StyledPlayerControlView.this.P.g(v1Var);
                }
            } else if (StyledPlayerControlView.this.f26209g == view) {
                StyledPlayerControlView.this.P.b(v1Var);
            } else if (StyledPlayerControlView.this.f26207e == view) {
                StyledPlayerControlView.this.Z(v1Var);
            } else if (StyledPlayerControlView.this.f26214j == view) {
                StyledPlayerControlView.this.P.e(v1Var, com.google.android.exoplayer2.util.j0.a(v1Var.k(), StyledPlayerControlView.this.f26231x1));
            } else if (StyledPlayerControlView.this.f26215k == view) {
                StyledPlayerControlView.this.P.d(v1Var, !v1Var.H1());
            } else if (StyledPlayerControlView.this.S2 == view) {
                StyledPlayerControlView.this.f26235y2.W();
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.a0(styledPlayerControlView.G2);
            } else if (StyledPlayerControlView.this.T2 == view) {
                StyledPlayerControlView.this.f26235y2.W();
                StyledPlayerControlView styledPlayerControlView2 = StyledPlayerControlView.this;
                styledPlayerControlView2.a0(styledPlayerControlView2.H2);
            } else if (StyledPlayerControlView.this.U2 == view) {
                StyledPlayerControlView.this.f26235y2.W();
                StyledPlayerControlView styledPlayerControlView3 = StyledPlayerControlView.this;
                styledPlayerControlView3.a0(styledPlayerControlView3.N2);
            } else if (StyledPlayerControlView.this.P2 == view) {
                StyledPlayerControlView.this.f26235y2.W();
                StyledPlayerControlView styledPlayerControlView4 = StyledPlayerControlView.this;
                styledPlayerControlView4.a0(styledPlayerControlView4.M2);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (StyledPlayerControlView.this.J2) {
                StyledPlayerControlView.this.f26235y2.X();
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
            StyledPlayerControlView.this.f26203b1 = false;
            if (!z9 && StyledPlayerControlView.this.O != null) {
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.s0(styledPlayerControlView.O, j4);
            }
            StyledPlayerControlView.this.f26235y2.X();
        }

        @Override // com.google.android.exoplayer2.ui.u0.a
        public void y(u0 u0Var, long j4) {
            StyledPlayerControlView.this.f26203b1 = true;
            if (StyledPlayerControlView.this.f26218n != null) {
                StyledPlayerControlView.this.f26218n.setText(com.google.android.exoplayer2.util.z0.n0(StyledPlayerControlView.this.f26220p, StyledPlayerControlView.this.f26223q, j4));
            }
            StyledPlayerControlView.this.f26235y2.W();
        }

        @Override // com.google.android.exoplayer2.v1.f
        public void z(v1 v1Var, v1.g gVar) {
            if (gVar.b(5, 6)) {
                StyledPlayerControlView.this.C0();
            }
            if (gVar.b(5, 6, 8)) {
                StyledPlayerControlView.this.E0();
            }
            if (gVar.a(9)) {
                StyledPlayerControlView.this.F0();
            }
            if (gVar.a(10)) {
                StyledPlayerControlView.this.I0();
            }
            if (gVar.b(9, 10, 12, 0)) {
                StyledPlayerControlView.this.B0();
            }
            if (gVar.b(12, 0)) {
                StyledPlayerControlView.this.J0();
            }
            if (gVar.a(13)) {
                StyledPlayerControlView.this.D0();
            }
            if (gVar.a(2)) {
                StyledPlayerControlView.this.K0();
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(boolean z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class e extends RecyclerView.Adapter<i> {

        /* renamed from: a  reason: collision with root package name */
        private final String[] f26239a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f26240b;

        /* renamed from: c  reason: collision with root package name */
        private int f26241c;

        public e(String[] strArr, int[] iArr) {
            this.f26239a = strArr;
            this.f26240b = iArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(int i4, View view) {
            if (i4 != this.f26241c) {
                StyledPlayerControlView.this.setPlaybackSpeed(this.f26240b[i4] / 100.0f);
            }
            StyledPlayerControlView.this.I2.dismiss();
        }

        public String e() {
            return this.f26239a[this.f26241c];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: g */
        public void onBindViewHolder(i iVar, final int i4) {
            String[] strArr = this.f26239a;
            if (i4 < strArr.length) {
                iVar.f26251a.setText(strArr[i4]);
            }
            iVar.f26252b.setVisibility(i4 == this.f26241c ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.e.this.f(i4, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f26239a.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: h */
        public i onCreateViewHolder(ViewGroup viewGroup, int i4) {
            return new i(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(q.i.f26709k, viewGroup, false));
        }

        public void i(float f10) {
            int round = Math.round(f10 * 100.0f);
            int i4 = 0;
            int i10 = 0;
            int i11 = Integer.MAX_VALUE;
            while (true) {
                int[] iArr = this.f26240b;
                if (i4 < iArr.length) {
                    int abs = Math.abs(round - iArr[i4]);
                    if (abs < i11) {
                        i10 = i4;
                        i11 = abs;
                    }
                    i4++;
                } else {
                    this.f26241c = i10;
                    return;
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface f {
        void a(long j4, long j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class g extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private final TextView f26243a;

        /* renamed from: b  reason: collision with root package name */
        private final TextView f26244b;

        /* renamed from: c  reason: collision with root package name */
        private final ImageView f26245c;

        public g(View view) {
            super(view);
            if (com.google.android.exoplayer2.util.z0.f27743a < 26) {
                view.setFocusable(true);
            }
            this.f26243a = (TextView) view.findViewById(q.g.f26666q0);
            this.f26244b = (TextView) view.findViewById(q.g.M0);
            this.f26245c = (ImageView) view.findViewById(q.g.f26663p0);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.g.this.f(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(View view) {
            StyledPlayerControlView.this.o0(getAdapterPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class h extends RecyclerView.Adapter<g> {

        /* renamed from: a  reason: collision with root package name */
        private final String[] f26247a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f26248b;

        /* renamed from: c  reason: collision with root package name */
        private final Drawable[] f26249c;

        public h(String[] strArr, Drawable[] drawableArr) {
            this.f26247a = strArr;
            this.f26248b = new String[strArr.length];
            this.f26249c = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(g gVar, int i4) {
            gVar.f26243a.setText(this.f26247a[i4]);
            if (this.f26248b[i4] == null) {
                gVar.f26244b.setVisibility(8);
            } else {
                gVar.f26244b.setText(this.f26248b[i4]);
            }
            if (this.f26249c[i4] == null) {
                gVar.f26245c.setVisibility(8);
            } else {
                gVar.f26245c.setImageDrawable(this.f26249c[i4]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: e */
        public g onCreateViewHolder(ViewGroup viewGroup, int i4) {
            return new g(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(q.i.f26708j, viewGroup, false));
        }

        public void f(int i4, String str) {
            this.f26248b[i4] = str;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f26247a.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i4) {
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class i extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public final TextView f26251a;

        /* renamed from: b  reason: collision with root package name */
        public final View f26252b;

        public i(View view) {
            super(view);
            if (com.google.android.exoplayer2.util.z0.f27743a < 26) {
                view.setFocusable(true);
            }
            this.f26251a = (TextView) view.findViewById(q.g.P0);
            this.f26252b = view.findViewById(q.g.f26627d0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class j extends l {
        private j() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(View view) {
            if (StyledPlayerControlView.this.L2 != null) {
                DefaultTrackSelector.d buildUpon = StyledPlayerControlView.this.L2.v().buildUpon();
                for (int i4 = 0; i4 < this.f26259a.size(); i4++) {
                    int intValue = this.f26259a.get(i4).intValue();
                    buildUpon = buildUpon.o(intValue).Z(intValue, true);
                }
                ((DefaultTrackSelector) com.google.android.exoplayer2.util.a.g(StyledPlayerControlView.this.L2)).N(buildUpon);
                StyledPlayerControlView.this.I2.dismiss();
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void f(List<Integer> list, List<k> list2, i.a aVar) {
            boolean z9 = false;
            int i4 = 0;
            while (true) {
                if (i4 >= list2.size()) {
                    break;
                } else if (list2.get(i4).f26258e) {
                    z9 = true;
                    break;
                } else {
                    i4++;
                }
            }
            if (StyledPlayerControlView.this.P2 != null) {
                ImageView imageView = StyledPlayerControlView.this.P2;
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                imageView.setImageDrawable(z9 ? styledPlayerControlView.G : styledPlayerControlView.H);
                StyledPlayerControlView.this.P2.setContentDescription(z9 ? StyledPlayerControlView.this.I : StyledPlayerControlView.this.J);
            }
            this.f26259a = list;
            this.f26260b = list2;
            this.f26261c = aVar;
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l, androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: h */
        public void onBindViewHolder(i iVar, int i4) {
            super.onBindViewHolder(iVar, i4);
            if (i4 > 0) {
                iVar.f26252b.setVisibility(this.f26260b.get(i4 + (-1)).f26258e ? 0 : 4);
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void i(i iVar) {
            boolean z9;
            iVar.f26251a.setText(q.k.Q);
            int i4 = 0;
            while (true) {
                if (i4 >= this.f26260b.size()) {
                    z9 = true;
                    break;
                } else if (this.f26260b.get(i4).f26258e) {
                    z9 = false;
                    break;
                } else {
                    i4++;
                }
            }
            iVar.f26252b.setVisibility(z9 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.j.this.m(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void k(String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        public final int f26254a;

        /* renamed from: b  reason: collision with root package name */
        public final int f26255b;

        /* renamed from: c  reason: collision with root package name */
        public final int f26256c;

        /* renamed from: d  reason: collision with root package name */
        public final String f26257d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f26258e;

        public k(int i4, int i10, int i11, String str, boolean z9) {
            this.f26254a = i4;
            this.f26255b = i10;
            this.f26256c = i11;
            this.f26257d = str;
            this.f26258e = z9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public abstract class l extends RecyclerView.Adapter<i> {

        /* renamed from: a  reason: collision with root package name */
        protected List<Integer> f26259a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        protected List<k> f26260b = new ArrayList();
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        protected i.a f26261c = null;

        public l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(k kVar, View view) {
            if (this.f26261c == null || StyledPlayerControlView.this.L2 == null) {
                return;
            }
            DefaultTrackSelector.d buildUpon = StyledPlayerControlView.this.L2.v().buildUpon();
            for (int i4 = 0; i4 < this.f26259a.size(); i4++) {
                int intValue = this.f26259a.get(i4).intValue();
                if (intValue == kVar.f26254a) {
                    buildUpon = buildUpon.b0(intValue, ((i.a) com.google.android.exoplayer2.util.a.g(this.f26261c)).g(intValue), new DefaultTrackSelector.SelectionOverride(kVar.f26255b, kVar.f26256c)).Z(intValue, false);
                } else {
                    buildUpon = buildUpon.o(intValue).Z(intValue, true);
                }
            }
            ((DefaultTrackSelector) com.google.android.exoplayer2.util.a.g(StyledPlayerControlView.this.L2)).N(buildUpon);
            k(kVar.f26257d);
            StyledPlayerControlView.this.I2.dismiss();
        }

        public void e() {
            this.f26260b = Collections.emptyList();
            this.f26261c = null;
        }

        public abstract void f(List<Integer> list, List<k> list2, i.a aVar);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.f26260b.isEmpty()) {
                return 0;
            }
            return this.f26260b.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: h */
        public void onBindViewHolder(i iVar, int i4) {
            if (StyledPlayerControlView.this.L2 == null || this.f26261c == null) {
                return;
            }
            if (i4 == 0) {
                i(iVar);
                return;
            }
            boolean z9 = true;
            final k kVar = this.f26260b.get(i4 - 1);
            z9 = (((DefaultTrackSelector) com.google.android.exoplayer2.util.a.g(StyledPlayerControlView.this.L2)).v().hasSelectionOverride(kVar.f26254a, this.f26261c.g(kVar.f26254a)) && kVar.f26258e) ? false : false;
            iVar.f26251a.setText(kVar.f26257d);
            iVar.f26252b.setVisibility(z9 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.l.this.g(kVar, view);
                }
            });
        }

        public abstract void i(i iVar);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: j */
        public i onCreateViewHolder(ViewGroup viewGroup, int i4) {
            return new i(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(q.i.f26709k, viewGroup, false));
        }

        public abstract void k(String str);
    }

    /* loaded from: classes2.dex */
    public interface m {
        void d(int i4);
    }

    static {
        com.google.android.exoplayer2.u0.a("goog.exo.ui");
    }

    public StyledPlayerControlView(Context context) {
        this(context, null);
    }

    private static void A0(@Nullable View view, boolean z9) {
        if (view == null) {
            return;
        }
        if (z9) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void B0() {
        /*
            r8 = this;
            boolean r0 = r8.k0()
            if (r0 == 0) goto La1
            boolean r0 = r8.U
            if (r0 != 0) goto Lc
            goto La1
        Lc:
            com.google.android.exoplayer2.v1 r0 = r8.O
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
            com.google.android.exoplayer2.s2$d r5 = r8.f26225s
            r2.r(r4, r5)
            r2 = 1
            if (r3 != 0) goto L44
            com.google.android.exoplayer2.s2$d r4 = r8.f26225s
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
            com.google.android.exoplayer2.j r5 = r8.P
            boolean r5 = r5.h()
            if (r5 == 0) goto L51
            r5 = 1
            goto L52
        L51:
            r5 = 0
        L52:
            if (r3 == 0) goto L5e
            com.google.android.exoplayer2.j r6 = r8.P
            boolean r6 = r6.l()
            if (r6 == 0) goto L5e
            r6 = 1
            goto L5f
        L5e:
            r6 = 0
        L5f:
            com.google.android.exoplayer2.s2$d r7 = r8.f26225s
            boolean r7 = r7.j()
            if (r7 == 0) goto L6d
            com.google.android.exoplayer2.s2$d r7 = r8.f26225s
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
            r1 = r5
            goto L7c
        L78:
            r0 = 0
            r3 = 0
            r4 = 0
            r6 = 0
        L7c:
            if (r1 == 0) goto L81
            r8.G0()
        L81:
            if (r6 == 0) goto L86
            r8.y0()
        L86:
            android.view.View r2 = r8.f26205c
            r8.x0(r4, r2)
            android.view.View r2 = r8.f26209g
            r8.x0(r1, r2)
            android.view.View r1 = r8.f26208f
            r8.x0(r6, r1)
            android.view.View r1 = r8.f26206d
            r8.x0(r0, r1)
            com.google.android.exoplayer2.ui.u0 r0 = r8.f26219o
            if (r0 == 0) goto La1
            r0.setEnabled(r3)
        La1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.StyledPlayerControlView.B0():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0() {
        if (k0() && this.U && this.f26207e != null) {
            if (u0()) {
                ((ImageView) this.f26207e).setImageDrawable(this.E2.getDrawable(q.e.f26591n0));
                this.f26207e.setContentDescription(this.E2.getString(q.k.f26737k));
                return;
            }
            ((ImageView) this.f26207e).setImageDrawable(this.E2.getDrawable(q.e.f26593o0));
            this.f26207e.setContentDescription(this.E2.getString(q.k.f26738l));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D0() {
        v1 v1Var = this.O;
        if (v1Var == null) {
            return;
        }
        this.H2.i(v1Var.e().f25300a);
        this.G2.f(0, this.H2.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        long j4;
        float f10;
        if (k0() && this.U) {
            v1 v1Var = this.O;
            long j10 = 0;
            if (v1Var != null) {
                j10 = this.f26211g2 + v1Var.o1();
                j4 = this.f26211g2 + v1Var.I1();
            } else {
                j4 = 0;
            }
            TextView textView = this.f26218n;
            if (textView != null && !this.f26203b1) {
                textView.setText(com.google.android.exoplayer2.util.z0.n0(this.f26220p, this.f26223q, j10));
            }
            u0 u0Var = this.f26219o;
            if (u0Var != null) {
                u0Var.setPosition(j10);
                this.f26219o.setBufferedPosition(j4);
            }
            f fVar = this.Q;
            if (fVar != null) {
                fVar.a(j10, j4);
            }
            removeCallbacks(this.f26226t);
            int c10 = v1Var == null ? 1 : v1Var.c();
            if (v1Var == null || !v1Var.isPlaying()) {
                if (c10 == 4 || c10 == 1) {
                    return;
                }
                postDelayed(this.f26226t, 1000L);
                return;
            }
            u0 u0Var2 = this.f26219o;
            long min = Math.min(u0Var2 != null ? u0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (j10 % 1000));
            postDelayed(this.f26226t, com.google.android.exoplayer2.util.z0.u(v1Var.e().f25300a > 0.0f ? ((float) min) / f10 : 1000L, this.f26221p1, 1000L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0() {
        ImageView imageView;
        if (k0() && this.U && (imageView = this.f26214j) != null) {
            if (this.f26231x1 == 0) {
                x0(false, imageView);
                return;
            }
            v1 v1Var = this.O;
            if (v1Var == null) {
                x0(false, imageView);
                this.f26214j.setImageDrawable(this.f26227u);
                this.f26214j.setContentDescription(this.f26230x);
                return;
            }
            x0(true, imageView);
            int k10 = v1Var.k();
            if (k10 == 0) {
                this.f26214j.setImageDrawable(this.f26227u);
                this.f26214j.setContentDescription(this.f26230x);
            } else if (k10 == 1) {
                this.f26214j.setImageDrawable(this.f26228v);
                this.f26214j.setContentDescription(this.f26233y);
            } else if (k10 != 2) {
            } else {
                this.f26214j.setImageDrawable(this.f26229w);
                this.f26214j.setContentDescription(this.f26236z);
            }
        }
    }

    private void G0() {
        com.google.android.exoplayer2.j jVar = this.P;
        if (jVar instanceof com.google.android.exoplayer2.k) {
            this.f26222p2 = ((com.google.android.exoplayer2.k) jVar).o();
        }
        int i4 = (int) (this.f26222p2 / 1000);
        TextView textView = this.f26213i;
        if (textView != null) {
            textView.setText(String.valueOf(i4));
        }
        View view = this.f26209g;
        if (view != null) {
            view.setContentDescription(this.E2.getQuantityString(q.j.f26726b, i4, Integer.valueOf(i4)));
        }
    }

    private void H0() {
        this.F2.measure(0, 0);
        this.I2.setWidth(Math.min(this.F2.getMeasuredWidth(), getWidth() - (this.K2 * 2)));
        this.I2.setHeight(Math.min(getHeight() - (this.K2 * 2), this.F2.getMeasuredHeight()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I0() {
        ImageView imageView;
        String str;
        if (k0() && this.U && (imageView = this.f26215k) != null) {
            v1 v1Var = this.O;
            if (!this.f26235y2.A(imageView)) {
                x0(false, this.f26215k);
            } else if (v1Var == null) {
                x0(false, this.f26215k);
                this.f26215k.setImageDrawable(this.B);
                this.f26215k.setContentDescription(this.F);
            } else {
                x0(true, this.f26215k);
                this.f26215k.setImageDrawable(v1Var.H1() ? this.A : this.B);
                ImageView imageView2 = this.f26215k;
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
    public void J0() {
        int i4;
        s2.d dVar;
        v1 v1Var = this.O;
        if (v1Var == null) {
            return;
        }
        boolean z9 = true;
        this.W = this.V && V(v1Var.A0(), this.f26225s);
        long j4 = 0;
        this.f26211g2 = 0L;
        s2 A0 = v1Var.A0();
        if (A0.v()) {
            i4 = 0;
        } else {
            int j02 = v1Var.j0();
            boolean z10 = this.W;
            int i10 = z10 ? 0 : j02;
            int u9 = z10 ? A0.u() - 1 : j02;
            long j10 = 0;
            i4 = 0;
            while (true) {
                if (i10 > u9) {
                    break;
                }
                if (i10 == j02) {
                    this.f26211g2 = com.google.android.exoplayer2.i.d(j10);
                }
                A0.r(i10, this.f26225s);
                s2.d dVar2 = this.f26225s;
                if (dVar2.f24586n == com.google.android.exoplayer2.i.f23649b) {
                    com.google.android.exoplayer2.util.a.i(this.W ^ z9);
                    break;
                }
                int i11 = dVar2.f24587o;
                while (true) {
                    dVar = this.f26225s;
                    if (i11 <= dVar.f24588p) {
                        A0.j(i11, this.f26224r);
                        int f10 = this.f26224r.f();
                        for (int i12 = 0; i12 < f10; i12++) {
                            long i13 = this.f26224r.i(i12);
                            if (i13 == Long.MIN_VALUE) {
                                long j11 = this.f26224r.f24556d;
                                if (j11 != com.google.android.exoplayer2.i.f23649b) {
                                    i13 = j11;
                                }
                            }
                            long q9 = i13 + this.f26224r.q();
                            if (q9 >= 0) {
                                long[] jArr = this.f26234y1;
                                if (i4 == jArr.length) {
                                    int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                    this.f26234y1 = Arrays.copyOf(jArr, length);
                                    this.T1 = Arrays.copyOf(this.T1, length);
                                }
                                this.f26234y1[i4] = com.google.android.exoplayer2.i.d(j10 + q9);
                                this.T1[i4] = this.f26224r.r(i12);
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
        TextView textView = this.f26217m;
        if (textView != null) {
            textView.setText(com.google.android.exoplayer2.util.z0.n0(this.f26220p, this.f26223q, d4));
        }
        u0 u0Var = this.f26219o;
        if (u0Var != null) {
            u0Var.setDuration(d4);
            int length2 = this.V1.length;
            int i14 = i4 + length2;
            long[] jArr2 = this.f26234y1;
            if (i14 > jArr2.length) {
                this.f26234y1 = Arrays.copyOf(jArr2, i14);
                this.T1 = Arrays.copyOf(this.T1, i14);
            }
            System.arraycopy(this.V1, 0, this.f26234y1, i4, length2);
            System.arraycopy(this.f26204b2, 0, this.T1, i4, length2);
            this.f26219o.c(this.f26234y1, this.T1, i14);
        }
        E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0() {
        f0();
        x0(this.M2.getItemCount() > 0, this.P2);
    }

    private static boolean V(s2 s2Var, s2.d dVar) {
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

    private void X(v1 v1Var) {
        this.P.m(v1Var, false);
    }

    private void Y(v1 v1Var) {
        int c10 = v1Var.c();
        if (c10 == 1) {
            u1 u1Var = this.R;
            if (u1Var != null) {
                u1Var.a();
            } else {
                this.P.i(v1Var);
            }
        } else if (c10 == 4) {
            r0(v1Var, v1Var.j0(), com.google.android.exoplayer2.i.f23649b);
        }
        this.P.m(v1Var, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(v1 v1Var) {
        int c10 = v1Var.c();
        if (c10 != 1 && c10 != 4 && v1Var.Q0()) {
            X(v1Var);
        } else {
            Y(v1Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(RecyclerView.Adapter<?> adapter) {
        this.F2.setAdapter(adapter);
        H0();
        this.J2 = false;
        this.I2.dismiss();
        this.J2 = true;
        this.I2.showAsDropDown(this, (getWidth() - this.I2.getWidth()) - this.K2, (-this.I2.getHeight()) - this.K2);
    }

    private void b0(i.a aVar, int i4, List<k> list) {
        TrackGroupArray g4 = aVar.g(i4);
        com.google.android.exoplayer2.trackselection.l a10 = ((v1) com.google.android.exoplayer2.util.a.g(this.O)).C0().a(i4);
        for (int i10 = 0; i10 < g4.length; i10++) {
            TrackGroup trackGroup = g4.get(i10);
            for (int i11 = 0; i11 < trackGroup.length; i11++) {
                Format format = trackGroup.getFormat(i11);
                if (aVar.h(i4, i10, i11) == 4) {
                    list.add(new k(i4, i10, i11, this.O2.a(format), (a10 == null || a10.p(format) == -1) ? false : true));
                }
            }
        }
    }

    private static int c0(TypedArray typedArray, int i4) {
        return typedArray.getInt(q.m.L1, i4);
    }

    private void f0() {
        DefaultTrackSelector defaultTrackSelector;
        i.a g4;
        this.M2.e();
        this.N2.e();
        if (this.O == null || (defaultTrackSelector = this.L2) == null || (g4 = defaultTrackSelector.g()) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (int i4 = 0; i4 < g4.c(); i4++) {
            if (g4.f(i4) == 3 && this.f26235y2.A(this.P2)) {
                b0(g4, i4, arrayList);
                arrayList3.add(Integer.valueOf(i4));
            } else if (g4.f(i4) == 1) {
                b0(g4, i4, arrayList2);
                arrayList4.add(Integer.valueOf(i4));
            }
        }
        this.M2.f(arrayList3, arrayList, g4);
        this.N2.f(arrayList4, arrayList2, g4);
    }

    private static void g0(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    @SuppressLint({"InlinedApi"})
    private static boolean j0(int i4) {
        return i4 == 90 || i4 == 89 || i4 == 85 || i4 == 79 || i4 == 126 || i4 == 127 || i4 == 87 || i4 == 88;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0(View view) {
        if (this.S == null) {
            return;
        }
        boolean z9 = !this.T;
        this.T = z9;
        z0(this.Q2, z9);
        z0(this.R2, this.T);
        d dVar = this.S;
        if (dVar != null) {
            dVar.a(this.T);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0(View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        int i17 = i12 - i10;
        int i18 = i16 - i14;
        if (!(i11 - i4 == i15 - i13 && i17 == i18) && this.I2.isShowing()) {
            H0();
            this.I2.update(view, (getWidth() - this.I2.getWidth()) - this.K2, (-this.I2.getHeight()) - this.K2, -1, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(int i4) {
        if (i4 == 0) {
            a0(this.H2);
        } else if (i4 == 1) {
            a0(this.N2);
        } else {
            this.I2.dismiss();
        }
    }

    private boolean r0(v1 v1Var, int i4, long j4) {
        return this.P.c(v1Var, i4, j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0(v1 v1Var, long j4) {
        int j02;
        s2 A0 = v1Var.A0();
        if (this.W && !A0.v()) {
            int u9 = A0.u();
            j02 = 0;
            while (true) {
                long f10 = A0.r(j02, this.f26225s).f();
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
        r0(v1Var, j02, j4);
        E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f10) {
        v1 v1Var = this.O;
        if (v1Var == null) {
            return;
        }
        this.P.a(v1Var, v1Var.e().e(f10));
    }

    private boolean u0() {
        v1 v1Var = this.O;
        return (v1Var == null || v1Var.c() == 4 || this.O.c() == 1 || !this.O.Q0()) ? false : true;
    }

    private void x0(boolean z9, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z9);
        view.setAlpha(z9 ? this.C : this.D);
    }

    private void y0() {
        com.google.android.exoplayer2.j jVar = this.P;
        if (jVar instanceof com.google.android.exoplayer2.k) {
            this.f26232x2 = ((com.google.android.exoplayer2.k) jVar).n();
        }
        int i4 = (int) (this.f26232x2 / 1000);
        TextView textView = this.f26212h;
        if (textView != null) {
            textView.setText(String.valueOf(i4));
        }
        View view = this.f26208f;
        if (view != null) {
            view.setContentDescription(this.E2.getQuantityString(q.j.f26725a, i4, Integer.valueOf(i4)));
        }
    }

    private void z0(@Nullable ImageView imageView, boolean z9) {
        if (imageView == null) {
            return;
        }
        if (z9) {
            imageView.setImageDrawable(this.K);
            imageView.setContentDescription(this.M);
            return;
        }
        imageView.setImageDrawable(this.L);
        imageView.setContentDescription(this.N);
    }

    public void U(m mVar) {
        com.google.android.exoplayer2.util.a.g(mVar);
        this.f26202b.add(mVar);
    }

    public boolean W(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        v1 v1Var = this.O;
        if (v1Var == null || !j0(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode == 90) {
                if (v1Var.c() != 4) {
                    this.P.g(v1Var);
                    return true;
                }
                return true;
            } else if (keyCode == 89) {
                this.P.b(v1Var);
                return true;
            } else if (keyEvent.getRepeatCount() == 0) {
                if (keyCode == 79 || keyCode == 85) {
                    Z(v1Var);
                    return true;
                } else if (keyCode == 87) {
                    this.P.k(v1Var);
                    return true;
                } else if (keyCode == 88) {
                    this.P.j(v1Var);
                    return true;
                } else if (keyCode == 126) {
                    Y(v1Var);
                    return true;
                } else if (keyCode != 127) {
                    return true;
                } else {
                    X(v1Var);
                    return true;
                }
            } else {
                return true;
            }
        }
        return true;
    }

    public void d0() {
        this.f26235y2.C();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return W(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public void e0() {
        this.f26235y2.F();
    }

    @Nullable
    public v1 getPlayer() {
        return this.O;
    }

    public int getRepeatToggleModes() {
        return this.f26231x1;
    }

    public boolean getShowShuffleButton() {
        return this.f26235y2.A(this.f26215k);
    }

    public boolean getShowSubtitleButton() {
        return this.f26235y2.A(this.P2);
    }

    public int getShowTimeoutMs() {
        return this.f26210g1;
    }

    public boolean getShowVrButton() {
        return this.f26235y2.A(this.f26216l);
    }

    public boolean h0() {
        return this.f26235y2.I();
    }

    public boolean i0() {
        return this.f26235y2.J();
    }

    public boolean k0() {
        return getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l0() {
        Iterator<m> it = this.f26202b.iterator();
        while (it.hasNext()) {
            it.next().d(getVisibility());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f26235y2.P();
        this.U = true;
        if (i0()) {
            this.f26235y2.X();
        }
        w0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f26235y2.Q();
        this.U = false;
        removeCallbacks(this.f26226t);
        this.f26235y2.W();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        this.f26235y2.R(z9, i4, i10, i11, i12);
    }

    public void p0(m mVar) {
        this.f26202b.remove(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q0() {
        View view = this.f26207e;
        if (view != null) {
            view.requestFocus();
        }
    }

    public void setAnimationEnabled(boolean z9) {
        this.f26235y2.Y(z9);
    }

    public void setControlDispatcher(com.google.android.exoplayer2.j jVar) {
        if (this.P != jVar) {
            this.P = jVar;
            B0();
        }
    }

    public void setOnFullScreenModeChangedListener(@Nullable d dVar) {
        this.S = dVar;
        A0(this.Q2, dVar != null);
        A0(this.R2, dVar != null);
    }

    @Deprecated
    public void setPlaybackPreparer(@Nullable u1 u1Var) {
        this.R = u1Var;
    }

    public void setPlayer(@Nullable v1 v1Var) {
        boolean z9 = true;
        com.google.android.exoplayer2.util.a.i(Looper.myLooper() == Looper.getMainLooper());
        if (v1Var != null && v1Var.B0() != Looper.getMainLooper()) {
            z9 = false;
        }
        com.google.android.exoplayer2.util.a.a(z9);
        v1 v1Var2 = this.O;
        if (v1Var2 == v1Var) {
            return;
        }
        if (v1Var2 != null) {
            v1Var2.g0(this.f26201a);
        }
        this.O = v1Var;
        if (v1Var != null) {
            v1Var.c1(this.f26201a);
        }
        if (v1Var instanceof com.google.android.exoplayer2.q) {
            com.google.android.exoplayer2.trackselection.o P = ((com.google.android.exoplayer2.q) v1Var).P();
            if (P instanceof DefaultTrackSelector) {
                this.L2 = (DefaultTrackSelector) P;
            }
        } else {
            this.L2 = null;
        }
        w0();
    }

    public void setProgressUpdateListener(@Nullable f fVar) {
        this.Q = fVar;
    }

    public void setRepeatToggleModes(int i4) {
        this.f26231x1 = i4;
        v1 v1Var = this.O;
        if (v1Var != null) {
            int k10 = v1Var.k();
            if (i4 == 0 && k10 != 0) {
                this.P.e(this.O, 0);
            } else if (i4 == 1 && k10 == 2) {
                this.P.e(this.O, 1);
            } else if (i4 == 2 && k10 == 1) {
                this.P.e(this.O, 2);
            }
        }
        this.f26235y2.Z(this.f26214j, i4 != 0);
        F0();
    }

    public void setShowFastForwardButton(boolean z9) {
        this.f26235y2.Z(this.f26208f, z9);
        B0();
    }

    public void setShowMultiWindowTimeBar(boolean z9) {
        this.V = z9;
        J0();
    }

    public void setShowNextButton(boolean z9) {
        this.f26235y2.Z(this.f26206d, z9);
        B0();
    }

    public void setShowPreviousButton(boolean z9) {
        this.f26235y2.Z(this.f26205c, z9);
        B0();
    }

    public void setShowRewindButton(boolean z9) {
        this.f26235y2.Z(this.f26209g, z9);
        B0();
    }

    public void setShowShuffleButton(boolean z9) {
        this.f26235y2.Z(this.f26215k, z9);
        I0();
    }

    public void setShowSubtitleButton(boolean z9) {
        this.f26235y2.Z(this.P2, z9);
    }

    public void setShowTimeoutMs(int i4) {
        this.f26210g1 = i4;
        if (i0()) {
            this.f26235y2.X();
        }
    }

    public void setShowVrButton(boolean z9) {
        this.f26235y2.Z(this.f26216l, z9);
    }

    public void setTimeBarMinUpdateInterval(int i4) {
        this.f26221p1 = com.google.android.exoplayer2.util.z0.t(i4, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f26216l;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            x0(onClickListener != null, this.f26216l);
        }
    }

    public void t0(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.V1 = new long[0];
            this.f26204b2 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) com.google.android.exoplayer2.util.a.g(zArr);
            com.google.android.exoplayer2.util.a.a(jArr.length == zArr2.length);
            this.V1 = jArr;
            this.f26204b2 = zArr2;
        }
        J0();
    }

    public void v0() {
        this.f26235y2.c0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w0() {
        C0();
        B0();
        F0();
        I0();
        K0();
        D0();
        J0();
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, attributeSet);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i4, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i4);
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        c cVar;
        boolean z17;
        boolean z18;
        int i10 = q.i.f26705g;
        this.f26222p2 = 5000L;
        this.f26232x2 = 15000L;
        this.f26210g1 = 5000;
        this.f26231x1 = 0;
        this.f26221p1 = 200;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, q.m.A1, 0, 0);
            try {
                this.f26222p2 = obtainStyledAttributes.getInt(q.m.M1, (int) this.f26222p2);
                this.f26232x2 = obtainStyledAttributes.getInt(q.m.I1, (int) this.f26232x2);
                i10 = obtainStyledAttributes.getResourceId(q.m.H1, i10);
                this.f26210g1 = obtainStyledAttributes.getInt(q.m.Y1, this.f26210g1);
                this.f26231x1 = c0(obtainStyledAttributes, this.f26231x1);
                boolean z19 = obtainStyledAttributes.getBoolean(q.m.V1, true);
                boolean z20 = obtainStyledAttributes.getBoolean(q.m.S1, true);
                boolean z21 = obtainStyledAttributes.getBoolean(q.m.U1, true);
                boolean z22 = obtainStyledAttributes.getBoolean(q.m.T1, true);
                boolean z23 = obtainStyledAttributes.getBoolean(q.m.W1, false);
                boolean z24 = obtainStyledAttributes.getBoolean(q.m.X1, false);
                boolean z25 = obtainStyledAttributes.getBoolean(q.m.Z1, false);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(q.m.f26782a2, this.f26221p1));
                boolean z26 = obtainStyledAttributes.getBoolean(q.m.D1, true);
                obtainStyledAttributes.recycle();
                z15 = z23;
                z16 = z24;
                z11 = z19;
                z12 = z20;
                z13 = z21;
                z9 = z26;
                z14 = z22;
                z10 = z25;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z9 = true;
            z10 = false;
            z11 = true;
            z12 = true;
            z13 = true;
            z14 = true;
            z15 = false;
            z16 = false;
        }
        LayoutInflater.from(context).inflate(i10, this);
        setDescendantFocusability(262144);
        c cVar2 = new c();
        this.f26201a = cVar2;
        this.f26202b = new CopyOnWriteArrayList<>();
        this.f26224r = new s2.b();
        this.f26225s = new s2.d();
        StringBuilder sb = new StringBuilder();
        this.f26220p = sb;
        this.f26223q = new Formatter(sb, Locale.getDefault());
        this.f26234y1 = new long[0];
        this.T1 = new boolean[0];
        this.V1 = new long[0];
        this.f26204b2 = new boolean[0];
        boolean z27 = z11;
        this.P = new com.google.android.exoplayer2.k(this.f26232x2, this.f26222p2);
        this.f26226t = new Runnable() { // from class: com.google.android.exoplayer2.ui.w
            @Override // java.lang.Runnable
            public final void run() {
                StyledPlayerControlView.this.E0();
            }
        };
        this.f26217m = (TextView) findViewById(q.g.f26642i0);
        this.f26218n = (TextView) findViewById(q.g.B0);
        ImageView imageView = (ImageView) findViewById(q.g.N0);
        this.P2 = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(cVar2);
        }
        ImageView imageView2 = (ImageView) findViewById(q.g.f26660o0);
        this.Q2 = imageView2;
        g0(imageView2, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.m0(view);
            }
        });
        ImageView imageView3 = (ImageView) findViewById(q.g.f26672s0);
        this.R2 = imageView3;
        g0(imageView3, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.m0(view);
            }
        });
        View findViewById = findViewById(q.g.I0);
        this.S2 = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(cVar2);
        }
        View findViewById2 = findViewById(q.g.A0);
        this.T2 = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(cVar2);
        }
        View findViewById3 = findViewById(q.g.Y);
        this.U2 = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(cVar2);
        }
        int i11 = q.g.D0;
        u0 u0Var = (u0) findViewById(i11);
        View findViewById4 = findViewById(q.g.E0);
        if (u0Var != null) {
            this.f26219o = u0Var;
            cVar = cVar2;
            z17 = z9;
            z18 = z10;
        } else if (findViewById4 != null) {
            cVar = cVar2;
            z17 = z9;
            z18 = z10;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, q.l.C);
            defaultTimeBar.setId(i11);
            defaultTimeBar.setLayoutParams(findViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById4.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById4);
            viewGroup.removeView(findViewById4);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f26219o = defaultTimeBar;
        } else {
            cVar = cVar2;
            z17 = z9;
            z18 = z10;
            this.f26219o = null;
        }
        u0 u0Var2 = this.f26219o;
        c cVar3 = cVar;
        if (u0Var2 != null) {
            u0Var2.b(cVar3);
        }
        View findViewById5 = findViewById(q.g.f26693z0);
        this.f26207e = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(cVar3);
        }
        View findViewById6 = findViewById(q.g.C0);
        this.f26205c = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(cVar3);
        }
        View findViewById7 = findViewById(q.g.f26675t0);
        this.f26206d = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(cVar3);
        }
        Typeface font = ResourcesCompat.getFont(context, q.f.f26616a);
        View findViewById8 = findViewById(q.g.G0);
        TextView textView = findViewById8 == null ? (TextView) findViewById(q.g.H0) : null;
        this.f26213i = textView;
        if (textView != null) {
            textView.setTypeface(font);
        }
        findViewById8 = findViewById8 == null ? textView : findViewById8;
        this.f26209g = findViewById8;
        if (findViewById8 != null) {
            findViewById8.setOnClickListener(cVar3);
        }
        View findViewById9 = findViewById(q.g.f26654m0);
        TextView textView2 = findViewById9 == null ? (TextView) findViewById(q.g.f26657n0) : null;
        this.f26212h = textView2;
        if (textView2 != null) {
            textView2.setTypeface(font);
        }
        findViewById9 = findViewById9 == null ? textView2 : findViewById9;
        this.f26208f = findViewById9;
        if (findViewById9 != null) {
            findViewById9.setOnClickListener(cVar3);
        }
        ImageView imageView4 = (ImageView) findViewById(q.g.F0);
        this.f26214j = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(cVar3);
        }
        ImageView imageView5 = (ImageView) findViewById(q.g.K0);
        this.f26215k = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(cVar3);
        }
        Resources resources = context.getResources();
        this.E2 = resources;
        this.C = resources.getInteger(q.h.f26697c) / 100.0f;
        this.D = this.E2.getInteger(q.h.f26696b) / 100.0f;
        View findViewById10 = findViewById(q.g.S0);
        this.f26216l = findViewById10;
        if (findViewById10 != null) {
            x0(false, findViewById10);
        }
        p0 p0Var = new p0(this);
        this.f26235y2 = p0Var;
        p0Var.Y(z17);
        this.G2 = new h(new String[]{this.E2.getString(q.k.f26739m), this.E2.getString(q.k.R)}, new Drawable[]{this.E2.getDrawable(q.e.f26611x0), this.E2.getDrawable(q.e.f26575f0)});
        this.K2 = this.E2.getDimensionPixelSize(q.d.f26561x);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(q.i.f26707i, (ViewGroup) null);
        this.F2 = recyclerView;
        recyclerView.setAdapter(this.G2);
        this.F2.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) this.F2, -2, -2, true);
        this.I2 = popupWindow;
        if (com.google.android.exoplayer2.util.z0.f27743a < 23) {
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        }
        this.I2.setOnDismissListener(cVar3);
        this.J2 = true;
        this.O2 = new com.google.android.exoplayer2.ui.h(getResources());
        this.G = this.E2.getDrawable(q.e.f26615z0);
        this.H = this.E2.getDrawable(q.e.f26613y0);
        this.I = this.E2.getString(q.k.f26728b);
        this.J = this.E2.getString(q.k.f26727a);
        this.M2 = new j();
        this.N2 = new b();
        this.H2 = new e(this.E2.getStringArray(q.a.f26471a), this.E2.getIntArray(q.a.f26472b));
        this.K = this.E2.getDrawable(q.e.f26583j0);
        this.L = this.E2.getDrawable(q.e.f26581i0);
        this.f26227u = this.E2.getDrawable(q.e.f26599r0);
        this.f26228v = this.E2.getDrawable(q.e.f26601s0);
        this.f26229w = this.E2.getDrawable(q.e.f26597q0);
        this.A = this.E2.getDrawable(q.e.f26609w0);
        this.B = this.E2.getDrawable(q.e.f26607v0);
        this.M = this.E2.getString(q.k.f26732f);
        this.N = this.E2.getString(q.k.f26731e);
        this.f26230x = this.E2.getString(q.k.f26743q);
        this.f26233y = this.E2.getString(q.k.f26744r);
        this.f26236z = this.E2.getString(q.k.f26742p);
        this.E = this.E2.getString(q.k.f26750x);
        this.F = this.E2.getString(q.k.f26749w);
        this.f26235y2.Z((ViewGroup) findViewById(q.g.f26618a0), true);
        this.f26235y2.Z(this.f26208f, z12);
        this.f26235y2.Z(this.f26209g, z27);
        this.f26235y2.Z(this.f26205c, z13);
        this.f26235y2.Z(this.f26206d, z14);
        this.f26235y2.Z(this.f26215k, z15);
        this.f26235y2.Z(this.P2, z16);
        this.f26235y2.Z(this.f26216l, z18);
        this.f26235y2.Z(this.f26214j, this.f26231x1 != 0);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui.v
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                StyledPlayerControlView.this.n0(view, i12, i13, i14, i15, i16, i17, i18, i19);
            }
        });
    }
}
